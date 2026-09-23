-- Canonical v9 schema. Empty database; use scripts/bootstrap.py for the current public data.
-- Generated from the authoritative SQLite database; do not hand-edit.
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
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
, visibility TEXT NOT NULL DEFAULT 'public' CHECK(visibility IN ('public','review','private','hidden')));
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
, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), observed_at TEXT, institution_id TEXT REFERENCES organizations(id));
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
, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), organization_id TEXT REFERENCES organizations(id), position_id TEXT REFERENCES positions(id), place_id TEXT REFERENCES places(id));
CREATE TABLE factions (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL UNIQUE,
 definition TEXT NOT NULL,
 note TEXT
, faction_type TEXT NOT NULL DEFAULT '待分类', core_person_id TEXT REFERENCES people(id), source_id TEXT REFERENCES sources(id), status TEXT NOT NULL DEFAULT '待核实', updated_at TEXT, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')));
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
, membership_role TEXT, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), observed_at TEXT);
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
 updated_at TEXT NOT NULL, affinity_scope TEXT NOT NULL DEFAULT '未评估', statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), observed_at TEXT, relationship_type_code TEXT, person_a_role TEXT, person_b_role TEXT,
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
, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')));
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
 updated_at TEXT NOT NULL, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')),
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
CREATE TABLE person_events (
 id TEXT PRIMARY KEY, person_id TEXT NOT NULL REFERENCES people(id),
 event_type TEXT NOT NULL, title TEXT NOT NULL, event_date TEXT, end_date TEXT,
 date_precision TEXT NOT NULL CHECK(date_precision IN ('day','month','year','unknown')),
 verification TEXT NOT NULL CHECK(verification IN ('公开证据支持','主播说法待核实','预测','有争议')),
 status_dimension TEXT, status_value TEXT, source_id TEXT NOT NULL REFERENCES sources(id),
 claimant_person_id TEXT REFERENCES people(id), locator TEXT, reported_at TEXT,
 recorded_at TEXT NOT NULL, note TEXT NOT NULL, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), observed_at TEXT, event_id TEXT REFERENCES events(id),
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
 note TEXT NOT NULL, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), start_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(start_precision IN ('year','month','day','unknown')), end_precision TEXT NOT NULL DEFAULT 'unknown' CHECK(end_precision IN ('year','month','day','unknown')), end_state TEXT NOT NULL DEFAULT 'unknown' CHECK(end_state IN ('known','unknown','ongoing','not_applicable')), time_basis TEXT NOT NULL DEFAULT 'unknown' CHECK(time_basis IN ('actual','reported_occurrence','public_record_window','release_date','unknown')), observed_at TEXT, claim_series_id TEXT, relationship_state TEXT NOT NULL DEFAULT 'recorded', assessment_method TEXT, assessor_user_id TEXT REFERENCES platform_users(id), CHECK(valid_from IS NULL OR valid_to IS NULL OR valid_from<=valid_to)
);
CREATE TABLE identity_checks (
 id TEXT PRIMARY KEY, person_id TEXT REFERENCES people(id), video_source_id TEXT REFERENCES sources(id),
 canonical_name TEXT, locator TEXT, status TEXT NOT NULL, verification_source_id TEXT REFERENCES sources(id),
 note TEXT NOT NULL, checked_at TEXT NOT NULL
);
CREATE TABLE excluded_people (id TEXT PRIMARY KEY,name TEXT NOT NULL,reason TEXT NOT NULL,removed_at TEXT NOT NULL);
CREATE TABLE video_segments (id TEXT PRIMARY KEY,source_id TEXT NOT NULL REFERENCES sources(id),start_seconds INTEGER NOT NULL CHECK(start_seconds>=0),end_seconds INTEGER NOT NULL CHECK(end_seconds>=start_seconds),title TEXT NOT NULL,summary TEXT NOT NULL,claim_type TEXT NOT NULL,verification TEXT NOT NULL,recorded_at TEXT NOT NULL, statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')));
CREATE TABLE segment_people (id TEXT PRIMARY KEY,segment_id TEXT NOT NULL REFERENCES video_segments(id),person_id TEXT NOT NULL REFERENCES people(id),UNIQUE(segment_id,person_id));
CREATE TABLE kinship_links (relationship_id TEXT PRIMARY KEY REFERENCES relationships(id),kind TEXT NOT NULL CHECK(kind IN ('parent_child','sibling','spouse','extended')), note TEXT NOT NULL DEFAULT '');
CREATE TABLE family_research (person_id TEXT PRIMARY KEY REFERENCES people(id),max_depth INTEGER NOT NULL DEFAULT 3 CHECK(max_depth BETWEEN 1 AND 3),status TEXT NOT NULL, note TEXT NOT NULL,updated_at TEXT NOT NULL);
CREATE TABLE site_settings (key TEXT PRIMARY KEY,value TEXT NOT NULL,updated_at TEXT NOT NULL);
CREATE TABLE "people" (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL,
 category TEXT NOT NULL,
 is_subject INTEGER NOT NULL DEFAULT 0 CHECK(is_subject IN (0,1)),
 aliases_json TEXT NOT NULL DEFAULT '[]',
 identity_note TEXT,
 highest_education_id TEXT REFERENCES education(id) DEFERRABLE INITIALLY DEFERRED,
 highest_appointment_id TEXT REFERENCES appointments(id) DEFERRABLE INITIALLY DEFERRED,
 profile_status TEXT NOT NULL DEFAULT '待补充',
 updated_at TEXT NOT NULL
, primary_faction_id TEXT REFERENCES factions(id), statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), disambiguation TEXT NOT NULL DEFAULT '', created_at TEXT, record_status TEXT NOT NULL DEFAULT 'active' CHECK(record_status IN ('active','identity_pending','merged','hidden')), merged_into_id TEXT REFERENCES people(id), primary_classification_id TEXT REFERENCES classifications(id), portrait_asset_id TEXT REFERENCES assets(id));
CREATE TABLE "video_analyses" (source_id TEXT PRIMARY KEY REFERENCES sources(id),video_id TEXT NOT NULL UNIQUE,title TEXT NOT NULL,summary TEXT NOT NULL,duration_seconds INTEGER,markdown_filename TEXT NOT NULL,markdown_text TEXT NOT NULL,created_at TEXT NOT NULL, locator_precision TEXT NOT NULL DEFAULT 'segment', new_person_ids_json TEXT NOT NULL DEFAULT '[]', ingest_note TEXT NOT NULL DEFAULT '', statement_id TEXT REFERENCES statements(id), revision_id TEXT REFERENCES statement_revisions(id), claim_kind TEXT NOT NULL DEFAULT 'unassessed' CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')), verification_status TEXT NOT NULL DEFAULT 'unassessed' CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')), coverage_status TEXT NOT NULL DEFAULT 'structured' CHECK(coverage_status IN ('structured','legacy_excerpt')));
CREATE TABLE schema_migrations(version INTEGER PRIMARY KEY,applied_at TEXT NOT NULL,description TEXT NOT NULL,baseline_counts_json TEXT NOT NULL CHECK(json_valid(baseline_counts_json)));
CREATE TABLE platform_users(id TEXT PRIMARY KEY,display_name TEXT NOT NULL,auth_subject TEXT UNIQUE,account_kind TEXT NOT NULL CHECK(account_kind IN ('human','system')),created_at TEXT NOT NULL,disabled_at TEXT);
CREATE TABLE user_roles(user_id TEXT NOT NULL REFERENCES platform_users(id),role TEXT NOT NULL CHECK(role IN ('contributor','reviewer','admin','migration')),PRIMARY KEY(user_id,role));
CREATE TABLE statements(
 id TEXT PRIMARY KEY,entity_table TEXT NOT NULL,entity_id TEXT NOT NULL,
 current_revision_id TEXT,visibility TEXT NOT NULL CHECK(visibility IN ('public','review','private','hidden')),
 created_at TEXT NOT NULL,UNIQUE(entity_table,entity_id),
 FOREIGN KEY(id,current_revision_id) REFERENCES statement_revisions(statement_id,id) DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE statement_revisions(
 id TEXT PRIMARY KEY,statement_id TEXT NOT NULL REFERENCES statements(id),version INTEGER NOT NULL CHECK(version>0),
 parent_revision_id TEXT,content_json TEXT NOT NULL CHECK(json_valid(content_json)),
 claim_kind TEXT NOT NULL CHECK(claim_kind IN ('record','self_report','reported_claim','opinion','prediction','mixed','unassessed')),
 verification_status TEXT NOT NULL CHECK(verification_status IN ('supported','unverified','disputed','refuted','unassessed')),
 author_user_id TEXT REFERENCES platform_users(id),created_at TEXT NOT NULL,legacy_status TEXT,change_reason TEXT NOT NULL,
 UNIQUE(statement_id,version),UNIQUE(statement_id,id),
 FOREIGN KEY(statement_id,parent_revision_id) REFERENCES statement_revisions(statement_id,id) DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE revision_publications(revision_id TEXT PRIMARY KEY REFERENCES statement_revisions(id),published_at TEXT NOT NULL,retired_at TEXT,publication_kind TEXT NOT NULL CHECK(publication_kind IN ('legacy_import','reviewed','maintainer')),CHECK(retired_at IS NULL OR retired_at>=published_at));
CREATE TABLE change_requests(id TEXT PRIMARY KEY,submitted_by TEXT REFERENCES platform_users(id),state TEXT NOT NULL CHECK(state IN ('draft','submitted','needs_changes','approved','rejected','withdrawn')),reason TEXT NOT NULL,created_at TEXT NOT NULL,submitted_at TEXT,idempotency_key TEXT UNIQUE);
CREATE TABLE change_request_items(request_id TEXT NOT NULL REFERENCES change_requests(id),statement_id TEXT NOT NULL REFERENCES statements(id),base_revision_id TEXT REFERENCES statement_revisions(id),proposed_revision_id TEXT NOT NULL REFERENCES statement_revisions(id),PRIMARY KEY(request_id,statement_id));
CREATE TABLE review_decisions(id TEXT PRIMARY KEY,request_id TEXT REFERENCES change_requests(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),reviewer_id TEXT REFERENCES platform_users(id),decision TEXT NOT NULL CHECK(decision IN ('approve','reject','needs_changes','legacy_import','maintainer_publish')),reason TEXT NOT NULL,decided_at TEXT NOT NULL);
CREATE TABLE votes(user_id TEXT NOT NULL REFERENCES platform_users(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),dimension TEXT NOT NULL CHECK(dimension IN ('helpful','needs_evidence')),value INTEGER NOT NULL CHECK(value IN (-1,1)),created_at TEXT NOT NULL,updated_at TEXT NOT NULL,PRIMARY KEY(user_id,revision_id,dimension));
CREATE TABLE discussion_comments(id TEXT PRIMARY KEY,revision_id TEXT NOT NULL REFERENCES statement_revisions(id),author_user_id TEXT NOT NULL REFERENCES platform_users(id),body TEXT NOT NULL,created_at TEXT NOT NULL,hidden_at TEXT);
CREATE TABLE audit_events(id INTEGER PRIMARY KEY,actor_user_id TEXT REFERENCES platform_users(id),action TEXT NOT NULL,entity_type TEXT NOT NULL,entity_id TEXT NOT NULL,request_id TEXT REFERENCES change_requests(id),details_json TEXT NOT NULL CHECK(json_valid(details_json)),created_at TEXT NOT NULL);
CREATE TABLE publication_context(id INTEGER PRIMARY KEY CHECK(id=1),reason TEXT NOT NULL);
CREATE TABLE person_names(id TEXT PRIMARY KEY,person_id TEXT NOT NULL REFERENCES people(id),name TEXT NOT NULL,name_type TEXT NOT NULL CHECK(name_type IN ('canonical','alias','pen_name','former')),language TEXT NOT NULL DEFAULT 'zh',source_id TEXT REFERENCES sources(id),revision_id TEXT NOT NULL REFERENCES statement_revisions(id),UNIQUE(person_id,name,name_type));
CREATE TABLE external_identifiers(id TEXT PRIMARY KEY,person_id TEXT NOT NULL REFERENCES people(id),provider TEXT NOT NULL,external_id TEXT NOT NULL,source_id TEXT NOT NULL REFERENCES sources(id),UNIQUE(provider,external_id));
CREATE TABLE person_merge_events(id TEXT PRIMARY KEY,source_person_id TEXT NOT NULL REFERENCES people(id),target_person_id TEXT NOT NULL REFERENCES people(id),reviewer_id TEXT REFERENCES platform_users(id),reason TEXT NOT NULL,moved_references_json TEXT NOT NULL CHECK(json_valid(moved_references_json)),created_at TEXT NOT NULL,CHECK(source_person_id!=target_person_id));
CREATE TABLE organizations(id TEXT PRIMARY KEY,name TEXT NOT NULL,organization_type TEXT NOT NULL DEFAULT 'unclassified',identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')),note TEXT NOT NULL);
CREATE TABLE positions(id TEXT PRIMARY KEY,name TEXT NOT NULL,organization_id TEXT REFERENCES organizations(id),rank_code TEXT,identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')));
CREATE TABLE places(id TEXT PRIMARY KEY,name TEXT NOT NULL,place_type TEXT NOT NULL DEFAULT 'unclassified',identity_status TEXT NOT NULL CHECK(identity_status IN ('label_only','resolved')));
CREATE TABLE organization_history(id TEXT PRIMARY KEY,organization_id TEXT NOT NULL REFERENCES organizations(id),name TEXT,parent_organization_id TEXT REFERENCES organizations(id),valid_from TEXT,valid_to TEXT,source_id TEXT NOT NULL REFERENCES sources(id));
CREATE TABLE place_history(id TEXT PRIMARY KEY,place_id TEXT NOT NULL REFERENCES places(id),name TEXT,parent_place_id TEXT REFERENCES places(id),valid_from TEXT,valid_to TEXT,source_id TEXT NOT NULL REFERENCES sources(id));
CREATE TABLE source_versions(id TEXT PRIMARY KEY,source_id TEXT NOT NULL REFERENCES sources(id),metadata_json TEXT NOT NULL CHECK(json_valid(metadata_json)),metadata_sha256 TEXT NOT NULL,content_sha256 TEXT,recorded_at TEXT NOT NULL,accessed_at TEXT,version_note TEXT NOT NULL,UNIQUE(source_id,metadata_sha256));
CREATE TABLE source_derivations(derived_source_id TEXT NOT NULL REFERENCES sources(id),origin_source_id TEXT NOT NULL REFERENCES sources(id),derivation_type TEXT NOT NULL CHECK(derivation_type IN ('reprint','excerpt','retelling','translation','alternate_version')),note TEXT NOT NULL,PRIMARY KEY(derived_source_id,origin_source_id),CHECK(derived_source_id!=origin_source_id));
CREATE TABLE source_passages(id TEXT PRIMARY KEY,source_version_id TEXT NOT NULL REFERENCES source_versions(id),locator_type TEXT NOT NULL CHECK(locator_type IN ('video_segment','video_chapter','text_locator','whole_source','page','section')),locator_text TEXT,start_seconds INTEGER,end_seconds INTEGER,page_number TEXT,summary TEXT,segment_id TEXT REFERENCES video_segments(id),CHECK(start_seconds IS NULL OR start_seconds>=0),CHECK(end_seconds IS NULL OR (start_seconds IS NOT NULL AND end_seconds>=start_seconds)));
CREATE TABLE citations(id TEXT PRIMARY KEY,revision_id TEXT NOT NULL REFERENCES statement_revisions(id),passage_id TEXT NOT NULL REFERENCES source_passages(id),stance TEXT NOT NULL CHECK(stance IN ('supports','challenges','context')),claimant_person_id TEXT REFERENCES people(id),claimant_label TEXT,summary TEXT NOT NULL,legacy_evidence_id TEXT REFERENCES relationship_evidence(id));
CREATE TABLE assets(id TEXT PRIMARY KEY,person_id TEXT REFERENCES people(id),storage_key TEXT,source_url TEXT,original_url TEXT,kind TEXT NOT NULL,license_text TEXT,license_url TEXT,accessed_at TEXT,visibility TEXT NOT NULL CHECK(visibility IN ('public','review','private','hidden')),redistribution_status TEXT NOT NULL CHECK(redistribution_status IN ('unreviewed','permitted','restricted')),metadata_json TEXT NOT NULL CHECK(json_valid(metadata_json)));
CREATE TABLE events(id TEXT PRIMARY KEY,title TEXT NOT NULL,event_type TEXT NOT NULL,event_date TEXT,end_date TEXT,date_precision TEXT NOT NULL);
CREATE TABLE event_participants(event_id TEXT NOT NULL REFERENCES events(id),person_id TEXT NOT NULL REFERENCES people(id),role TEXT NOT NULL,statement_id TEXT NOT NULL REFERENCES statements(id),PRIMARY KEY(event_id,person_id,statement_id));
CREATE TABLE review_findings(id TEXT PRIMARY KEY,entity_table TEXT NOT NULL,entity_id TEXT NOT NULL,code TEXT NOT NULL,severity TEXT NOT NULL CHECK(severity IN ('info','review','error')),status TEXT NOT NULL CHECK(status IN ('open','resolved','accepted_unknown')),note TEXT NOT NULL,source_id TEXT REFERENCES sources(id),created_at TEXT NOT NULL);
CREATE TABLE person_review_results(person_id TEXT PRIMARY KEY REFERENCES people(id),reviewed_at TEXT NOT NULL,scope TEXT NOT NULL,identity_assessment TEXT NOT NULL CHECK(identity_assessment IN ('existing_external_reference','source_context_only','pending_identity')),source_ids_json TEXT NOT NULL CHECK(json_valid(source_ids_json)),analysis_files_json TEXT NOT NULL CHECK(json_valid(analysis_files_json)),findings_json TEXT NOT NULL CHECK(json_valid(findings_json)));
CREATE TABLE manuscript_reviews(source_id TEXT PRIMARY KEY REFERENCES sources(id),filename TEXT NOT NULL,sha256 TEXT NOT NULL,review_scope TEXT NOT NULL,reviewed_at TEXT NOT NULL);
CREATE INDEX appointments_by_person ON appointments(person_id,start_date);
CREATE INDEX relations_by_a ON relationships(person_a_id);
CREATE INDEX relations_by_b ON relationships(person_b_id);
CREATE INDEX evidence_by_relation ON relationship_evidence(relationship_id);
CREATE INDEX memberships_by_person ON faction_memberships(person_id);
CREATE INDEX classifications_by_person ON person_classifications(person_id);
CREATE INDEX events_person_time ON person_events(person_id,event_date);
CREATE INDEX periods_relation_time ON relationship_periods(relationship_id,valid_from,valid_to);
CREATE INDEX segments_source_time ON video_segments(source_id,start_seconds);
CREATE INDEX segments_person ON segment_people(person_id);
CREATE INDEX person_names_search ON person_names(name);
CREATE INDEX organizations_name ON organizations(name);
CREATE INDEX passages_by_source ON source_passages(source_version_id,start_seconds);
CREATE INDEX citations_by_revision ON citations(revision_id);
CREATE INDEX revisions_statement ON statement_revisions(statement_id,version);
CREATE INDEX requests_queue ON change_requests(state,created_at);
CREATE INDEX decisions_revision ON review_decisions(revision_id,decided_at);
CREATE INDEX findings_entity ON review_findings(entity_table,entity_id,status);
CREATE INDEX people_name_search ON people(name);
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
CREATE VIEW current_relationship_evidence AS
            SELECT c.id,s.entity_id AS relationship_id,v.source_id,c.claimant_person_id,
                   c.claimant_label,p.locator_text AS locator,
                   CASE c.stance WHEN 'supports' THEN '支持' WHEN 'challenges' THEN '质疑' ELSE '背景' END AS stance,
                   c.summary,r.verification_status AS status,r.created_at AS updated_at
            FROM statements s JOIN statement_revisions r ON r.id=s.current_revision_id
            JOIN citations c ON c.revision_id=r.id JOIN source_passages p ON p.id=c.passage_id
            JOIN source_versions v ON v.id=p.source_version_id
            WHERE s.entity_table='relationships' AND s.visibility='public';
CREATE TRIGGER category_guard_insert BEFORE INSERT ON people WHEN NEW.category NOT IN (SELECT name FROM classifications) BEGIN SELECT RAISE(ABORT,'Unknown primary category'); END;
CREATE TRIGGER category_guard_update BEFORE UPDATE ON people WHEN NEW.category NOT IN (SELECT name FROM classifications) BEGIN SELECT RAISE(ABORT,'Unknown primary category'); END;
CREATE TRIGGER protect_people_insert BEFORE INSERT ON people WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_people_update BEFORE UPDATE ON people WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_people_delete BEFORE DELETE ON people WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_education_insert BEFORE INSERT ON education WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_education_update BEFORE UPDATE ON education WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_education_delete BEFORE DELETE ON education WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_appointments_insert BEFORE INSERT ON appointments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_appointments_update BEFORE UPDATE ON appointments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_appointments_delete BEFORE DELETE ON appointments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationships_insert BEFORE INSERT ON relationships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationships_update BEFORE UPDATE ON relationships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationships_delete BEFORE DELETE ON relationships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationship_periods_insert BEFORE INSERT ON relationship_periods WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationship_periods_update BEFORE UPDATE ON relationship_periods WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_relationship_periods_delete BEFORE DELETE ON relationship_periods WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_events_insert BEFORE INSERT ON person_events WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_events_update BEFORE UPDATE ON person_events WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_events_delete BEFORE DELETE ON person_events WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_observations_insert BEFORE INSERT ON observations WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_observations_update BEFORE UPDATE ON observations WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_observations_delete BEFORE DELETE ON observations WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_faction_memberships_insert BEFORE INSERT ON faction_memberships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_faction_memberships_update BEFORE UPDATE ON faction_memberships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_faction_memberships_delete BEFORE DELETE ON faction_memberships WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_classifications_insert BEFORE INSERT ON person_classifications WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_classifications_update BEFORE UPDATE ON person_classifications WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_person_classifications_delete BEFORE DELETE ON person_classifications WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_analyses_insert BEFORE INSERT ON video_analyses WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_analyses_update BEFORE UPDATE ON video_analyses WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_analyses_delete BEFORE DELETE ON video_analyses WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_segments_insert BEFORE INSERT ON video_segments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_segments_update BEFORE UPDATE ON video_segments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_video_segments_delete BEFORE DELETE ON video_segments WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_factions_insert BEFORE INSERT ON factions WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_factions_update BEFORE UPDATE ON factions WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER protect_factions_delete BEFORE DELETE ON factions WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the v9 submission/publication API'); END;
CREATE TRIGGER immutable_statement_revisions_update BEFORE UPDATE ON statement_revisions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_statement_revisions_delete BEFORE DELETE ON statement_revisions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_citations_update BEFORE UPDATE ON citations BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_citations_delete BEFORE DELETE ON citations BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_source_versions_update BEFORE UPDATE ON source_versions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_source_versions_delete BEFORE DELETE ON source_versions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_source_passages_update BEFORE UPDATE ON source_passages BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_source_passages_delete BEFORE DELETE ON source_passages BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_review_decisions_update BEFORE UPDATE ON review_decisions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_review_decisions_delete BEFORE DELETE ON review_decisions BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_audit_events_update BEFORE UPDATE ON audit_events BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER immutable_audit_events_delete BEFORE DELETE ON audit_events BEGIN SELECT RAISE(ABORT,'Immutable history: create a new revision'); END;
CREATE TRIGGER citation_frozen BEFORE INSERT ON citations WHEN EXISTS(SELECT 1 FROM revision_publications WHERE revision_id=NEW.revision_id) BEGIN SELECT RAISE(ABORT,'Citations for published revisions are immutable'); END;
CREATE TRIGGER protect_statements_update BEFORE UPDATE ON statements WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the publication API'); END;
CREATE TRIGGER protect_statements_delete BEFORE DELETE ON statements WHEN NOT EXISTS(SELECT 1 FROM publication_context WHERE id=1) BEGIN SELECT RAISE(ABORT,'Use the publication API'); END;
PRAGMA user_version=9;
COMMIT;
PRAGMA foreign_keys=ON;
