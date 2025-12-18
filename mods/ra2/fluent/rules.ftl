## player.yaml
options-tech-level =
    .infantry-only = 仅限步兵
    .low = 低级
    .medium = 中级
    .no-superweapons = 无超级武器
    .unrestricted = 无限制

checkbox-kill-bounties =
    .label = 击杀赏金
    .description = 玩家击杀敌方单位可获得现金奖励

checkbox-redeployable-mcvs =
    .label = 可重新部署的机动基地车
    .description = 允许建造场收起

checkbox-reusable-engineers =
    .label = 可重复使用的工程师
    .description = 工程师占领建筑后仍留在战场

notification-insufficient-funds = 资金不足。
notification-new-construction-options = 新的建造选项。
notification-cannot-deploy-here = 无法在此处部署。
notification-low-power = 电力不足。
notification-base-under-attack = 基地遭受攻击。
notification-ally-under-attack = 我方盟友遭受攻击。
notification-silos-needed = 需要矿石精炼厂。

## world.yaml
faction-random =
    .name = 随机
    .description = 随机势力
     游戏开始时将随机选择一个势力。

resource-minerals = { $world } 贵重矿物 { $editorworld }

## ai.yaml
actor-player-modularbot-testai-name = 测试AI

## aircraft.yaml
actor-shad =
    .name = 夜鹰
    .description =
        步兵运输直升机
        　　　　　　雷达侦测不到。
        对步兵：强
        对车辆、飞机：弱

actor-shadhusk-name = 夜鹰
actor-zep-name = 基洛夫飞艇
actor-zephusk-name = 基洛夫飞艇

actor-orca =
    .name = 鹞式战机
    .description =
        快速突击战机
        　　　　　　对建筑、车辆：强
        　　　　　　对步兵、飞机：弱

actor-orcahusk-name = 鹞式战机
actor-beag-name = 黑鹰
actor-beaghusk-name = 黑鹰
actor-pdplane-name = 运输机
actor-pdplanehusk-name = 运输机
actor-hornet-name = 蜂鸟
actor-hornethusk-name = 猎蚁蜂
actor-asw-name = 游隼

actor-aswhusk =
    .name = 游隼
    .norow--name = 游隼

## allied-infantry.yaml
actor-engineer =
    .description =
        可以俘获敌方建筑。
        无武装
    .name = 工兵

actor-dog =
    .description =
        反步兵单位。
        可以侦测隐形单位和间谍。
        对步兵强大
        对载具、飞机弱
    .name = 军犬

actor-e1 =
    .description =
        通用步兵。
        对步兵强大
        对载具、飞机弱
    .name = G.I.

actor-snipe =
    .name = 狙击手
    .description =
        特殊反步兵单位。
        对步兵强大
        对载具、飞机弱

actor-spy =
    .description =
        渗透敌方建筑获取情报或破坏。
        具体效果取决于渗透的建筑。
        无武装
        特殊能力：伪装
    .disguisetooltip-name = 间谍
    .disguisetooltip-generic-name = 士兵

actor-ghost =
    .description =
        精英突击步兵，配备冲锋枪和C4炸药。
          对步兵和建筑造成较大伤害
          对装甲单位和飞行单位造成较小伤害
        特殊能力：使用C4摧毁建筑物
    .name = 海军海豹突击队员

actor-ccomand =
    .description =
        精英突击步兵，配备冲锋枪和C4炸药。
          对步兵和建筑造成较大伤害
          对装甲单位和飞行单位造成较小伤害
        特殊能力：使用C4摧毁建筑物
    .name = 时间特工

actor-ptroop =
    .description =
        精神控制步兵。能够控制敌方单位。
          对步兵、装甲单位和建筑造成较大伤害
          对警犬、恐怖无人机和飞行单位造成较小伤害
        特殊能力：使用C4摧毁建筑物
    .name = Psi突击队员

actor-tany =
    .description =
        精英突击步兵，配备双持手枪和C4炸药。
          对步兵和建筑造成较大伤害
          对装甲单位和飞行单位造成较小伤害
        特殊能力：使用C4摧毁建筑物
        
        最多可以训练1名
    .name = 塔尼亚

actor-jumpjet =
    .description =
        空降兵。
          对步兵和飞行单位造成较大伤害
          对装甲单位造成较小伤害
    .name = 火箭手

actor-jumpjet-husk-name = 火箭手

actor-cleg =
    .name = 时间 legionnaire
    .description =
        高科技士兵。
         对步兵和装甲单位造成较大伤害
         对飞行单位造成较小伤害

