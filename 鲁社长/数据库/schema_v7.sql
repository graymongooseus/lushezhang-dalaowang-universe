CREATE TABLE people (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL UNIQUE,
 category TEXT NOT NULL,
 is_subject INTEGER NOT NULL DEFAULT 0 CHECK(is_subject IN (0,1)),
 aliases_json TEXT NOT NULL DEFAULT '[]',
 identity_note TEXT,
 highest_education_id TEXT REFERENCES education(id) DEFERRABLE INITIALLY DEFERRED,
 highest_appointment_id TEXT REFERENCES appointments(id) DEFERRABLE INITIALLY DEFERRED,
 profile_status TEXT NOT NULL DEFAULT '待补充',
 updated_at TEXT NOT NULL
, primary_faction_id TEXT REFERENCES factions(id));
CREATE TABLE sources (
 id TEXT PRIMARY KEY,
 title TEXT NOT NULL,
 url TEXT,
 source_type TEXT NOT NULL,
 publisher TEXT,
 author_person_id TEXT REFERENCES people(id),
 published_at TEXT,
 accessed_at TEXT NOT NULL,
 note TEXT
);
CREATE TABLE mentions (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 source_id TEXT NOT NULL REFERENCES sources(id),
 locator TEXT NOT NULL,
 note TEXT,
 UNIQUE(person_id, source_id)
);
CREATE TABLE education (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 institution TEXT,
 major TEXT,
 education_level TEXT,
 degree TEXT,
 study_mode TEXT,
 start_date TEXT,
 end_date TEXT,
 source_id TEXT NOT NULL REFERENCES sources(id),
 status TEXT NOT NULL,
 note TEXT,
 updated_at TEXT NOT NULL
);
CREATE TABLE appointments (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 start_date TEXT,
 end_date TEXT,
 date_note TEXT NOT NULL,
 region TEXT,
 organization TEXT NOT NULL,
 position TEXT NOT NULL,
 observed_at TEXT,
 source_id TEXT NOT NULL REFERENCES sources(id),
 status TEXT NOT NULL,
 note TEXT,
 updated_at TEXT NOT NULL
);
CREATE TABLE factions (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL UNIQUE,
 definition TEXT NOT NULL,
 note TEXT
, faction_type TEXT NOT NULL DEFAULT '待分类', core_person_id TEXT REFERENCES people(id), source_id TEXT REFERENCES sources(id), status TEXT NOT NULL DEFAULT '待核实', updated_at TEXT);
CREATE TABLE faction_memberships (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 faction_id TEXT NOT NULL REFERENCES factions(id),
 start_date TEXT,
 end_date TEXT,
 belonging_strength INTEGER CHECK(belonging_strength BETWEEN 1 AND 5),
 claimant_person_id TEXT REFERENCES people(id),
 source_id TEXT NOT NULL REFERENCES sources(id),
 locator TEXT,
 status TEXT NOT NULL,
 confidence TEXT CHECK(confidence IN ('高','中','低','未评估')),
 rationale TEXT NOT NULL,
 updated_at TEXT NOT NULL
, membership_role TEXT);
CREATE TABLE relationships (
 id TEXT PRIMARY KEY,
 person_a_id TEXT NOT NULL REFERENCES people(id),
 person_b_id TEXT NOT NULL REFERENCES people(id),
 relationship_type TEXT NOT NULL,
 direction TEXT NOT NULL CHECK(direction IN ('A→B','双向','未确定')),
 start_date TEXT,
 end_date TEXT,
 affinity INTEGER CHECK(affinity BETWEEN -100 AND 100),
 strength INTEGER CHECK(strength BETWEEN 1 AND 5),
 confidence TEXT NOT NULL CHECK(confidence IN ('高','中','低','未评估')),
 status TEXT NOT NULL,
 rationale TEXT NOT NULL,
 supersedes_id TEXT REFERENCES relationships(id),
 updated_at TEXT NOT NULL, affinity_scope TEXT NOT NULL DEFAULT '未评估',
 CHECK(person_a_id != person_b_id),
 CHECK(affinity IS NULL OR length(rationale) > 0),
 CHECK(strength IS NULL OR length(rationale) > 0)
);
CREATE TABLE relationship_evidence (
 id TEXT PRIMARY KEY,
 relationship_id TEXT NOT NULL REFERENCES relationships(id),
 source_id TEXT NOT NULL REFERENCES sources(id),
 claimant_person_id TEXT REFERENCES people(id),
 claimant_label TEXT NOT NULL,
 locator TEXT,
 stance TEXT NOT NULL CHECK(stance IN ('支持','质疑','背景')),
 summary TEXT NOT NULL,
 status TEXT NOT NULL,
 updated_at TEXT NOT NULL
);
CREATE TABLE observations (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 field TEXT NOT NULL,
 summary TEXT NOT NULL,
 source_id TEXT NOT NULL REFERENCES sources(id),
 claimant_person_id TEXT REFERENCES people(id),
 locator TEXT,
 status TEXT NOT NULL,
 updated_at TEXT NOT NULL
);
CREATE TABLE change_log (
 id INTEGER PRIMARY KEY,
 changed_at TEXT NOT NULL,
 entity_table TEXT NOT NULL,
 entity_id TEXT NOT NULL,
 action TEXT NOT NULL,
 before_json TEXT,
 after_json TEXT,
 reason TEXT NOT NULL
);
CREATE INDEX appointments_by_person ON appointments(person_id,start_date);
CREATE INDEX relations_by_a ON relationships(person_a_id);
CREATE INDEX relations_by_b ON relationships(person_b_id);
CREATE INDEX evidence_by_relation ON relationship_evidence(relationship_id);
CREATE INDEX memberships_by_person ON faction_memberships(person_id);
CREATE TABLE classifications (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL UNIQUE,
 dimension TEXT NOT NULL CHECK(dimension IN ('职业角色','政治立场标签','辅助身份')),
 definition TEXT NOT NULL
);
CREATE TABLE person_classifications (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 classification_id TEXT NOT NULL REFERENCES classifications(id),
 source_id TEXT NOT NULL REFERENCES sources(id),
 claimant_person_id TEXT REFERENCES people(id),
 locator TEXT,
 status TEXT NOT NULL,
 rationale TEXT NOT NULL,
 updated_at TEXT NOT NULL,
 UNIQUE(person_id,classification_id,source_id)
);
CREATE TABLE unresolved_mentions (
 id TEXT PRIMARY KEY,
 source_id TEXT NOT NULL REFERENCES sources(id),
 phrase TEXT NOT NULL,
 locator TEXT,
 reason TEXT NOT NULL,
 resolved_person_id TEXT REFERENCES people(id),
 updated_at TEXT NOT NULL
);
CREATE INDEX classifications_by_person ON person_classifications(person_id);
CREATE VIEW person_overview AS
SELECT p.id AS 人物ID,p.name AS 主角名字,p.category AS 人物类型,
 p.is_subject AS 核心研究对象,p.aliases_json AS 别名,
 (SELECT group_concat(c.name,'；') FROM person_classifications pc JOIN classifications c ON c.id=pc.classification_id WHERE pc.person_id=p.id) AS 全部分类,
 e.education_level AS 最高学历,e.degree AS 最高学位,e.institution AS 最高学历院校,
 a.position AS 最高已收录岗位职务,a.organization AS 最高岗位机构,
 COALESCE(f0.name,'派系待定') AS 主派系,
 COALESCE((SELECT fm.status FROM faction_memberships fm WHERE fm.person_id=p.id AND fm.faction_id=p.primary_faction_id ORDER BY fm.updated_at DESC LIMIT 1),'待定') AS 主派系归属状态,
 COALESCE((SELECT group_concat(f.name || '〔' || fm.status || '〕','；') FROM faction_memberships fm JOIN factions f ON f.id=fm.faction_id WHERE fm.person_id=p.id),'派系待定') AS 所属派系,
 p.profile_status AS 资料状态,p.updated_at AS 信息更新时间,p.identity_note AS 身份备注
