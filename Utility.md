# OpenRA Utility 使用帮助文档

## 基础用法

运行 `OpenRA.Utility.exe [MOD]` 查看可用命令列表。

支持的模组包括：`ra2`, `ra2-content`, `all`, `cnc`, `cnc-content`, `d2k`, `d2k-content`, `ra`, `ra-content`, `ts`, `ts-content`

## 命令详解

### 颜色转换
- **`--argb2hex`**  
  将传统的 a,r,g,b 颜色值转换为十六进制颜色代码。

- **`--rgba2hex`**  
  将 r,g,b[,a] 三元组或四元组转换为十六进制颜色代码。

### 校验与检查
- **`--check-conditional-trait-interface-overrides`**  
  检查指定模组引用的所有程序集中，条件特性中定义的接口覆盖是否正确。

- **`--check-explicit-interfaces`**  
  检查指定模组引用的所有程序集中，是否存在显式接口实现违规情况。

- **`--check-missing-sprites`**  
  检查图块集和序列定义中是否存在缺失的精灵文件。

- **`--check-yaml [MAPFILE]`**  
  检查指定模组或地图是否存在特定的 yaml 错误。

### 数据清理
- **`--clear-invalid-mod-registrations (system|user|both)`**  
  移除游戏内模组切换器中无效的元数据条目。

### 调试与可视化
- **`--debug-chrome-regions IMAGE ZOOM`**  
  生成一个 HTML 页面，展示映射的 chrome 图像。

### 文档生成
- **`--docs [VERSION]`**  
  以 JSON 格式生成特性文档。

- **`--lua-docs`**  
  以 MarkDown 格式生成 Lua API 文档。

- **`--settings-docs [VERSION]`**  
  以 markdown 格式生成设置文档。

- **`--sprite-sequence-docs [VERSION]`**  
  以 JSON 格式生成精灵序列文档。

- **`--weapon-docs [VERSION]`**  
  以 JSON 格式生成武器文档。

- **`--man-page`**  
  以 troff 格式创建手册页。

### 图像处理
- **`--dump-sequence-sheets PALETTE TILESET-OR-MAP`**  
  将序列纹理图集导出为一组 png 图像。

- **`--png SPRITEFILE PALETTE [--noshadow] [--nopadding]`**  
  将 shp/tmp/R8 转换为一系列 PNG 图像，可选择移除阴影。

- **`--png-sheet-export PNGFILE`**  
  将 png 元数据导出到 yaml。

- **`--png-sheet-import PNGFILE`**  
  将 yaml 元数据导入到 png。

- **`--shp PNGFILE [PNGFILE ...]`**  
  将一系列 PNG 图像合并为一个 SHP 文件。

### 地图处理
- **`--map (refresh|unpack|repack) [filenameRegex=.*]`**  
  对匹配正则表达式的地图执行以下操作之一：刷新地图以重新格式化 map.yaml 并重新生成预览，将 oramap 文件解包到文件夹，或将文件夹重新打包为 oramap 文件（仅当之前已解包时）。

- **`--map-hash MAPFILE`**  
  生成指定 oramap 文件的哈希值。

- **`--map-rules MAPFILE`**  
  将自定义地图规则合并为适合包含在 map.yaml 中的形式。

- **`--resize-map MAPFILE WIDTH HEIGHT`**  
  调整地图底部角落的大小。

- **`--update-map MAP SOURCE [--detailed] [--apply]`**  
  将地图更新到最新引擎版本。SOURCE 可以是已知标签或更新规则的名称。

### 模组处理
- **`--register-mod LAUNCHPATH (system|user|both)`**  
  为游戏内模组切换器生成模组元数据条目。

- **`--unregister-mod (system|user|both)`**  
  移除游戏内模组切换器的模组元数据条目。

- **`--update-mod SOURCE [--detailed] [--apply] [--skip-maps]`**  
  将模组更新到最新版本。SOURCE 可以是已知标签或更新规则的名称。

### 地图与模组转换
- **`--import-ra-map FILENAME`**  
  将传统红色警戒 INI/MPR 地图转换为 OpenRA 格式。

- **`--import-ra2-map FILENAME`**  
  将红色警戒 2 地图转换为 OpenRA 格式。

- **`--import-td-map FILENAME`**  
  将传统泰伯利亚黎明 INI/MPR 地图转换为 OpenRA 格式。

- **`--import-ts-map FILENAME`**  
  将泰伯利亚之日地图转换为 OpenRA 格式。

- **`--rules-import RULES.INI ART.INI`**  
  将 ART.INI 和 RULES.INI 转换为 OpenRA 规则定义格式。

- **`--sequence-import FILENAME`**  
  将 ART.INI 转换为 OpenRA 序列定义格式。

- **`--tileset-import FILENAME TEMPLATEEXTENSION [TILESETNAME]`**  
  将传统图块集转换为 OpenRA 格式。

### 其他工具
- **`--emmy-lua-api`**  
  生成 EmmyLua API 注释，用于 IDE。

- **`--extract FILENAME [FILENAME...]`**  
  从模组包中提取文件到当前目录。

- **`--extract-chrome-strings`**  
  提取尚未本地化的可翻译字符串并更新 chrome 布局。

- **`--extract-yaml-strings`**  
  提取尚未本地化的 fluent 字符串。

- **`--list-installshield-cab DATA.HDR`**  
  列出 Installshield CAB 卷集中包含的文件名。

- **`--list-mscab ARCHIVE.CAB`**  
  列出 MSCAB 文件中包含的文件名。

- **`--remap SRCMOD:PAL DESTMOD:PAL SRCSHP DESTSHP`**  
  将 SHPs 重新映射到另一个调色板。

- **`--replay-metadata REPLAYFILE`**  
  从重放文件中打印游戏元数据。

- **`--resolved-rules ACTOR [PATH/TO/MAP]`**  
  显示给定角色的最终合并 MiniYaml 规则。输入值区分大小写。

- **`--resolved-sequences IMAGE-NAME [PATH/TO/MAP]`**  
  显示给定图像的最终合并 MiniYaml 序列树。输入值区分大小写。

- **`--resolved-weapons WEAPON [PATH/TO/MAP]`**  
  显示给定武器的最终合并 MiniYaml 树。输入值区分大小写。

- **`--zbstudio-lua-api`**  
  生成 ZeroBrane Studio Lua API 和自动完成描述。
