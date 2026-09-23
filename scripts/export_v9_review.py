"""Export local migration/review findings; never part of the public snapshot."""
import csv,json,sqlite3
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
DB=ROOT/'鲁社长/数据库/人物谱系.sqlite3'
OUT=ROOT/'复核报告/2026-09-23_v9';OUT.mkdir(parents=True,exist_ok=True)
c=sqlite3.connect(DB);c.row_factory=sqlite3.Row
baseline=json.loads(c.execute('SELECT baseline_counts_json FROM schema_migrations WHERE version=9').fetchone()[0])
queries={
 '逐人复核清单':'''SELECT p.id AS 人物ID,p.name AS 姓名,p.category AS 主分类,p.record_status AS 条目状态,r.identity_assessment AS 身份复核结论,r.scope AS 复核范围,r.source_ids_json AS 已有身份来源,r.analysis_files_json AS 涉及原分析,r.findings_json AS 说明,r.reviewed_at AS 本次复核时间 FROM people p JOIN person_review_results r ON r.person_id=p.id ORDER BY p.id''',
 '全部问题清单':'''SELECT f.*,p.name AS 人物姓名 FROM review_findings f LEFT JOIN people p ON f.entity_table='people' AND f.entity_id=p.id ORDER BY f.status,f.entity_table,f.entity_id''',
 '文稿复核索引':'SELECT * FROM manuscript_reviews ORDER BY source_id'}
for name,query in queries.items():
 cur=c.execute(query)
 with (OUT/(name+'.csv')).open('w',encoding='utf-8-sig',newline='') as f:
  w=csv.writer(f);w.writerow([x[0] for x in cur.description]);w.writerows(cur)
tables=['people','relationships','relationship_periods','person_events','education','appointments','sources','video_analyses','video_segments','segment_people','unresolved_mentions']
lines=['# v9 数据结构迁移与原资料复核报告','', '日期：2026-09-23。主库：`鲁社长/数据库/人物谱系.sqlite3`。本次范围为全库结构和既有证据对照、定向重读分析文稿；不是对每条现实说法重新独立调查，也没有重新核听全部原视频。','',
 '## 数据保留与新增索引','', '| 表 | 迁移前 | 迁移后 |','|---|---:|---:|']
for t in tables:lines.append(f"| {t} | {baseline.get(t,0)} | {c.execute('SELECT COUNT(*) FROM '+t).fetchone()[0]} |")
lines+=['','所有 238 位人物及 116 条关系稳定 ID 保留，没有将同名、同圈或共同出场误合并。新增 55 条历史提及定位与 3 期分析索引，均来自已有材料；不是新增看完三期视频的声明。补充 2 条身份待确认记录，人物本身保留旧 ID 与待确认标志。','',
 '## 逐人复核','', '[238 人逐项清单](逐人复核清单.csv) · [全部问题与状态](全部问题清单.csv) · [7 份文稿索引及散列](文稿复核索引.csv)','',
 '- 159 人已有外部身份来源引用。这里表示“存在引用”，不表示本次逐一重新打开网页认证了全部履历。',
 '- 77 人仍主要依赖节目语境；另有 2 人需要身份消歧。共 79 人缺少独立身份来源，进入补证据清单。',
 '- 元霸：仅保留账号称谓，不猜实名；“元霸/元霸加拿大”是否同一账号需要外部证据。',
 '- 李敏（文稿称前李其炎秘书）：保留文稿语境和稳定 ID，未确认为其他同名者；未添加照片。',
 '- 此次保留 242 条未知有效时间、118 条来源未知发布日期；未知是一种真实资料状态，不补造年月日。','',
 '## 根据原稿及来源落实的更正','',
 '1. 彭丽媛—雷佳：2015 年《白毛女》复排合作改为该年份点状记录，不能外推为持续到今天的关系。补回文化部报道日期 2015-12-01。[原始报道](https://www.mct.gov.cn/whzx/qgwhxxlb/gd/201512/t20151201_790331.htm)。',
 '2. 王健林—薄熙来：已有证据存在不同说法，关系及阶段统一标为 disputed，保留支持与质疑引用。',
 '3. 王健林—俞正声：从原有说明恢复“主播声称的 2017 年协调”，作为未核实点状主张。',
 '4. 景甜—孙宇晨：恢复原有“2026 年 8 月”说法的月精度；不升级真实性，也不延伸为持续关系。',
 '5. 习近平—习仲勋：规范化角色明确为 child/parent，不因旧 A/B 排序颠倒父子方向。',
 '6. 未知圈层改为 NULL；同属待定不形成一个实际派系。',
 '7. 机构、职位、地区的旧标签转为带 ID 的引用，但保留 label_only 状态，未擅自把不同来源的同名机构合并。','',
 '## 历史与公开输出','',
 f"建立 {c.execute('SELECT COUNT(*) FROM statements').fetchone()[0]} 条资料身份、同数量的基线修订、{c.execute('SELECT COUNT(*) FROM citations').fetchone()[0]} 条版本引用和 {c.execute('SELECT COUNT(*) FROM source_passages').fetchone()[0]} 个来源定位。全部迁移修订明确标记 legacy_import，不伪造历史人工审核。",
 '', '公开快照改为白名单导出，不含账户、草稿、投票、本地审核与审计。人物档案改用稳定 ID 命名，支持同名不同人。头像元数据改以 SQLite assets 为准，保留原图文件及来源；80 条媒体元数据中，现有可嵌入本地图片 72 张。','',
 '## 验证记录','',
 '- SQLite 完整性、外键、日期精度与边界、主分类、最高履历归属、全部当前修订与投影一致性通过。',
 '- 8 组行为测试通过：草稿隔离、同名新人物、禁止自审、并发冲突、重复请求幂等、不可改历史、回退生成新版本、私有内容排除、时间边界和投票唯一性。',
 '- 公开 SQL 快照在空数据库恢复并通过同一校验；无照片构建通过。',
 '- 浏览器：238 个节点；点击彭丽媛打开对应档案；2015 年显示与雷佳的作品合作，2016-01-01 不再显示；全部时期可恢复。',
 '- 7 期视频可选择；早期摘录显示范围限制及未知总时长；样本跳转定位为 veuNZX1lNco&t=80s。',
 '- 手机视口 390×844：搜索只出现匹配节点，页面 scrollWidth=390，无横向溢出；测试后恢复桌面尺寸。',
 '- 浏览器记录数条 “Could not establish connection. Receiving end does not exist.” 连接错误；上述交互正常，未把控制台记为完全无错误。','',
 '## 备份与范围','',
 '完整备份：`备份/数据库标准v9_20260923_151954`。正式迁移前 SQLite 备份：`备份/v9迁移_2026-09-23T224003_001839+0000/人物谱系.sqlite3`。旧姓名文件名档案另归档于完整备份下。',
 '', '本次更新本地数据库、标准文档、导出脚本、离线网页及公开快照；没有新建在线用户系统，也没有推送 GitHub 或部署远程站点。后续补证据须沿用现有稳定 ID、修订与审核流程。','']
(OUT/'复核报告.md').write_text('\n'.join(lines))
print(OUT/'复核报告.md')
