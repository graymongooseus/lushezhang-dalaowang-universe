"""从现有SQLite导出可阅读档案和CSV；不修改数据库。"""
import csv
import json
import sqlite3
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT.parents[1]/'scripts'))
from public_data import public_database,COLUMNS
DB = ROOT / '人物谱系.sqlite3'
db = sqlite3.connect(DB.as_uri() + '?mode=ro', uri=True)
db = public_database(db)
OUT = ROOT / '导出'
CARDS = ROOT / '人物档案'
OUT.mkdir(exist_ok=True)
CARDS.mkdir(exist_ok=True)

def rows(sql, args=()):
    return [dict(r) for r in db.execute(sql,args)]

sources = {r['id']:r for r in rows('SELECT * FROM sources')}
people = rows('SELECT * FROM people ORDER BY is_subject DESC, rowid')
names = {r['id']:r['name'] for r in people}
def cell(value):
    return ('待补充／未评估' if value is None else str(value)).replace('|','／').replace('\n',' ')
def cite(sid):
    s = sources[sid]
    return f"[{s['title']}]({s['url']})" if s['url'] else s['title']
def table(headers, data):
    return '\n'.join(['| '+' | '.join(headers)+' |','| '+' | '.join('---' for _ in headers)+' |']+
                     ['| '+' | '.join(cell(x) for x in row)+' |' for row in data])
def period(start,end):
    return f'{start or "起始时间待补"} — {end or "结束时间待补"}'

def highest_role(person):
    position=person['最高已收录岗位职务']
    org=person['最高岗位机构']
    if position is None:
        return '待补充'
    return f'{org}：{position}' if org else position

exports = {
 '人物总览':'SELECT * FROM person_overview',
 '关系总览':'SELECT * FROM relationship_overview',
 '教育经历':'SELECT p.name AS 人物,e.* FROM education e JOIN people p ON p.id=e.person_id',
 '任职履历':'SELECT p.name AS 人物,a.* FROM appointments a JOIN people p ON p.id=a.person_id',
 '关系证据':'SELECT * FROM current_relationship_evidence',
 '派系目录':'SELECT * FROM factions',
 '派系归属':'SELECT * FROM faction_memberships',
 '分类目录':'SELECT * FROM classifications',
 '人物分类':'SELECT p.name AS 人物,c.name AS 分类,c.dimension AS 分类维度,pc.* FROM person_classifications pc JOIN people p ON p.id=pc.person_id JOIN classifications c ON c.id=pc.classification_id',
 '未具名提及':'SELECT * FROM unresolved_mentions',
 '来源目录':'SELECT * FROM sources',
 '人物提及':'SELECT p.name AS 人物,m.* FROM mentions m JOIN people p ON p.id=m.person_id',
 '信息线索':'SELECT p.name AS 人物,o.* FROM observations o JOIN people p ON p.id=o.person_id',
 '人物事件':'SELECT p.name AS 人物,e.* FROM person_events e JOIN people p ON p.id=e.person_id',
 '关系时间段':'SELECT * FROM relationship_periods',
 '姓名核对表':'SELECT * FROM identity_checks',
 '视频片段':'SELECT * FROM video_segments',
 '片段人物':'SELECT * FROM segment_people',
 '排除人物':'SELECT * FROM excluded_people',
 '亲属类型索引':'SELECT * FROM kinship_links',
 '亲属待补充档案':'SELECT p.name AS 人物,f.* FROM family_research f JOIN people p ON p.id=f.person_id',
}
for name,sql in exports.items():
    cur=db.execute(sql)
    with (OUT / (name+'.csv')).open('w',encoding='utf-8-sig',newline='') as f:
        w=csv.writer(f)
        w.writerow([col[0] for col in cur.description])
        w.writerows(cur.fetchall())

tables = list(COLUMNS)
data = {t:rows(f'SELECT * FROM {t}') for t in tables}
(OUT/'数据库快照.json').write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
manifest={}
for asset in data['assets']:
    if asset['visibility']!='public' or not asset['person_id']:continue
    photo=json.loads(asset['metadata_json'])
    for target,field in [('file','storage_key'),('source','source_url'),('kind','kind'),('license','license_text'),('license_url','license_url'),('accessed_at','accessed_at')]:
        if asset[field] is not None:photo[target]=asset[field]
        else:photo.pop(target,None)
    manifest[asset['person_id']]=photo