## allied-naval.yaml
actor-lcrf =
    .description =
        多功能海军运输舰。
        可运送步兵和车辆。
        未武装
    .name = 通用登陆艇

actor-dest =
    .description =
        盟军主力战舰，装备大炮和旋翼直升机。
        能侦测潜艇和海洋生物。
        对海军单位强力
        对地面单位、飞机单位弱
    .name = 驱逐舰

actor-aegis =
    .description =
        防空型海军单位。
        对飞机单位强力
        对地面单位、舰船单位弱
    .name = 宙斯盾巡洋舰

actor-dlph =
    .description =
        训练海豚，装备声波束。
        对舰船单位强力
    .name = 海豚

actor-carrier =
    .description =
        航空母舰，装备机库和升降机。
        对坦克和建筑单位强力
        对步兵单位弱
    .name = 航空母舰

## allied-structures.yaml
actor-gacnst =
    .description = 建造基地结构。
    .name = 兵营

actor-gapowr =
    .description = 为其他结构提供电力。
    .name = 发电厂

actor-gapile =
    .description = 训练步兵。
    .name = 兵营

actor-garefn =
    .description = 将矿石处理成信用点。
    .name = 矿石提炼厂

actor-gaairc =
    .description =
        提供雷达
        支持4架飞机。
    .name = 空军指挥部总部

actor-amradr =
    .name = 美国空军指挥部总部
    .paratrooperspower-paratroopers-name = 空降部队
    .paratrooperspower-paratroopers-description =
        一架货运飞机可在地图上的任何位置投放八名GI
        （美军地面部队单位）

actor-gaweap =
    .description = 生产车辆
    .name = 战争工厂

actor-gayard =
    .name = 造船厂
    .description = 生产及修理船只、潜艇、运输舰及其他海军单位

actor-gadept =
    .description = 修理车辆并移除恐布无人机（以价格计算）
    .name = 维修中心

actor-gatech =
    .description = 部署高阶单位
    .name = 战斗实验室
actor-gawall =
    .description =
        轻型墙壁
        可以被车辆压毁
    .name = 盟军墙壁

actor-gapill =
    .description = 自动化的反步兵防御。
    .name = 炮兵箱

actor-nasam =
    .description = 自动化的防空防御。
    .name = 爱国者导弹系统

actor-gtgcan =
    .description = 全自动远程地面防御。
    .name = 大炮

actor-gaorep =
    .description = 所有类型的收入提高25%。
    .name = 矿石提纯器

actor-gaspysat =
    .description = 揭示整个战场。
    .name = 间谍卫星上行链路

actor-gagap =
    .name = 缺口生成器
    .description =
        用迷雾遮蔽敌人的视线。
        需要电源来运行。

actor-gaweat =
    .description = 用致命天气掌控全局！
    .name = 天气控制器
    .weathercontrolsupportpower-lightningstorm-name = 天气风暴
    .weathercontrolsupportpower-lightningstorm-description = 控制天气以摧毁敌军部队。

actor-gacsph =
    .description = 允许在一个3x3网格内传送单位。
    .name = 时空转移器
    .chronoshiftpower-chronoshift-name = 时空转移器
    .chronoshiftpower-chronoshift-description = 在地图上瞬移一批单位。

actor-atesla =
    .description =
        高级基地防御。
        需要电力运作。
        强大针对：步兵、车辆
           弱点针对：飞机
    .name = 棱镜塔

actor-power-name = 发电厂
actor-refinery-name = 矿石精炼厂
actor-barracks-name = 步兵生产线
actor-radar-name = 雷达
actor-repairpad-name = 维修站

## allied-vehicles.yaml
actor-amcv =
    .description = 部署为建设场地。
    .name = 移动建设车

actor-cmin =
    .description =
        采集矿石。
           无武装
        特殊能力：可以瞬移到自己的精炼厂
    .name = 时空矿工

actor-mtnk =
    .name = 灰熊战斗坦克
    .description =
        盟军主战坦克。
        强大针对：车辆、舰船
           弱点针对：步兵、飞机

actor-tnkd =
    .name = 坦克摧毁者
    .description =
        特种反装甲单位。
        对装甲单位、船只攻击强
        对步兵、飞机攻击弱

actor-fv =
    .name = 步兵战车
    .description =
        多用途装甲车。
        无乘客时：
        对步兵、飞机攻击强
        对装甲单位、船只攻击弱
        特殊能力：武器取决于搭载单位。

