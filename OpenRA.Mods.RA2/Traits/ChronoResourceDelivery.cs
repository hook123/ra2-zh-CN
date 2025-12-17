#region Copyright & License Information
/*
 * Copyright (c) The OpenRA Developers and Contributors
 * This file is part of OpenRA, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using System.Linq;
using OpenRA.Mods.Common.Activities;
using OpenRA.Mods.Common.Traits;
using OpenRA.Mods.RA2.Activities;
using OpenRA.Traits;

namespace OpenRA.Mods.RA2.Traits
{
	/// <summary>
	/// 超时空资源交付特性的配置信息类。
	/// 定义了超时空采矿车在返回精炼厂时进行传送的各种参数。
	/// </summary>
	[Desc("当采矿车返回精炼厂交付资源时，该特性使其能够进行超时空传送（如果可能）。")]
	public class ChronoResourceDeliveryInfo : TraitInfo, Requires<HarvesterInfo>
	{
		[Desc("检查是否可以传送至精炼厂的时间间隔（以游戏刻为单位）。")]
		public readonly int CheckTeleportDelay = 10;

		[Desc("用于超时空传送效果的图像。默认为单位自身的类型名称。")]
		public readonly string Image = null;

		[Desc("在采矿车跳跃出发位置播放的特效序列。")]
		[SequenceReference("Image", allowNullImage: true)]
		public readonly string WarpInSequence = null;

		[Desc("在采矿车跳跃到达位置播放的特效序列。")]
		[SequenceReference("Image", allowNullImage: true)]
		public readonly string WarpOutSequence = null;

		[Desc("渲染传送进出精灵的调色板。")]
		[PaletteReference]
		public readonly string Palette = "effect";

		[Desc("在采矿车跳跃出发位置播放的声音。")]
		public readonly string WarpInSound = null;

		[Desc("在采矿车跳跃到达位置播放的声音。")]
		public readonly string WarpOutSound = null;

		/// <summary>
		/// 创建ChronoResourceDelivery实例。
		/// </summary>
		/// <param name="init">演员初始化器</param>
		/// <returns>ChronoResourceDelivery实例</returns>
		public override object Create(ActorInitializer init) { return new ChronoResourceDelivery(this); }
	}

	/// <summary>
	/// 超时空资源交付特性类。
	/// 实现了INotifyHarvestAction和ITick接口，使采矿车在返回精炼厂时能够进行超时空传送。
	/// </summary>
	public class ChronoResourceDelivery : INotifyCreated, INotifyHarvestAction, INotifyDockClientMoving, ITick
	{
		/// <summary>
		/// 特性配置信息。
		/// </summary>
		readonly ChronoResourceDeliveryInfo info;

		/// <summary>
		/// 传送目标位置。
		/// </summary>
		CPos? destination;

		/// <summary>
		/// 目标精炼厂演员。
		/// </summary>
		Actor refinery;

		/// <summary>
		/// 距离下次检查传送条件的游戏刻数。
		/// </summary>
		int ticksTillCheck;

		/// <summary>
		/// 所有实现了ICallForTransport接口的运输工具列表
		/// </summary>
		ICallForTransport[] transports;

		/// <summary>
		/// 采矿车组件
		/// </summary>
		Harvester harvester;

		/// <summary>
		/// 移动组件
		/// </summary>
		Mobile mobile;

		/// <summary>
		/// 构造函数。
		/// </summary>
		/// <param name="info">特性配置信息</param>
		public ChronoResourceDelivery(ChronoResourceDeliveryInfo info)
		{
			this.info = info;
			this.ticksTillCheck = info.CheckTeleportDelay;
		}

		public void Created(Actor self)
		{
			transports = self.TraitsImplementing<ICallForTransport>().ToArray();
			harvester = self.Trait<Harvester>();
			mobile = self.TraitOrDefault<Mobile>();
		}

		/// <summary>
		/// ITick接口实现，每游戏刻调用一次。
		/// 定期检查是否需要执行传送。
		/// </summary>
		/// <param name="self">当前演员</param>
		void ITick.Tick(Actor self)
		{
			if (ticksTillCheck > 0)
			{
				ticksTillCheck--;
				return;
			}

			ticksTillCheck = info.CheckTeleportDelay;

			// 只有当采矿车已经采满资源时才考虑传送
			if (!harvester.IsFull)
				return;

			// 如果还没有找到目标精炼厂，寻找最近的精炼厂
			if (refinery == null || !refinery.IsInWorld)
			{
				FindNearestRefinery(self);
				return;
			}

			// 如果已经有传送目标位置，不需要再次检查
			if (destination.HasValue)
				return;

			// 获取精炼厂的卸矿点
			var host = refinery.TraitOrDefault<IDockHost>();
			if (host == null)
				return;

			// 设置传送目标位置为卸矿点
			destination = self.World.Map.CellContaining(host.DockPosition);
		}

		/// <summary>
		/// 寻找最近的精炼厂
		/// </summary>
		/// <param name="self">当前演员</param>
		void FindNearestRefinery(Actor self)
		{
			// 查找所有属于同一所有者的、带有IDockHost和IAcceptResources特性的建筑
			var refineries = self.World.Actors.Where(a => 
				a.Owner == self.Owner && 
				a.IsInWorld && 
				a.TraitOrDefault<IDockHost>() != null && 
				a.TraitOrDefault<IAcceptResources>() != null);

			// 找到最近的精炼厂
			refinery = refineries.OrderBy(r => (r.Location - self.Location).LengthSquared).FirstOrDefault();
		}

		/// <summary>
		/// INotifyHarvestAction接口实现，当采矿车前往资源点时调用。
		/// 重置传送相关状态。
		/// </summary>
		/// <param name="self">当前演员</param>
		/// <param name="targetCell">目标资源点位置</param>
		void INotifyHarvestAction.MovingToResources(Actor self, CPos targetCell)
		{
			// 重置传送目标位置和精炼厂
			destination = null;
			refinery = null;

			foreach (var t in transports)
				t.RequestTransport(self, targetCell);
		}

		public void MovingToDock(Actor self, Actor hostActor, IDockHost host)
		{
			// 如果正在前往精炼厂，记录目标精炼厂
			refinery = hostActor;
			destination = self.World.Map.CellContaining(host.DockPosition);

			foreach (var t in transports)
				t.RequestTransport(self, destination.Value);
		}

		/// <summary>
		/// INotifyHarvestAction接口实现，当移动被取消时调用。
		/// 重置传送相关状态。
		/// </summary>
		/// <param name="self">当前演员</param>
		public void MovementCancelled(Actor self)
		{
			// 重置传送目标位置和精炼厂
			destination = null;
			refinery = null;

			foreach (var t in transports)
				t.MovementCancelled(self);
		}

		/// <summary>
		/// INotifyHarvestAction接口实现，当采矿完成时调用。
		/// 执行超时空传送返回精炼厂。
		/// </summary>
		/// <param name="self">当前演员</param>
		/// <param name="resourceType">资源类型</param>
		public void Harvested(Actor self, string resourceType)
		{
			// 只有当采矿车已经采满资源时才执行传送
			if (!harvester.IsFull)
				return;

			// 如果还没有找到目标精炼厂，寻找最近的精炼厂
			if (refinery == null || !refinery.IsInWorld)
			{
				FindNearestRefinery(self);
				if (refinery == null)
					return; // 没有找到精炼厂，无法传送
			}

			// 如果还没有传送目标位置，获取精炼厂的卸矿点
			if (!destination.HasValue)
			{
				var host = refinery.TraitOrDefault<IDockHost>();
				if (host == null)
					return;

				destination = self.World.Map.CellContaining(host.DockPosition);
			}

			// 执行超时空传送
			self.QueueActivity(new ChronoResourceTeleport(destination.Value, info));
			self.QueueActivity(new FindAndDeliverResources(self, refinery.Location));

			// 重置传送目标位置，以便下次采矿后重新计算
			destination = null;
		}
	}
}