(ROOT.parent/'关系图谱/avatars/manifest.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n')

overview = rows('SELECT * FROM person_overview')
by_id = {r['人物ID']:r for r in overview}
for person in people:
    pid=person['id']; p=by_id[pid]
    edus=rows('SELECT * FROM education WHERE person_id=?',(pid,))
    jobs=rows('SELECT * FROM appointments WHERE person_id=? ORDER BY start_date IS NULL,start_date,id',(pid,))
    rels=rows('SELECT * FROM relationships WHERE (person_a_id=? OR person_b_id=?) AND NOT EXISTS(SELECT 1 FROM relationships n WHERE n.supersedes_id=relationships.id)',(pid,pid))
    memberships=rows('SELECT fm.*,f.name FROM faction_memberships fm JOIN factions f ON f.id=fm.faction_id WHERE person_id=?',(pid,))
    lines=[f"# {person['name']}",'',f"人物 ID：`{pid}`。信息更新时间：{person['updated_at']}。",
           '',f"人物分类：**{cell(p['全部分类'])}**。主派系／圈子：**{p['主派系']}**（{p['主派系归属状态']}）。",
           '',person['identity_note'] or '',
           '',f"资料范围：{person['profile_status']}。空值代表未掌握，不代表不存在。",
           '',f"最高学历：**{cell(p['最高学历'])}**；最高学位：**{cell(p['最高学位'])}**。",
           '',f"最高已收录岗位：**{highest_role(p)}**。该字段不是现职，也不是已穷尽全生涯的断言。",
           '', '## 教育经历','']
    if edus:
        lines.append(table(['院校','专业','学历','学位','方式','起止时间','来源／说明'],
            [[e['institution'],e['major'],e['education_level'],e['degree'],e['study_mode'],period(e['start_date'],e['end_date']),cite(e['source_id'])+'；'+(e['note'] or '')] for e in edus]))
    else: lines.append('本次资料不足，学历和学位保持空值。')
    lines+=['','## 任职简历','',table(['时间','地区／管辖范围','机构','职务','证据状态','来源／日期说明'],
        [[period(a['start_date'],a['end_date']),a['region'],a['organization'],a['position'],a['status'],
          cite(a['source_id'])+'；'+a['date_note']+(' 观察日期：'+a['observed_at'] if a['observed_at'] else '')+(' '+a['note'] if a['note'] else '')] for a in jobs])]
    lines+=['','## 派系归属','']
    if memberships:
        lines.append(table(['派系','状态','归属强度','时间','依据'],[[m['name'],m['status'],m['belonging_strength'],period(m['start_date'],m['end_date']),m['rationale']+' '+cite(m['source_id'])] for m in memberships]))
    else: lines.append('派系待定。这是资料状态，不是实际阵营；同为待定的人彼此不构成关系。')
    lines+=['','## 与其他人物的关系','']
    if not rels: lines.append('本版尚无具体的人对人关系记录；视频中的机构或职务讨论另存信息线索。')
    for r in rels:
        arrow=' ↔ ' if r['direction']=='双向' else ' → ' if r['direction']=='A→B' else ' — '
        lines += [f"### {names[r['person_a_id']]}{arrow}{names[r['person_b_id']]}：{r['relationship_type']}",'',
          f"- 关系ID：`{r['id']}`；时间：{period(r['start_date'],r['end_date'])}。",
          f"- 亲疏／评价编码：{cell(r['affinity'])}（适用范围：{r['affinity_scope']}）；联系强度：{cell(r['strength'])}{'/5' if r['strength'] else ''}；证据可信度：{r['confidence']}。",
          f"- 状态：{r['status']}。",
          f"- 判断依据：{r['rationale']}",'']
        evidence=rows('SELECT * FROM current_relationship_evidence WHERE relationship_id=?',(r['id'],))
        lines.append(table(['信息提供者','证据方向','内容概括','位置','来源','核实状态'],
            [[e['claimant_label'],e['stance'],e['summary'],e['locator'],cite(e['source_id']),e['status']] for e in evidence]))
    obs=rows('SELECT * FROM observations WHERE person_id=?',(pid,))
    lines+=['','## 其他信息线索','']
    lines.append(table(['维度','内容','状态','来源'],[[o['field'],o['summary'],o['status'],cite(o['source_id'])+('；'+o['locator'] if o['locator'] else '')] for o in obs]) if obs else '暂无。')
    events=rows('SELECT * FROM person_events WHERE person_id=? ORDER BY event_date',(pid,))
    lines+=['','## 事件与时间','',table(['事件','发生时间','报道时间','状态','来源'],[[e['title'],e['event_date'],e['reported_at'],e['verification'],cite(e['source_id'])] for e in events]) if events else '暂无已收录事件。']
    segments=rows('SELECT s.*,v.title AS video_title,so.url FROM video_segments s JOIN segment_people sp ON sp.segment_id=s.id JOIN video_analyses v ON v.source_id=s.source_id JOIN sources so ON so.id=s.source_id WHERE sp.person_id=? ORDER BY s.start_seconds',(pid,))
    if segments:
        lines+=['','## 逐段视频依据','']
        for seg in segments:
            seconds=seg['start_seconds'];tc=f"{seconds//60:02}:{seconds%60:02}"
            lines += [f"### [{tc}]({seg['url']}&t={seconds}s) · {seg['title']}",'',seg['claim_type']+'；'+seg['verification'],'',seg['summary'],'']
    lines+=['','[返回总览](../数据库总览.md)','']
    (CARDS/(pid+'.md')).write_text('\n'.join(lines))