actor-sref =
    .description =
        发射致命光束。
        对步兵、装甲单位攻击强
        对飞机攻击弱
    .name = 棱镜坦克

actor-mgtk =
    .description =
        伪装成树木的坦克。
        对步兵、装甲单位攻击强
        对飞机攻击弱
    .name = 幻影坦克
    .miragetooltip-tree-name = 幻影坦克
    .miragetooltip-tree-generic-name = 树木

## animals.yaml
actor-cow-name = 牛
actor-all-name = 鳄鱼
actor-polarb-name = 北极熊
actor-josh-name = 猴子

## bridges.yaml
actor-cabhut-name = 桥梁修理棚
meta-lowbridgeramp-name = 木桥
actor-lobrdb-a-name = 混凝土桥
actor-lobrdb-a-d-name = 死桥
actor-lobrdb-b-name = 混凝土桥
actor-lobrdb-b-d-name = 死桥
actor-lobrdb-r-se-name = 桥坡
actor-lobrdb-r-nw-name = 桥坡
actor-lobrdb-r-ne-name = 桥坡
actor-lobrdb-r-sw-name = 桥坡
actor-lobrdg-a-d-name = 死桥
actor-lobrdg-b-d-name = 死桥
actor-lobrdg-r-se-name = 桥坡
actor-lobrdg-r-nw-name = 桥坡
actor-lobrdg-r-ne-name = 桥坡
actor-lobrdg-r-sw-name = 桥坡
meta-elevatedbridgeplaceholder-name = 混凝土桥
actor-bridgb1-name = 木桥
actor-bridgb2-name = 木桥

## civilian-naval.yaml
actor-tug-name = 拖轮
actor-cruise-name = 邮轮
actor-cdest-name = 海岸警卫船

## civilian-props.yaml
actor-camisc01-name = 桶们
actor-camisc02-name = 桶
actor-camisc03-name = 垃圾桶
actor-camisc04-name = 邮箱
actor-camisc05-name = 水管们
actor-camisc06-name = V3炮弹们
actor-camsc11-name = 轮胎们
actor-camsc12-name = 训练靶
actor-camsc13-name = 废弃坦克
actor-ammocrat-name = 炮弹箱们
actor-camsc01-name = 热狗摊位
actor-camsc02-name = 沙滩阳伞们
actor-camsc03-name = 沙滩阳伞
actor-camsc04-name = 沙滩毛巾们
actor-camsc05-name = 沙滩毛巾们
actor-camsc06-name = 野营篝火
actor-caeuro05-name = 雕像
actor-capark01-name = 公园长椅
actor-capark02-name = 秋千
actor-capark03-name = 旋转木马
actor-castrt01-name = 交通灯
actor-castrt02-name =  traffic灯
actor-castrt03-name = 交通灯
actor-castrt04-name = 交通灯
actor-castrt05-name = 巴士站
actor-camov01-name = 露天电影屏幕
actor-camov02-name = 露天电影小卖部
actor-pole01-name = 电线杆
actor-pole02-name = 电线杆
actor-hdstn01-name = AlringtonStone
actor-spkr01-name = 露天影院扬声器
actor-cakrmw-name = 克里姆林宫墙
actor-gagate-a-name = 守卫边境检查站

