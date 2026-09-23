# 鲁社长大老王宇宙

以 SQLite 为唯一数据源的人物关系可视化项目：把节目中的人物、亲属、圈层、事件和视频出处放在一张可交互的图里。

[在线体验](https://ccpedia.liugongming.chatgpt.site) · [工作流](工作流.md) · [数据标准](数据库结构标准.md) · [入库标准](入库标准.md) · [贡献指南](CONTRIBUTING.md) · [MIT License](LICENSE)

## 功能

- 圆形人物图、悬停背景、点击动画居中与关联高亮。
- 点击人物展开三层直接关系圈：一层亲属与亲密、二层业务往来、三层共事关系；连线旁显示具体关系称谓与待核标记。
- 职业标签支持多选；演员与主持人分开，并包含运动员、律师。头像色环对应主标签，圈层独立呈现。
- 历史时间轴与事件轨迹，区分发生时间、报道时间、收录时间。
- 逐期原创 Markdown 分析、人物索引和视频时间跳转。
- 默认“节目叙述模式”，可打开核对标记；叙述、推测和公开事实在数据层分开保存。

本项目整理节目叙述，不代表主播授权或背书，也不将节目说法统一认定为独立证实的事实。

## 快速开始

需要 Python 3.10+，运行和构建仅依赖标准库，无需 npm、API Key 或后端服务。

```sh
git clone https://github.com/graymongooseus/lushezhang-dalaowang-universe.git
cd lushezhang-dalaowang-universe
python3 scripts/bootstrap.py
python3 scripts/validate.py
python3 鲁社长/关系图谱/build.py
python3 -m http.server 8765 --bind 127.0.0.1 --directory 鲁社长/关系图谱
```

打开 <http://127.0.0.1:8765>。也可以直接打开生成的 `鲁社长/关系图谱/index.html`，页面支持离线使用。

`bootstrap.py` 只在数据库不存在时恢复，绝不会覆盖已有研究资料。首次运行后，`鲁社长/数据库/人物谱系.sqlite3` 是本地唯一可编辑数据源。不要重跑历史初始化脚本。

## 数据与目录

当前公开快照包含 **238 位人物、116 条关系、28 条事件、238 条视频片段**。

```text
scripts/                      初始化、公开导出、数据校验
 data/snapshot.sql             当前 SQLite 的可审阅分发快照
鲁社长/数据库/schema_v9.sql     数据模型
鲁社长/数据库/export.py        Markdown、CSV、JSON 导出
鲁社长/关系图谱/template.html   原生 HTML/CSS/JavaScript 界面
鲁社长/关系图谱/build.py        SQLite → 单文件网页
鲁社长/关系图谱/avatars/        图片来源清单（不附第三方照片）
鲁社长/文稿分析/                逐期原创分析及结构化摘要
工作流.md                     姓名核对、证据、时间与更新约定
```

`data/snapshot.sql` 是从主数据库导出的发布快照，不是另一套手工维护的数据源。公开快照按表与字段白名单导出当前已发布资料，不含账号、草稿、投票、审核备注和本地审计。视频定位可能是逐段时间或章节范围，以每期说明为准。

## 更新资料

1. 先阅读 [工作流](工作流.md)，备份数据库。
2. 保存含全部人物细节及时间入口的原创 Markdown，再通过 v9 修订与审核 API 更新 SQLite；复用稳定人物 ID。
3. 为新增亲属关系同步 `kinship_links`，为视频资料同步 `video_analyses`、`video_segments`、`segment_people`。
4. 运行校验和导出：

```sh
python3 scripts/validate.py
python3 scripts/test_v9.py
python3 鲁社长/数据库/export.py
python3 鲁社长/关系图谱/build.py
python3 scripts/export_public.py
```

提交代码、必要的分析文件和最新 `data/snapshot.sql`。不要提交数据库备份、凭据或带未授权照片的生成网页。

## 部署

```sh
python3 鲁社长/关系图谱/build.py --output-dir build --without-photos
```

将 `build/` 放到任何静态网站托管服务即可。`index.html` 内嵌数据，不需要数据库服务器；同目录 `analyses/` 提供 Markdown 下载。原站点的托管凭据、项目绑定和部署历史不随仓库分发。

## 照片及许可

项目原创代码和原创文档使用 MIT。第三方照片、频道头像、节目音视频、外部文章及商标不在 MIT 授权范围内，见 [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md)。

由于现有照片尚未逐张完成再分发授权核对，仓库只提供来源清单。首次构建显示姓名占位；有相应使用权的本地照片放回 SQLite assets 所列路径后，构建器即可嵌入。线上演示的图片不因此获得开源授权。

欢迎通过 Issue 提交姓名纠正、证据补充或交互问题；通过 Pull Request 贡献代码。
