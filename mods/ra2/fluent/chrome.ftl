## gamesave-loading.yaml
label-gamesave-loading-screen-title = 正在加载存档
label-gamesave-loading-screen-desc = 按Esc键取消加载并返回主菜单

## ingame-debug.yaml
checkbox-debug-panel-show-depth-preview = 显示深度数据

## ingame-observer.yaml
button-observer-widgets-options = 选项（Esc键）
button-replay-player-pause-tooltip = 暂停
button-replay-player-play-tooltip = 播放

button-replay-player-slow =
    .tooltip = 慢速
    .label = 50%

button-replay-player-regular =
    .tooltip = 常规速度
    .label = 100%

button-replay-player-fast =
    .tooltip = 快速
    .label = 200%

button-replay-player-maximum =
    .tooltip = 最大速度
    .label = 最大

label-basic-stats-player-header = 玩家
label-basic-stats-cash-header = 资金
label-basic-stats-power-header = 电力
label-basic-stats-kills-header = 击杀
label-basic-stats-deaths-header = 死亡
label-basic-stats-assets-destroyed-header = 摧毁
label-basic-stats-assets-lost-header = 损失
label-basic-stats-experience-header = 分数
label-basic-stats-actions-min-header = APM
label-economy-stats-player-header = 玩家
label-economy-stats-cash-header = 资金
label-economy-stats-income-header = 收入
label-economy-stats-assets-header = 资产
label-economy-stats-earned-header = 获得
label-economy-stats-spent-header = 花费
label-economy-stats-harvesters-header = 采矿车
label-economy-stats-derricks-header = 油井
label-production-stats-player-header = 玩家
label-production-stats-header = 生产
label-support-powers-player-header = 玩家
label-support-powers-header = 支援技能
label-army-player-header = 玩家
label-army-header = 军队
label-combat-stats-player-header = 玩家
label-combat-stats-assets-destroyed-header = 摧毁
label-combat-stats-assets-lost-header = 损失
label-combat-stats-units-killed-header = 单位击杀
label-combat-stats-units-dead-header = 单位损失
label-combat-stats-buildings-killed-header = 建筑击杀
label-combat-stats-buildings-dead-header = 建筑损失
label-combat-stats-army-value-header = 军队价值
label-combat-stats-vision-header = 视野

## ingame-observer.yaml, ingame-player.yaml

label-mute-indicator = 音频已静音
button-top-buttons-options-tooltip = 选项

## ingame-player.yaml
supportpowers-support-powers-palette =
    .ready = 就绪
    .hold = 待命

button-command-bar-attack-move =
    .tooltip = 攻击移动
    .tooltipdesc =
        所选单位将移动到指定位置
        并在途中攻击遇到的任何敌人。

        按住<(Ctrl)>键同时指定目标可下达突击移动命令
        该命令将攻击途中遇到的任何单位或建筑。

        左键单击图标，然后右键单击目标位置。

button-command-bar-force-move =
    .tooltip = 强制移动
    .tooltipdesc =
        所选单位将移动到指定位置
         - 目标的默认活动被抑制
         - 车辆将尝试碾压目标位置的敌人
         - 直升机将在目标位置降落
         - 时空坦克将向目标位置传送

        左键单击图标，然后右键单击目标。
        按住<(Alt)>键可在指挥单位时临时激活此命令。

button-command-bar-force-attack =
    .tooltip = 强制攻击
    .tooltipdesc =
        所选单位将攻击目标单位或位置
         - 目标的默认活动被抑制
         - 允许攻击己方或盟友部队
         - 远程炮兵单位将始终攻击
           位置，忽略单位和建筑

        左键单击图标，然后右键单击目标。
        按住<(Ctrl)>键可在指挥单位时临时激活此命令。

button-command-bar-guard =
    .tooltip = 护卫
    .tooltipdesc =
        所选单位将跟随目标单位。

        左键单击图标，然后右键单击目标单位。

button-command-bar-deploy =
    .tooltip = 部署
    .tooltipdesc =
        所选单位将执行其默认部署活动
         - MCV将展开为建造厂
         - 建造厂将重新打包为MCV
         - 运输工具将卸载其乘客
         - 自爆卡车和MAD坦克将自毁
         - 布雷车将部署地雷
         - 飞机将返回基地
        
        立即对所选单位生效。