## civilian-structures.yaml
actor-cafncb-name = 黑色栅栏
actor-cafncw-name = 白色栅栏
actor-gasand-name = 沙袋
actor-cafncp-name = 监狱营栅栏
actor-cawt01-name = 水塔
actor-cats01-name = 双筒仓
actor-cabarn02-name = 谷仓
actor-cawash01-name = 白宫
actor-cawsh12-name = 华盛顿纪念碑
actor-cawash14-name = 杰斐逊纪念堂
actor-cawash15-name = 林肯纪念堂
actor-cawash16-name = 史密森尼城堡
actor-cawash17-name = 史密森尼国家自然历史博物馆
actor-cawash18-name = 白宫喷泉
actor-cawash19-name = 硫磺岛纪念碑
actor-canewy04-name = 自由女神像
actor-canewy05-name = 世界贸易中心
actor-canewy20-name = 仓库
actor-canewy21-name = 仓库
actor-caswst01-name = 西南大楼
actor-caarmy01-name = 陆军帐篷
actor-caarmy02-name = 陆军帐篷
actor-caarmy03-name = 陆军帐篷
actor-caarmy04-name = 陆军帐蓬
actor-cafarm01-name = 农场
actor-cafarm02-name = 农场粮仓
actor-cafarm06-name = 灯塔
actor-causfgl-name = 美国国旗
actor-carufgl-name = 俄罗斯国旗
actor-cairfgl-name = 伊拉克国旗
actor-capofgl-name = 波兰国旗
actor-caskfgl-name = 韩国国旗
actor-calbfgl-name = 利比亚国旗
actor-cafrfgl-name = 法国国旗
actor-cagefgl-name = 德国国旗
actor-cacufgl-name = 古巴国旗
actor-caukfgl-name = 英国国旗
actor-cacolo01-name = 空军学院礼拜堂
actor-caind01-name = 工厂
actor-calab-name = 爱因斯坦实验室
actor-cagas01-name = 加油站
actor-galite-name = 路灯
actor-city05-name = Battersea Power Station
actor-catech01-name = 通信中心
actor-catexs02-name = 阿拉莫
actor-capars01-name = 埃菲尔铁塔
actor-capars07-name = 电话亭
actor-capars10-name = 小餐馆
actor-capars11-name = 凯旋门
actor-capars12-name = 巴黎圣母院
actor-capars13-name = 小餐馆
actor-capars14-name = 小餐馆
actor-cafrma-name = 农舍
actor-cafrmb-name = 门房
actor-caprs03-name = 卢浮宫
actor-cagard01-name = 卫兵小屋
actor-carus01-name = 圣瓦西里大教堂
actor-carus02g-name = 克里姆林宫墙钟楼
actor-carus03-name = 救生员小屋
actor-camiam04-name = 亚利桑那纪念馆
actor-camiam08-name = 亚利桑那纪念公墓
actor-camex01-name = 玛雅金字塔
actor-camex02-name = 玛雅城堡
actor-camex03-name = 玛雅小神庙
actor-camex04-name = 玛雅大神庙
actor-camex05-name = 玛雅平台
actor-caeur1-name = 小屋
actor-caeur2-name = 小屋
actor-cachig04-name = 伙伴中心
actor-cachig05-name = Sears 塔
actor-cachig06-name = 水塔
actor-castl05a-name = 体育场
actor-castl05b-name = 体育场
actor-castl05c-name = 体育场
actor-castl05d-name = 体育场
actor-castl05e-name = 体育场
actor-castl05f-name = 体育场
actor-castl05g-name = 体育场
actor-castl05h-name = 体育场
actor-camsc07-name = 小屋
actor-camsc08-name = 小屋
actor-camsc09-name = 小屋
actor-camsc10-name = 麦当劳怪兽
actor-cabunk01-name = 混凝土工事
actor-cabunk02-name = 混凝土工事

## civilian-vehicles.yaml
actor-bus-name = 校车
actor-limo-name = 总统轿车
actor-pick-name = 货车
actor-car-name = 汽车
actor-wini-name = 休闲车辆
actor-propa-name = 宣传卡车
actor-cop-name = 警车
actor-euroc-name = 欧洲车
actor-cona-name = 挖掘机
actor-trucka-name = 卡车A
actor-truckb-name = 卡车B
actor-suvb-name = 黑色运动型多功能车
actor-suvw-name = 白色运动型多功能车

actor-stang =
    .name = 野马
    .generic-name = 跑车

actor-ptruck-name = 拾荒车
actor-taxi-name = 出租车

## civilians.yaml
actor-civa-name = 德克萨斯人
actor-civb-name = 德克萨斯人
actor-civc-name = 德克萨斯人
actor-civbbp-name = 棒球运动员
actor-civbfm-name = 海滩胖子男性
actor-civbf-name = 海滩胖子女性
actor-civbtm-name = 海滩瘦男性
actor-civsfm-name = 雪地胖子男性
actor-civsf-name = 雪地胖子男性
actor-civstm-name = 雪地瘦男性
actor-vladimir-name = 弗拉基米尔
actor-pentgen-name = 五角大楼将军
actor-ssrv-name = 特勤局人员
actor-pres-name = 总统

## defaults.yaml
meta-civbuilding-name = 平民建筑
meta-flag-name = 旗帜

meta-civilianinfantry = 
    .name = 平民
    .generic-name = 平民

meta-civvehicle-generic-name = 平民车辆
meta-husk-generic-name = 被摧毁的飞机
meta-ship-generic-name = 船只
meta-oredrill-name = 采矿钻
meta-tree-name = 树木
meta-streetsign-name = 路牌
meta-trafficlight-name = 交通灯
meta-streetlight-name = 路灯
meta-telephonepole-name = 电线杆
meta-rock-name = 岩石

