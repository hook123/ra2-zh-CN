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

using OpenRA.Activities;
using OpenRA.Mods.Common.Effects;
using OpenRA.Mods.Common.Traits;
using OpenRA.Mods.RA2.Traits;

namespace OpenRA.Mods.RA2.Activities
{
	/// <summary>
	/// 超时空资源传送活动类。
	/// 实现采矿车的超时空传送效果和位置移动。
	/// </summary>
	public class ChronoResourceTeleport : Activity
	{
		/// <summary>
		/// 传送目标位置。
		/// </summary>
		readonly CPos destination;

		/// <summary>
		/// 超时空传送配置信息。
		/// </summary>
		readonly ChronoResourceDeliveryInfo info;

		/// <summary>
		/// 构造函数。
		/// </summary>
		/// <param name="destination">传送目标位置</param>
		/// <param name="info">超时空传送配置信息</param>
		public ChronoResourceTeleport(CPos destination, ChronoResourceDeliveryInfo info)
		{
			this.destination = destination;
			this.info = info;
		}

		/// <summary>
		/// 活动执行方法，每游戏刻调用一次。
		/// 执行超时空传送效果和位置移动。
		/// </summary>
		/// <param name="self">当前演员</param>
		/// <returns>是否完成活动</returns>
		public override bool Tick(Actor self)
		{
			// 确定使用的图像，如果没有指定则使用演员自身的类型名称
			var image = info.Image ?? self.Info.Name;

			// 记录传送前的位置
			var sourcepos = self.CenterPosition;

			// 在传送出发位置播放特效
			if (info.WarpInSequence != null)
				self.World.AddFrameEndTask(w => w.Add(new SpriteEffect(sourcepos, w, image, info.WarpInSequence, info.Palette)));

			// 在传送出发位置播放声音
			if (info.WarpInSound != null)
				Game.Sound.Play(SoundType.World, info.WarpInSound, self.CenterPosition);

			// 执行传送，设置演员位置
			self.Trait<IPositionable>().SetPosition(self, destination);
			self.Generation++;

			// 记录传送后的位置
			var destinationpos = self.CenterPosition;

			// 在传送到达位置播放特效
			if (info.WarpOutSequence != null)
				self.World.AddFrameEndTask(w => w.Add(new SpriteEffect(destinationpos, w, image, info.WarpOutSequence, info.Palette)));

			// 在传送到达位置播放声音
			if (info.WarpOutSound != null)
				Game.Sound.Play(SoundType.World, info.WarpOutSound, self.CenterPosition);

			// 活动完成
			return true;
		}
	}
}
