"""从唯一数据源 SQLite 导出可离线打开的单文件网页。"""
import argparse, base64, json, mimetypes, sqlite3, html as html_utils, sys
from pathlib import Path
ROOT=Path(__file__).resolve().parent
sys.path.insert(0,str(ROOT.parents[1]/'scripts'))
from public_data import public_database,COLUMNS
parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('--database',type=Path,default=ROOT.parent/'数据库/人物谱系.sqlite3')
parser.add_argument('--output-dir',type=Path,help='独立静态输出目录；指定后不修改默认网页或托管目录')
parser.add_argument('--without-photos',action='store_true',help='使用姓名占位，避免嵌入本地第三方照片')
args=parser.parse_args()
db=sqlite3.connect(args.database.resolve().as_uri()+'?mode=ro',uri=True)
db=public_database(db)
assert not db.execute('PRAGMA foreign_key_check').fetchall()
tables=['people','sources','education','appointments','factions','faction_memberships','relationships','relationship_evidence','person_events','relationship_periods','mentions','identity_checks','observations','unresolved_mentions','classifications','person_classifications','video_analyses','video_segments','segment_people','kinship_links','family_research','site_settings']
data={t:[dict(r) for r in db.execute('SELECT * FROM '+t)] for t in tables}
data['relationship_evidence']=[dict(r) for r in db.execute('SELECT * FROM current_relationship_evidence')]
data['overview']=[dict(r) for r in db.execute('SELECT * FROM person_overview')]
photos={} if args.without_photos else {r['person_id']:dict(file=r['storage_key'],source=r['source_url'],kind=r['kind'],license=r['license_text'],license_url=r['license_url'],accessed_at=r['accessed_at']) for r in db.execute("SELECT * FROM assets WHERE visibility='public'")}
data['photos']={}
for pid,photo in photos.items():
    if pid not in {p['id'] for p in data['people']} or not photo.get('file'):continue
    path=(ROOT/photo['file']).resolve()
    if not path.is_relative_to((ROOT/'avatars').resolve()):raise ValueError('Avatar path must remain inside avatars')
    if path.exists():
        data['photos'][pid]={k:photo.get(k,'') for k in ['source','kind','license','license_url','accessed_at']}
        data['photos'][pid]['data']='data:'+ (mimetypes.guess_type(path)[0] or 'image/jpeg')+';base64,'+base64.b64encode(path.read_bytes()).decode()
data['generated_at']=db.execute('SELECT MAX(published_at) FROM revision_publications').fetchone()[0]
payload=json.dumps(data,ensure_ascii=False,separators=(',',':')).replace('<','\\u003c')
settings={r['key']:r['value'] for r in data['site_settings']}
html=(ROOT/'template.html').read_text(encoding='utf-8').replace('__DATABASE__',payload).replace('__SITE_TITLE__',html_utils.escape(settings['site_title'])).replace('__EDITORIAL_NOTE__',html_utils.escape(settings['editorial_note']))
outputs=[args.output_dir.resolve()] if args.output_dir else [ROOT]
site=ROOT.parents[1]/'站点'
if not args.output_dir and (site/'.openai/hosting.json').exists():
    outputs.append(site/'dist')
for base in outputs:
    base.mkdir(parents=True,exist_ok=True)
    (base/'index.html').write_text(html,encoding='utf-8')
for analysis in data['video_analyses']:
    assert Path(analysis['markdown_filename']).name==analysis['markdown_filename'],'分析文件名不能包含路径'
    for base in outputs:
        out=base/'analyses';out.mkdir(exist_ok=True)
        (out/analysis['markdown_filename']).write_text(analysis['markdown_text'],encoding='utf-8')
print(f"生成 {outputs[0]/'index.html'}；{len(data['people'])} 人 / {len(data['relationships'])} 关系 / {len(data['photos'])} 头像；{len(html.encode())/1024/1024:.1f} MB")