button-command-bar-scatter =
    .tooltip = 分散
    .tooltipdesc =
        所选单位将停止当前活动
        并移动到附近位置。

        立即对所选单位生效。

button-command-bar-stop = 
    .tooltip = 停止
    .tooltipdesc =
        所选单位将停止当前活动。
        所选建筑将重置集结点。

        立即对所选目标生效。

button-command-bar-queue-orders = 
    .tooltip = 路径点模式
    .tooltipdesc =
        使用路径点模式向所选单位下达
        多个链接命令。单位将在收到命令后
        立即执行。

        左键单击图标，然后在游戏世界中下达命令。
        按住<(Shift)>键可在指挥单位时临时激活此模式。

button-stance-bar-attackanything =
    .tooltip = 攻击一切姿态
    .tooltipdesc =
        将所选单位设置为攻击一切姿态：
         - 单位将在发现敌方单位和建筑时攻击
         - 单位将在战场上追击攻击者

button-stance-bar-defend =
    .tooltip = 防御姿态
    .tooltipdesc =
        将所选单位设置为防御姿态：
         - 单位将在发现敌方单位时攻击
         - 单位不会移动或追击敌人

button-stance-bar-returnfire =
    .tooltip = 还击姿态
    .tooltipdesc =
        将所选单位设置为还击姿态：
         - 单位将对攻击它们的敌人进行还击
         - 单位不会移动或追击敌人

button-stance-bar-holdfire =
    .tooltip = 停火姿态
    .tooltipdesc =
        将所选单位设置为停火姿态：
         - 单位不会向敌人开火
         - 单位不会移动或追击敌人

button-top-buttons-beacon-tooltip = 放置信标
button-top-buttons-sell-tooltip = 出售
button-top-buttons-power-tooltip = 断电
button-top-buttons-repair-tooltip = 维修

productionpalette-sidebar-production-palette =
    .ready = 就绪
    .hold = 待命

button-production-types-building-tooltip = 建筑
button-production-types-defense-tooltip = 防御
button-production-types-infantry-tooltip = 步兵
button-production-types-vehicle-tooltip = 车辆
button-production-types-aircraft-tooltip = 飞机
button-production-types-naval-tooltip = 海军
button-production-types-support-tooltip = 支援
button-production-types-scroll-up-tooltip = 向上滚动
button-production-types-scroll-down-tooltip = 向下滚动

## World
options-starting-units =
    .mcv-only = 仅MCV
    .light = 轻型支援
    .medium = 中型支援
    .heavy = 重型支援

## Player
options-tech-level =
    .infantry-only = 仅限步兵
    .low = 低级
    .medium = 中级
    .no-superweapons = 无超级武器
    .unrestricted = 无限制

button-top-buttons-debug-tooltip = 调试菜单
labelwithtooltip-player-widgets-cash = <0>
labelwithtooltip-player-widgets-power = <0>

## mainmenu-prerelease-notification.yaml
label-mainmenu-prerelease-notification-prompt-title = Red Alert 2 开发者预览版
label-mainmenu-prerelease-notification-prompt-text-a = 此预alpha版本的OpenRA红警2模组提供给
label-mainmenu-prerelease-notification-prompt-text-b = 社区以跟踪开发进度，并作为模组开发的范例。
label-mainmenu-prerelease-notification-prompt-text-c = 许多功能缺失或不完整，性能尚未
label-mainmenu-prerelease-notification-prompt-text-d = 优化了，直到未来的测试版之前不会进行平衡调整。
button-mainmenu-prerelease-notification-continue = 我理解

notification-copied-tiles = 已复制 { $tiles } 地块
notification-copied-actors = 已复制 { $actors } 单位
notification-copied-tiles-actors = 已复制 { $actors } 单位和 { $tiles } 地块

support-power-timer = { $player }的{ $support-power }：{ $time }

Snow = 雪地
Temperate =  温带
Urban = 城市
tileset-desert = 沙漠
tileset-snow = 雪地
tileset-temperat = 温带
tileset-interior = 室内