meta-crate = 
    .name = 箱子
    .generic-name = 箱子

## misc.yaml
actor-mpspawn-name = (多人出生点)
actor-waypoint-name = (用于脚本行为的路径点)
actor-camera-name = (向所有者揭示区域)
actor-ingalite-name = (隐形路灯)
actor-neglamp-name = (隐形负路灯)
actor-inyelwlamp-name = (隐形黄色路灯)
actor-inpurplamp-name = (隐形紫蓝光柱)
actor-inoranlamp-name = (隐形橙色灯光柱)
actor-ingrnlmp-name = (隐形绿色灯光柱)
actor-inredlmp-name = （隐形红光探照灯）
actor-inblulmp-name = （隐形蓝光探照灯）

## soviet-infantry.yaml
actor-e2 =
    .description =
        廉价步枪步兵。
          对步兵强力
          对载具、空军单位较弱
    .name = 预备役

actor-flakt = 
    .description =
        防空/反步兵单位。
          对空军单位、步兵强力
          对载具单位较弱
    .name = 防空兵

actor-shk = 
    .description =
        特殊装甲单位，使用电能。
          对步兵、轻装甲强力
          对坦克、空军单位较弱
        特殊能力：特斯拉线圈充能
    .name = 特斯拉兵

actor-terror = 
    .description =
        携带C4炸药贴身引爆，对敌人进行神风特攻，迅速而高效地炸毁目标。
          对地面单位强力
          对空军单位较弱
    .name = 恐怖分子

actor-deso = 
    .description =
        携带辐射武器。
        可部署进行范围伤害。
          对步兵、轻装甲强力
          对坦克、空军单位较弱
    .name = Desolator

actor-ivan = 
    .description = 炸弹专家。可以在任何东西上，甚至是奶牛，放置炸弹。
    .name = 疯狂伊万

actor-civan = 
    .description = 炸弹专家。可以在任何东西上，甚至是奶牛，放置炸弹。可以在地图上的任何位置传送。
    .name = 时空伊万

actor-yuri = 
    .description =
        精神步兵。可以对敌方单位进行精神控制。
        可以部署以释放强大的精神波。
          对步兵、载具强劲
          对恐吓无人机、飞机、建筑弱点
        
    .name = 尤里

actor-yuripr = 
    .description =
        精神步兵。可以在很远的距离对敌方单位进行精神控制。
        可以部署以释放强大的精神波。
          对步兵、载具强劲
          对恐吓无人机、飞机、建筑弱点
        
        最多可以训练1名
    .name = 尤里Prime

## soviet-naval.yaml
actor-sapc = 
    .description =
        通用海军运输船。
        可以运输步兵和载具。
          无武装
    .name = 两栖运输船

actor-sub =
    .description =
        配备鱼雷的潜航反舰单位。
        可以探测其他潜艇和巨型章鱼。
          对舰船强劲
          对地面单位、飞机弱点
        特殊能力：潜航
    .name = 暴风突击潜艇

actor-hyd = 
    .description =
        反舰/反步兵海军单位.
        强力对 航空母舰, 步兵
        弱对 坦克, 海上单位
    .name = 海蝎

actor-sqd = 
    .description =
        海洋生物
        在近战中攻击敌人.
        强力对 船只
    .name = 巨型章鱼

## soviet-structures.yaml
actor-nacnst = 
    .description = 允许建造基地结构。
    .name = 造兵厂

actor-napowr = 
    .description = 为其他结构提供电力。
    .name = 特斯拉反应堆

actor-nahand = 
    .description = 生产步兵。
    .name = 兵营

actor-narefn = 
    .description = 将矿石加工成积分。
    .name = 矿物提炼厂

actor-naradr = 
    .description = 提供雷达。
    .name = 雷达塔

actor-naweap = 
    .description = 生产坦克和车辆。
    .name = 武器工厂

actor-nayard = 
    .name = 海军基地
    .description = 生产并修理船只、潜艇、运输艇和其他海军单位。

actor-nadept = 
    .description = 修理载具并移除恐吓无人机（需付费）。
    .name = 基地维修厂

actor-nanrct = 
    .description = 为其他建筑提供电力。
    .name = 核反应堆

actor-natech = 
    .description = 允许部署先进技术单位。
    .name = 战斗实验室

actor-naclon = 
    .description = 克隆大多数训练有素的步兵。
    .name = 克隆罐