core=[p for p in overview if p['核心研究对象']]
factions=rows("SELECT * FROM factions WHERE faction_type!='状态占位' ORDER BY id")
faction_lines=['# 派系与圈子图谱','',
 '这里的“家族”是便于浏览的研究分组：政治网络、商业网络、媒体协作、思想受众与学术网络分开标记。待定是状态，不是共同阵营。', '',
 '同组不代表所有成员彼此友好；一次合作、公开赞赏与政治忠诚分别记录。派系卡片中的核心人物可能是组织核心、创作者或当前资料库的代表人物，具体含义见说明。','',
 table(['派系／圈子','类型','核心／代表人物','已录成员及角色'],[
     [f"[{f['name']}](#"+f['id']+')',f['faction_type'],names.get(f['core_person_id'],'待补充'),
      '；'.join(names[m['person_id']]+'（'+(m['membership_role'] or '')+'；'+m['status']+'）' for m in data['faction_memberships'] if m['faction_id']==f['id'])]
     for f in factions]),'', '```mermaid','graph LR']
for f in factions:
    faction_lines.append(f'  {f["id"]}["{f["name"]} · {f["faction_type"]}"]')
    for m in data['faction_memberships']:
        if m['faction_id']!=f['id']: continue
        arrow='-.->' if '待核实' in m['status'] else '-->'
        faction_lines.append(f'  {f["id"]} {arrow} {m["person_id"]}["{names[m["person_id"]]}"]')
faction_lines+=['```','', '虚线为待核实的分析归属。图中的线表示分组关系，不表示个人好感或正式组织成员身份。','']
for f in factions:
    faction_lines += [f'<a id="{f["id"]}"></a>',f'## {f["name"]}','',
       f"类型：{f['faction_type']}；核心／代表人物：{names.get(f['core_person_id'],'待补充')}；建组状态：{f['status']}。",'',
       f['definition'],'',f['note'] or '', '', '建组依据：'+cite(f['source_id']), '',
       table(['成员','角色','归属状态','可信度','证据与范围'],
         [[f"[{names[m['person_id']]}](人物档案/{m['person_id']}.md)",m['membership_role'],m['status'],m['confidence'],m['rationale']+' '+cite(m['source_id'])]
          for m in data['faction_memberships'] if m['faction_id']==f['id']]),'']
faction_lines += ['## 派系待定的人物','',
    '、'.join(p['name'] for p in people if p['primary_faction_id'] in (None,'f_pending'))+'。', '',
    '这些人物仅有资料状态相同，彼此不代表同派系。后续有明确归属证据时更新。','',
    '[返回数据库总览](数据库总览.md)','']
(ROOT/'派系图谱.md').write_text('\n'.join(faction_lines))

