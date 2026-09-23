"""Upgrade the canonical database to sourced, multiple professional tags."""
from datetime import datetime, timezone
import json
from pathlib import Path
import sqlite3

ROOT = Path(__file__).resolve().parents[1]
PATH = ROOT / '鲁社长/数据库/人物谱系.sqlite3'
STAMP = datetime.now(timezone.utc).isoformat(timespec='seconds')
BACKUP = ROOT / '鲁社长/数据库/备份' / ('人物谱系_标签迁移_' + STAMP[:10] + '.sqlite3')
BACKUP.parent.mkdir(parents=True, exist_ok=True)

with sqlite3.connect(PATH) as db:
    db.row_factory = sqlite3.Row
    if db.execute("SELECT 1 FROM classifications WHERE name='官员'").fetchone():
        print('Tag migration already applied')
        raise SystemExit(0)
    with sqlite3.connect(BACKUP) as snapshot:
        db.backup(snapshot)
    db.execute('PRAGMA foreign_keys=ON')
    db.execute('BEGIN IMMEDIATE')
    db.execute('DROP TRIGGER category_guard_insert')
    db.execute('DROP TRIGGER category_guard_update')
    definitions = {
        'c_v4_0': ('官员', '经公开资料确认担任政府或公共职务的人物，含公职人员'),
        'c_v4_1': ('军方', '具有军队职务或军方工作身份的人物'),
        'c_v4_5': ('演员', '以影视或舞台表演为公众身份的人物'),
    }
    for cid, (name, definition) in definitions.items():
        db.execute('UPDATE classifications SET name=?,definition=? WHERE id=?', (name, definition, cid))
    for cid, name, definition in [
        ('c_v8_host', '主持人', '节目主持及采访主持身份'),
        ('c_v8_athlete', '运动员', '竞技体育运动员身份'),
        ('c_v8_lawyer', '律师', '有资料支持的执业律师身份'),
        ('c_v8_singer', '歌手', '歌手或歌唱家身份'),
    ]:
        db.execute('INSERT INTO classifications VALUES (?,?,?,?)', (cid, name, '职业角色', definition))
    primary = {
        '政治': '官员', '军事': '军方', '演员主持人': '演员',
    }
    for old, new in primary.items():
        db.execute('UPDATE people SET category=?,updated_at=? WHERE category=?', (new, STAMP, old))
    role_primary = {
        'p_zhangjike': '运动员', 'p_dengyaping': '运动员',
        'p_9k_020': '主持人', 'p_9k_025': '主持人',
        'p_9k_009': '歌手', 'p_9k_012': '歌手', 'p_9k_018': '歌手',
        'p_9k_026': '歌手', 'p_9k_030': '歌手',
        'p_9k_028': '律师',
    }
    ids = {r['name']: r['id'] for r in db.execute('SELECT id,name FROM classifications')}
    for pid, name in role_primary.items():
        db.execute('UPDATE people SET category=?,updated_at=? WHERE id=?', (name, STAMP, pid))
        db.execute('UPDATE person_classifications SET classification_id=?,status=?,rationale=?,updated_at=? WHERE person_id=? AND id=(SELECT id FROM person_classifications WHERE person_id=? ORDER BY id LIMIT 1)',
                   (ids[name], '已核对职业标签', '根据已收录公开身份和来源重新标注职业', STAMP, pid, pid))
    # A council candidate has not yet held the public office named by 官员.
    db.execute("UPDATE people SET category='其他名人',updated_at=? WHERE id='p_wang'", (STAMP,))
    db.execute("UPDATE person_classifications SET classification_id=?,rationale=?,updated_at=? WHERE person_id='p_wang' AND classification_id=?",
               (ids['其他名人'], '已核对为市议员候选人；尚无担任公职的依据', STAMP, ids['官员']))
    secondary = {
        'p_herundong': '歌手', 'p_liyifeng': '歌手', 'p_qinlan': '歌手',
        'p_9k_020': '媒体', 'p_9k_025': '媒体',
        'p_dengyaping': '商业',
    }
    for pid, name in secondary.items():
        source = db.execute('SELECT source_id FROM person_classifications WHERE person_id=? ORDER BY id LIMIT 1', (pid,)).fetchone()['source_id']
        db.execute('INSERT INTO person_classifications (id,person_id,classification_id,source_id,status,rationale,updated_at) VALUES (?,?,?,?,?,?,?)',
                   ('pc_v8_' + pid + '_' + ids[name], pid, ids[name], source, '已收录身份支持', '依据人物背景记录的另一职业身份', STAMP))
    db.execute('INSERT INTO sources(id,title,url,source_type,publisher,published_at,accessed_at,note) VALUES (?,?,?,?,?,?,?,?)',
               ('tag_gu_lawyer', 'Gao Zhisheng 高智晟 (b.1966): human rights lawyer under police surveillance',
                'https://openresearch-repository.anu.edu.au/bitstreams/7a1f3e8f-25ac-4d6a-a192-8cf9c508417d/download',
                '学术资料', 'Australian National University', '2012', STAMP[:10], '文中称谷开来为律师；仅用于职业标签。'))
    db.execute('UPDATE person_classifications SET source_id=?,rationale=? WHERE person_id=? AND classification_id=?',
               ('tag_gu_lawyer', '澳大利亚国立大学资料称谷开来曾为律师', 'p_9k_028', ids['律师']))
    db.execute("UPDATE people SET identity_note=replace(identity_note,'薄熙来妻子，','曾任律师，薄熙来妻子，') WHERE id='p_9k_028'")
    db.execute("""CREATE TRIGGER category_guard_insert BEFORE INSERT ON people
      WHEN NEW.category NOT IN ('官员','军方','商业','媒体','学者','演员','主持人','运动员','律师','歌手','其他名人')
      BEGIN SELECT RAISE(ABORT,'人物主标签不在职业标签目录'); END""")
    db.execute("""CREATE TRIGGER category_guard_update BEFORE UPDATE ON people
      WHEN NEW.category NOT IN ('官员','军方','商业','媒体','学者','演员','主持人','运动员','律师','歌手','其他名人')
      BEGIN SELECT RAISE(ABORT,'人物主标签不在职业标签目录'); END""")
    db.execute('PRAGMA user_version=8')
    db.execute('INSERT INTO change_log(changed_at,entity_table,entity_id,action,before_json,after_json,reason) VALUES (?,?,?,?,?,?,?)',
               (STAMP, 'classifications', 'taxonomy_v8', 'migrate',
                json.dumps({'primary': '七类单选'}, ensure_ascii=False),
                json.dumps({'primary': '职业主标签', 'multiple': True, 'labels': list(ids)}, ensure_ascii=False),
                '用户要求职业标签支持多选，拆分演员和主持人，增加运动员及律师，并调整名称'))
    assert db.execute('PRAGMA integrity_check').fetchone()[0] == 'ok'
    assert not db.execute('PRAGMA foreign_key_check').fetchall()
    db.commit()
print('Migrated person tags; backup:', BACKUP)