actor-napsis = 
    .description = 侦测敌方单位和打击目标
    .name = 精神感应传感器

actor-nairon = 
    .description = 为装甲单位提供无敌属性，对肉质单位造成伤害。
    .name = 铁幕装置
    .grantexternalconditionpower-ironcurtain-name = 铁幕设备提供外部条件能力 - 铁幕
    .grantexternalconditionpower-ironcurtain-description = 使一组单位无敌20秒。

actor-namisl = 
    .description =
        提供原子弹。
        需要电力才能运行。
          特殊能力：原子弹
        最多可建造1座。
    .name = 核导弹发射井
    .nukepower-name = 核导弹
    .nukepower-description = 向目标位置发射毁灭性的原子弹。

actor-nawall = 
    .description =
        轻型墙壁。
        可以被载具碾压。
    .name = 苏联墙

actor-naflak = 
    .description = 自动防空防御。
    .name = 高射炮

actor-tesla = 
    .description =
        高级基地防御。
        需要电力才能运行。
          对步兵、载具攻击性强
          对飞行单位攻击性弱
    .name = 特斯拉线圈

actor-nalasr = 
    .description = 自动反步兵防御。
    .name = 防卫枪

## soviet-vehicles.yaml
actor-smcv = 
    .description = 部署成建造场。
    .name = 移动建造车辆

actor-harv = 
    .description =
        采集矿石。
          对步兵攻击性强
          对载具、飞行单位攻击性弱
    .name = 战争矿工

actor-dron = 
    .name = 恐怖无人机
    .description =
        对空强，地面部队弱
        对部队弱，对飞机强

actor-htk = 
    .name = 高射炮坦克
    .description =
        地面部队运输和防空/反步兵战车。
        对飞机强，对地面部队强
        对战车弱

actor-htnk = 
    .name = 犀牛重型坦克
    .description =
        苏联动战主力坦克。
        对战车强
        对地面部队、飞机弱

actor-apoc = 
    .name = 末日坦克
    .description =
        苏联动战改良坦克，双炮管和防空导弹发射器。
        对战车、飞机强
        对地面部队弱

actor-ttnk = 
    .name = 特斯拉坦克
    .description =
        俄罗斯特种坦克，装备双小型特斯拉线圈。
        对战车、地面部队强
        对飞机弱

actor-dtruck = 
    .description = 破障车，主动配备核弹炸药。
    .name = 破障车

## tech-structures.yaml
actor-caoild-name = 技术油井

actor-caairp =
    .name = 技术机场
    .paratrooperspower-allies-name = 盟军空降部队
    .paratrooperspower-allies-description = 一架运输机在地图上的任何位置空投六名GI，提取后他们将步行前往出发点。
    .paratrooperspower-soviets-name = 苏联空降兵
    .paratrooperspower-soviets-description = 一架运输机在地图上的任何位置空投九名征兵，提取后他们将步行前往出发点。

actor-cahosp-name = 平民医院
actor-cathosp-name = 科技医院
actor-caoutp-name = 科技前哨站

## world.yaml
meta-baseworld =
    .faction-random-name = 随机
    .faction-random-description =
        随机国家
        游戏开始时将随机选择一个国家。
    .faction-allies-name = 盟军
    .faction-allies-description =
        随机盟军国家
        游戏开始时将随机选择一个盟军国家。
    .faction-soviets-name = 苏联
    .faction-soviets-description =
        随机苏联国家
        游戏开始时将随机选择一个苏联国家。
    .faction-1-name = 美国
    .faction-1-description =
        美国
        特殊能力：空降部队
    .faction-2-name = 德国
    .faction-2-description =
        Germany
        特殊装甲车：坦克歼击车
    .faction-3-name = 英格兰
    .faction-3-description =
        英格兰
        特殊步兵：狙击手
    .faction-4-name = 法国
    .faction-4-description =
        法国
        特殊建筑：巨炮
    .faction-5-name = 韩国
    .faction-5-description =
        韩国
        特殊飞机：黑鹰
    .faction-6-name = 古巴
    .faction-6-description =
        古巴
        特殊步兵：恐怖分子
    .faction-7-name = 利比亚
    .faction-7-description =
        利比亚
        特殊装甲车：破障车
    .faction-8-name = 伊拉克
    .faction-8-description =
        伊拉克
        特殊步兵：毁灭者
    .faction-9-name = 俄罗斯
    .faction-9-description =
        俄罗斯
        特殊装甲车：特斯拉坦克