relation_graph=['```mermaid','graph LR']
for r in rows('SELECT r.*, a.name AS aname,b.name AS bname FROM relationships r JOIN people a ON a.id=r.person_a_id JOIN people b ON b.id=r.person_b_id WHERE NOT EXISTS(SELECT 1 FROM relationships n WHERE n.supersedes_id=r.id)'):
    left=f"{r['person_a_id']}[\"{r['aname']}\"]"
    right=f"{r['person_b_id']}[\"{r['bname']}\"]"
    label=r['relationship_type'].replace('"','')
    if '待核实' in r['status'] or '冲突' in r['status']:
        edge=f'-. "{label} · 待核实" .->'
    elif r['direction']=='双向': edge=f'<-->|"{label}"|'
    else: edge=f'-->|"{label}"|'
    relation_graph.append(f'  {left} {edge} {right}')
relation_graph+=['```']

lines=['# 人物谱系数据库 · 分类与派系版','',
       f"已收录 {len(people)} 个人物或账号实体，{len(core)} 位重点研究人物；{len(data['education'])} 条教育经历、{len(data['appointments'])} 条任职记录、{len(data['relationships'])} 条关系及 {len(data['relationship_evidence'])} 条关系证据。已分析 {sum(s['source_type']=='视频字幕' for s in sources.values())} 个视频。",'',
       '人物职业标签支持多选；官员包含公职人员，演员和主持人分别标注，另含军方、商业、媒体、学者、运动员、律师、歌手和其他名人；分类不表示圈层。鲁社长是主播与信息来源。', '',
       '[打开派系与圈子图谱](派系图谱.md) · [本期视频人物分析](../文稿分析/oG93w6k-1DY_人名与关系.md)','',
       '## 人物分类总表','',table(['人物','主分类','全部分类','主派系／圈子','归属状态'],
          [[f"[{p['主角名字']}](人物档案/{p['人物ID']}.md)",p['人物类型'],p['全部分类'],p['主派系'],p['主派系归属状态']] for p in overview]),'',
       '分类字典允许多种职业标签；政治立场不作为人物主标签，外国国家元首与仅观众账号已经移出活跃库，删除可由备份与审计追溯。','',
       '## 核心人物','',table(['人物','最高学历','最高学位','最高已收录岗位','派系'],
          [[f"[{p['主角名字']}](人物档案/{p['人物ID']}.md)",p['最高学历'],p['最高学位'],highest_role(p),p['所属派系']] for p in core]),'',
       '最高岗位是本次资料中收录的历史代表岗位，并非现职判断。当前资料不能证明的学历、派系与好感度均保留空值。', '',
       '## 人物关系','',table(['人物A','人物B','关系','亲疏／评价编码','评分范围','联系强度','状态'],
          [[r['人物A'],r['人物B'],r['关系类型'],r['亲疏对立值'],r['评分适用范围'],r['联系强度'],r['核实状态']] for r in rows('SELECT * FROM relationship_overview')]),'',
       '公开评价编码描述本期表述倾向，不是现实私交评分，更不能反推对方的态度。陈增光与习近平的强度3仅适用于宁德共事时期；本期共同节目参与只记强度1。', '',
       *relation_graph,'',
       '## 其他人物／账号','',table(['名称','身份分类','备注'],
            [[p['name'],p['category'],p['identity_note']] for p in people if not p['is_subject']]),'',
       '## 来源目录','',table(['来源ID','来源','发布或资料日期','说明'],
            [[s['id'],cite(s['id']),s['published_at'],s['note']] for s in sources.values()]),'',
       '## 文件入口','',
       '- [SQLite数据库](人物谱系.sqlite3)',
       '- [人物总览CSV](导出/人物总览.csv)',
       '- [任职履历CSV](导出/任职履历.csv)',
       '- [关系总览CSV](导出/关系总览.csv)',
       '- [完整结构化快照JSON](导出/数据库快照.json)',
       '- [字段、评分与更新规则](使用说明.md)','']
(ROOT/'数据库总览.md').write_text('\n'.join(lines))
with (ROOT.parent/'人物索引.csv').open('w',encoding='utf-8-sig',newline='') as f:
    cur=db.execute('SELECT s.id AS 来源ID,s.url AS 视频链接,p.id AS 人物ID,p.name AS 规范姓名,p.category AS 分类,m.locator AS 视频时间,m.note AS 说明 FROM mentions m JOIN people p ON p.id=m.person_id JOIN sources s ON s.id=m.source_id ORDER BY s.id,p.name')
    w=csv.writer(f);w.writerow([c[0] for c in cur.description]);w.writerows(cur.fetchall())
db.close()
print(ROOT/'数据库总览.md')