FROM people p LEFT JOIN education e ON e.id=p.highest_education_id
LEFT JOIN appointments a ON a.id=p.highest_appointment_id
LEFT JOIN factions f0 ON f0.id=p.primary_faction_id;
CREATE VIEW relationship_overview AS
SELECT r.id AS 关系ID,a.name AS 人物A,b.name AS 人物B,r.relationship_type AS 关系类型,
 r.direction AS 方向,r.start_date AS 起始时间,r.end_date AS 结束时间,
 r.affinity AS 亲疏对立值,r.affinity_scope AS 评分适用范围,r.strength AS 联系强度,
 r.confidence AS 证据可信度,r.status AS 核实状态,r.rationale AS 判断依据,r.updated_at AS 信息更新时间
FROM relationships r JOIN people a ON a.id=r.person_a_id JOIN people b ON b.id=r.person_b_id
WHERE NOT EXISTS(SELECT 1 FROM relationships n WHERE n.supersedes_id=r.id);
CREATE TABLE person_events (
 id TEXT PRIMARY KEY, person_id TEXT NOT NULL REFERENCES people(id),
 event_type TEXT NOT NULL, title TEXT NOT NULL, event_date TEXT, end_date TEXT,
 date_precision TEXT NOT NULL CHECK(date_precision IN ('day','month','year','unknown')),
 verification TEXT NOT NULL CHECK(verification IN ('公开证据支持','主播说法待核实','预测','有争议')),
 status_dimension TEXT, status_value TEXT, source_id TEXT NOT NULL REFERENCES sources(id),
 claimant_person_id TEXT REFERENCES people(id), locator TEXT, reported_at TEXT,
 recorded_at TEXT NOT NULL, note TEXT NOT NULL,
 CHECK(event_date IS NULL OR end_date IS NULL OR event_date <= end_date),
 CHECK(verification='公开证据支持' OR status_value IS NULL)
);
CREATE TABLE relationship_periods (
 id TEXT PRIMARY KEY, relationship_id TEXT NOT NULL REFERENCES relationships(id),
 valid_from TEXT, valid_to TEXT,
 temporal_mode TEXT NOT NULL CHECK(temporal_mode IN ('interval','point','start_only','undated')),
 relationship_type TEXT NOT NULL, affinity INTEGER CHECK(affinity BETWEEN -100 AND 100),
 strength INTEGER CHECK(strength BETWEEN 1 AND 5), source_id TEXT REFERENCES sources(id),
 confidence TEXT NOT NULL, verification TEXT NOT NULL, reported_at TEXT, recorded_at TEXT NOT NULL,
 note TEXT NOT NULL, CHECK(valid_from IS NULL OR valid_to IS NULL OR valid_from<=valid_to)
);
CREATE TABLE identity_checks (
 id TEXT PRIMARY KEY, person_id TEXT REFERENCES people(id), video_source_id TEXT REFERENCES sources(id),
 canonical_name TEXT, locator TEXT, status TEXT NOT NULL, verification_source_id TEXT REFERENCES sources(id),
 note TEXT NOT NULL, checked_at TEXT NOT NULL
);
CREATE INDEX events_person_time ON person_events(person_id,event_date);
CREATE INDEX periods_relation_time ON relationship_periods(relationship_id,valid_from,valid_to);
CREATE TABLE excluded_people (id TEXT PRIMARY KEY,name TEXT NOT NULL,reason TEXT NOT NULL,removed_at TEXT NOT NULL);
CREATE TABLE video_analyses (source_id TEXT PRIMARY KEY REFERENCES sources(id),video_id TEXT NOT NULL UNIQUE,title TEXT NOT NULL,summary TEXT NOT NULL,duration_seconds INTEGER NOT NULL,markdown_filename TEXT NOT NULL,markdown_text TEXT NOT NULL,created_at TEXT NOT NULL, locator_precision TEXT NOT NULL DEFAULT 'segment', new_person_ids_json TEXT NOT NULL DEFAULT '[]', ingest_note TEXT NOT NULL DEFAULT '');
CREATE TABLE video_segments (id TEXT PRIMARY KEY,source_id TEXT NOT NULL REFERENCES sources(id),start_seconds INTEGER NOT NULL CHECK(start_seconds>=0),end_seconds INTEGER NOT NULL CHECK(end_seconds>=start_seconds),title TEXT NOT NULL,summary TEXT NOT NULL,claim_type TEXT NOT NULL,verification TEXT NOT NULL,recorded_at TEXT NOT NULL);
CREATE TABLE segment_people (id TEXT PRIMARY KEY,segment_id TEXT NOT NULL REFERENCES video_segments(id),person_id TEXT NOT NULL REFERENCES people(id),UNIQUE(segment_id,person_id));
CREATE INDEX segments_source_time ON video_segments(source_id,start_seconds);
CREATE INDEX segments_person ON segment_people(person_id);
CREATE TRIGGER category_guard_insert BEFORE INSERT ON people WHEN NEW.category NOT IN ('官员','军方','商业','媒体','学者','演员','主持人','运动员','律师','歌手','其他名人') BEGIN SELECT RAISE(ABORT,'人物主标签不在职业标签目录'); END;
CREATE TRIGGER category_guard_update BEFORE UPDATE ON people WHEN NEW.category NOT IN ('官员','军方','商业','媒体','学者','演员','主持人','运动员','律师','歌手','其他名人') BEGIN SELECT RAISE(ABORT,'人物主标签不在职业标签目录'); END;
CREATE TABLE kinship_links (relationship_id TEXT PRIMARY KEY REFERENCES relationships(id),kind TEXT NOT NULL CHECK(kind IN ('parent_child','sibling','spouse','extended')), note TEXT NOT NULL DEFAULT '');
CREATE TABLE family_research (person_id TEXT PRIMARY KEY REFERENCES people(id),max_depth INTEGER NOT NULL DEFAULT 3 CHECK(max_depth BETWEEN 1 AND 3),status TEXT NOT NULL, note TEXT NOT NULL,updated_at TEXT NOT NULL);
CREATE TABLE site_settings (key TEXT PRIMARY KEY,value TEXT NOT NULL,updated_at TEXT NOT NULL);
