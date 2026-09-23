BEGIN TRANSACTION;
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
INSERT INTO "appointments" VALUES('a_001','p_ye','1984-08',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','上海','上海勘测设计研究院规划处','工作人员',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_002','p_ye','1991-04',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','上海','上海勘测设计研究院','先后任副处长、处长、院长助理（分段时间待补）',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_003','p_ye','1999-09',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','上海','上海勘测设计研究院','副院长',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_004','p_ye','2003-12',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','上海','上海勘测设计研究院','院长、党委副书记',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_005','p_ye','2005-06',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','太湖流域','水利部太湖流域管理局','局长、党组书记',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_006','p_ye','2016-06',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','中央','水利部财务司','司长',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_007','p_ye','2017-02','2021-02','按来源时间精度记录；结束时间空值不代表仍在任。','中央','水利部','副部长、党组成员',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_008','p_ye','2017-07','2020-03','按来源时间精度记录；结束时间空值不代表仍在任。','全国','国家防汛抗旱总指挥部','秘书长',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_009','p_ye','2018-03','2020-01','按来源时间精度记录；结束时间空值不代表仍在任。','中央','应急管理部','副部长、党组成员（兼任）',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_010','p_ye','2021-02',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','江西','中共江西省委','副书记',NULL,'ye_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_011','p_ye','2021-10',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','江西','中共江西省委／江西省政府','省委副书记、省政府党组书记、副省长、代理省长',NULL,'ye_2021','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_012','p_ye','2022-01-20',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','江西','江西省人民政府','省长','2022-01-20','ye_governor','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_013','p_xi','1969','1975','按来源时间精度记录；结束时间空值不代表仍在任。','陕西延川','梁家河大队','知青、党支部书记（分段时间未详）',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_014','p_xi','1979','1982','按来源时间精度记录；结束时间空值不代表仍在任。','中央','国务院办公厅、中央军委办公厅','秘书（现役）',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_015','p_xi','1982','1983','按来源时间精度记录；结束时间空值不代表仍在任。','河北正定','中共正定县委','副书记',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_016','p_xi','1983','1985','按来源时间精度记录；结束时间空值不代表仍在任。','河北正定','中共正定县委','书记',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_017','p_xi','1985','1988','按来源时间精度记录；结束时间空值不代表仍在任。','福建厦门','厦门市委、市政府','市委常委、副市长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_018','p_xi','1988','1990','按来源时间精度记录；结束时间空值不代表仍在任。','福建宁德','中共宁德地委','书记',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_019','p_xi','1990','1993','按来源时间精度记录；结束时间空值不代表仍在任。','福建福州','福州市委、市人大常委会','市委书记、市人大常委会主任',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_020','p_xi','1993','1995','按来源时间精度记录；结束时间空值不代表仍在任。','福建／福州','福建省委、福州市委、市人大常委会','省委常委、福州市委书记、市人大常委会主任',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_021','p_xi','1995','1996','按来源时间精度记录；结束时间空值不代表仍在任。','福建／福州','福建省委、福州市委、市人大常委会','省委副书记、福州市委书记、市人大常委会主任',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_022','p_xi','1996','1999','按来源时间精度记录；结束时间空值不代表仍在任。','福建','中共福建省委','副书记',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_023','p_xi','1999','2000','按来源时间精度记录；结束时间空值不代表仍在任。','福建','福建省委、省政府','省委副书记、代省长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_024','p_xi','2000','2002','按来源时间精度记录；结束时间空值不代表仍在任。','福建','福建省委、省政府','省委副书记、省长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_025','p_xi','2002','2002','按来源时间精度记录；结束时间空值不代表仍在任。','浙江','浙江省委、省政府','省委副书记、代省长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_026','p_xi','2002','2003','按来源时间精度记录；结束时间空值不代表仍在任。','浙江','浙江省委、省政府','省委书记、代省长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_027','p_xi','2003','2007','按来源时间精度记录；结束时间空值不代表仍在任。','浙江','浙江省委、省人大常委会','省委书记、省人大常委会主任',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_028','p_xi','2007','2007','按来源时间精度记录；结束时间空值不代表仍在任。','上海','中共上海市委','书记',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_029','p_xi','2007','2008','按来源时间精度记录；结束时间空值不代表仍在任。','中央','中共中央、中央党校','中央政治局常委、中央书记处书记、中央党校校长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_030','p_xi','2008','2010','按来源时间精度记录；结束时间空值不代表仍在任。','中央','中共中央、国家、中央党校','中央政治局常委、中央书记处书记、国家副主席、中央党校校长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_031','p_xi','2010','2012','按来源时间精度记录；结束时间空值不代表仍在任。','中央','中共中央、国家、党和国家中央军委、中央党校','中央政治局常委、中央书记处书记、国家副主席、党和国家中央军委副主席、中央党校校长',NULL,'xi_bio','公开履历支持','主要党政职务摘要，未穷举该阶段全部军队兼任职务；年份不代表精确到日。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_032','p_xi','2012',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','中央','中共中央、中央军委','中共中央总书记、中共中央军委主席','2012-11-15','xi_bio','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_033','p_xi',NULL,NULL,'2023年3月履历确认持有这些职务，未将报道日期当作首次就任日期。','中央','中共中央、中华人民共和国、党和国家中央军委','中共中央总书记、国家主席、中共中央军委主席、国家中央军委主席','2023-03-10','xi_2023','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_034','p_chen','1984','1990','按来源时间精度记录；结束时间空值不代表仍在任。','福建宁德','宁德地委、宁德地区行政公署','地委副书记、行署专员',NULL,'chen_interview','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_035','p_chen','1990',NULL,'接续习近平任地委书记；起始年份据同篇履历上下文，准确月份待补；结束时间未详。','福建宁德','宁德地委、宁德地区行政公署','地委书记、行署专员',NULL,'chen_interview','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_036','p_chen','1995',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','福建','福建省政协','副主席',NULL,'chen_interview','公开履历支持','同篇记2003年退休；未将退休年份自动当作该岗位精确离任日期。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_037','p_zhong',NULL,NULL,'2018-09-18已以此职务出席活动；任命日期和离任日期尚未录入。','中央','中央军委办公厅','主任','2018-09-18','zhong_office','公开履历支持','最高岗位为目前收录记录中的代表岗位，不是已经穷尽其全生涯职位。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_038','p_zhong','2002',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','浙江','浙江省委相关办公室','习近平秘书',NULL,'zhong_media','媒体转述，待交叉核实','联合早报此段转引境外网站；不视为直接任免公告。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_039','p_zhong','2007',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','上海','上海市委办公厅','副主任',NULL,'zhong_media','媒体转述，待交叉核实','联合早报此段转引境外网站；不视为直接任免公告。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_040','p_zhong','2007',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','中央','中央办公厅调研室','政治组长',NULL,'zhong_media','媒体转述，待交叉核实','联合早报此段转引境外网站；不视为直接任免公告。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_041','p_dong',NULL,NULL,'按来源时间精度记录；结束时间空值不代表仍在任。',NULL,'海军司令部军训部','部长',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_042','p_dong',NULL,NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','北海舰队辖区','北海舰队','副参谋长',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_043','p_dong',NULL,NULL,'按来源时间精度记录；结束时间空值不代表仍在任。',NULL,'海军92269部队','司令员',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_044','p_dong','2013',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','东海舰队辖区','东海舰队','副司令员',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_045','p_dong','2014',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','海军','海军','副参谋长',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_046','p_dong','2017-03',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','南部战区辖区','南部战区','副司令员',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_047','p_dong','2021-08',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','海军','海军','司令员',NULL,'dong_media','媒体报道支持','具体任免日期及早期履历待进一步核实；2014年一项报道为年底，保留年精度。','2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_048','p_dong','2023-12-29',NULL,'按来源时间精度记录；结束时间空值不代表仍在任。','中央','中华人民共和国国防部','部长','2023-12-29','dong_appointment','公开履历支持',NULL,'2026-09-22T17:44:35-07:00');
INSERT INTO "appointments" VALUES('a_huang_pdd','p_huang',NULL,NULL,'仅确认2019年申报时已任职；不推定现职或准确起止时间。','中国／上海','Pinduoduo Inc.（拼多多）','创始人、董事长、首席执行官','2019-02-07','pdd_2019','公司申报履历支持',NULL,'2026-09-22T18:03:37-07:00');
INSERT INTO "appointments" VALUES('a_v3_tang','p_tangfeifan','2022-04-12',NULL,'保留来源日期精度；结束日期未知不代表仍在任。','浙江宁波','宁波市人民政府','市长',NULL,'tang_name','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_bai','p_baishaokang','2017-06',NULL,'保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央政法委员会','副秘书长',NULL,'bai_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_meng','p_mengjianzhu','2012','2017','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央政法委员会','书记',NULL,'identity_p_mengjianzhu','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_lin','p_linwu','2022-12',NULL,'保留来源日期精度；结束日期未知不代表仍在任。','山东','中共山东省委','书记',NULL,'lin_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_tangd','p_tangdengjie','2023-10',NULL,'保留来源日期精度；结束日期未知不代表仍在任。','山西','中共山西省委','书记',NULL,'tangd_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_wangx','p_wangxinwei','2025-03-31',NULL,'保留来源日期精度；结束日期未知不代表仍在任。','辽宁','辽宁省人民政府','省长',NULL,'wangx_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_zou','p_zoujinsong',NULL,NULL,'保留来源日期精度；结束日期未知不代表仍在任。','中国','中央港澳办／国务院港澳办三局','局长','2025-11-12','zou_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_li','p_lizhiyuan',NULL,NULL,'保留来源日期精度；结束日期未知不代表仍在任。','陕西','陕西省民政厅','党组书记、厅长','2024-11-26','li_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_hu_chair','p_huyaobang','1981-06','1982-09','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央','主席',NULL,'hu_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_hu_sec','p_huyaobang','1982-09','1987-01-16','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央','总书记',NULL,'hu_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_hu_pb','p_huyaobang','1987-11','1989-04-15','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央政治局','委员',NULL,'hu_bio','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_zhao_sec','p_zhaoziyang','1987','1989','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央','总书记',NULL,'zhao_history','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_zhao_pm','p_zhaoziyang','1980','1987','保留来源日期精度；结束日期未知不代表仍在任。','中国','国务院','总理',NULL,'zhao_history','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_huj','p_hujintao','2002','2012','保留来源日期精度；结束日期未知不代表仍在任。','中国','中共中央','总书记',NULL,'identity_p_hujintao','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v3_wen','p_wenjiabao',NULL,NULL,'保留来源日期精度；结束日期未知不代表仍在任。','中国','国务院','总理',NULL,'identity_p_wenjiabao','公开资料支持',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_xujiayin_0','p_xujiayin',NULL,'1992','未确认起止日期保持空值；资料页观察日不是任职开始日。','河南舞阳','舞阳钢铁公司','热处理车间主任',NULL,'v4_identity_p_xujiayin','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_xujiayin_1','p_xujiayin','1996',NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','广东广州','广州恒大实业有限公司','创办人',NULL,'v4_identity_p_xujiayin','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_wangshi_0','p_wangshi','1999','2017','未确认起止日期保持空值；资料页观察日不是任职开始日。','广东深圳','万科','董事会主席',NULL,'v4_identity_p_wangshi','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_yuliang_0','p_yuliang','2017-06-30',NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','广东深圳','万科','董事会主席','2017-07-12','v4_vanke2017','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_sunhongbin_0','p_sunhongbin',NULL,NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','中国','融创中国','创始人、董事会主席兼执行董事','2026-09-22','v4_identity_p_sunhongbin','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_ninggaoning_0','p_ninggaoning',NULL,NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','中国','中国中化','党组书记、董事长','2022-06-29','v4_identity_p_ninggaoning','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_zhengyutong_0','p_zhengyutong',NULL,NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','香港','新世界发展','主席','2008-07-01','v4_identity_p_zhengyutong','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_zhangsongqiao_0','p_zhangsongqiao',NULL,NULL,'未确认起止日期保持空值；资料页观察日不是任职开始日。','香港','中渝置地','执行董事','2026-09-22','v4_identity_p_zhangsongqiao','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_v4_p_lijiacheng_0','p_lijiacheng',NULL,'2018','未确认起止日期保持空值；资料页观察日不是任职开始日。','香港','长江集团','主席',NULL,'v4_identity_p_lijiacheng','公开资料支持',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_wangjianlin_0','p_wangjianlin','1988',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。','大连／北京','万达集团','董事长',NULL,'ic8_wangjianlin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_0','p_jiaqinglin','1978','1983','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中国机械设备进出口总公司','总经理',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_1','p_jiaqinglin','1983','1985','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'太原重型机器厂','厂长、党委书记',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_2','p_jiaqinglin','1985','1991','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共福建省委','副书记',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_3','p_jiaqinglin','1991','1993','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'福建省人民政府','省长',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_4','p_jiaqinglin','1993','1996','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共福建省委','书记',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_5','p_jiaqinglin','1996','1997','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'北京市人民政府','市长',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_6','p_jiaqinglin','1997','2002','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共北京市委','书记',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiaqinglin_7','p_jiaqinglin','2003','2013','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'全国政协','主席',NULL,'ic8_jiaqinglin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_yuzhengsheng_0','p_yuzhengsheng','2013-03-11',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'全国政协','主席','2013-03-11','ic8_yuzhengsheng','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_0','p_jingjunhai','2008','2012','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'陕西省人民政府','副省长','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_1','p_jingjunhai','2012-05','2015-06','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共陕西省委','常委、宣传部部长','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_2','p_jingjunhai','2015-06','2017-04','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共中央宣传部','副部长','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_3','p_jingjunhai','2017-04','2017-12','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共北京市委','副书记','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_4','p_jingjunhai','2018','2020-11','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'吉林省人民政府','省长','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jingjunhai_5','p_jingjunhai','2020-11',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共吉林省委','书记','2020-11-25','ic8_jingjunhai','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiafeng_shaanxi_0','p_jiafeng_shaanxi','2019-09-05',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。','陕西','陕西省人民政府','副秘书长',NULL,'ic8_jiafeng2019','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiafeng_shaanxi_1','p_jiafeng_shaanxi',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。','陕西','陕西省商务厅','党组书记','2024-01-12','ic8_jiafeng_shaanxi','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiazhiguo_shaanxi_0','p_jiazhiguo_shaanxi',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。','陕西','陕西省委第四巡视组','组长','2021-02-22','ic8_jiazhiguo_shaanxi','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiazhibang_0','p_jiazhibang',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'国家林业局','局长','2010-06-08','ic8_jiazhibang','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_zhangjun_funde_0','p_zhangjun_funde',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'富德保险控股','董事长','2026-09-23','ic8_zhangjun_funde','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_jiafalin_0','p_jiafalin',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。','河北沧州','中共沧州市委','常委、宣传部部长','2025-04-28','ic8_jiafalin','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_lijianguo_0','p_lijianguo','1997','2007','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共陕西省委','书记','2013-03-18','ic8_lijianguo','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_lijianguo_1','p_lijianguo','2007','2008','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共山东省委','书记','2013-03-18','ic8_lijianguo','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_lijianguo_2','p_lijianguo','2008','2013','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'全国人大常委会','副委员长兼秘书长','2013-03-18','ic8_lijianguo','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_lijianguo_3','p_lijianguo','2013',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'全国人大常委会','副委员长','2013-03-18','ic8_lijianguo','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_liumingkang_0','p_liumingkang','2003','2011','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中国银监会','主席',NULL,'ic8_liumingkang','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_gaohucheng_0','p_gaohucheng','1997','2002','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'外经贸部','部长助理',NULL,'ic8_gaohucheng','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_gaohucheng_1','p_gaohucheng','2002','2003','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'广西壮族自治区人民政府','副主席',NULL,'ic8_gaohucheng','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_gaohucheng_2','p_gaohucheng','2003-11','2013-03','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'商务部','副部长',NULL,'ic8_gaohucheng','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_gaohucheng_3','p_gaohucheng','2013-03',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'商务部','部长','2013-03','ic8_gaohucheng','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_caifuchao_0','p_caifuchao','2000','2002','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'北京市委办公厅','常务副主任、副秘书长',NULL,'ic8_caifuchao','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_caifuchao_1','p_caifuchao','2002','2011','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中共北京市委','宣传部部长',NULL,'ic8_caifuchao','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_caifuchao_2','p_caifuchao','2011','2013','空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'国家广播电影电视总局','局长',NULL,'ic8_caifuchao','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_caifuchao_3','p_caifuchao','2013',NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'国家新闻出版广电总局','局长','2013-03-20','ic8_caifuchao','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_tiening_0','p_tiening',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'中国文联','主席','2026-09-23','ic8_tiening','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_p_tiening_1','p_tiening',NULL,NULL,'空值表示未核起止；观察日不是上任日；不是保证截至今天仍在任。',NULL,'第十四届全国人大常委会','副委员长','2026-09-23','ic8_tiening','公开资料支持',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "appointments" VALUES('a_ic8_lin_official','p_linkeqing',NULL,NULL,'官方页面当前任职信息，具体上任日未在本页确认。','广东','广东省政协','主席、党组书记','2026-09-23','ic8_lin_official','公开资料支持',NULL,'2026-09-23T00:22:10-07:00');
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
INSERT INTO "classifications" VALUES('c_v4_0','政治','职业角色','统一人物主分类：政治；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_1','军事','职业角色','统一人物主分类：军事；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_2','商业','职业角色','统一人物主分类：商业；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_3','媒体','职业角色','统一人物主分类：媒体；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_4','学者','职业角色','统一人物主分类：学者；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_5','演员主持人','职业角色','统一人物主分类：演员主持人；圈层和立场另存，不作为分类或头像颜色。');
INSERT INTO "classifications" VALUES('c_v4_6','其他名人','职业角色','统一人物主分类：其他名人；圈层和立场另存，不作为分类或头像颜色。');
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
INSERT INTO "education" VALUES('e_ye_bachelor','p_ye','华东水利学院','水利水电建筑工程','大学本科',NULL,NULL,NULL,NULL,'ye_bio','公开履历支持','就读起止年份及学士学位未由本次来源确认。','2026-09-22T17:44:35-07:00');
INSERT INTO "education" VALUES('e_ye_doctor','p_ye','河海大学','水文学及水资源','在职研究生','工学博士','在职',NULL,NULL,'ye_bio','公开履历支持','博士学位及院校据ye_bio；在职研究生学历另由ye_level支持；不补造毕业年份。','2026-09-22T17:44:35-07:00');
INSERT INTO "education" VALUES('e_xi_college','p_xi','清华大学','基本有机合成',NULL,NULL,NULL,'1975','1979','xi_bio','公开履历支持','官方列学习经历；本条不自行换算为普通统招本科或推定学士学位。','2026-09-22T17:44:35-07:00');
INSERT INTO "education" VALUES('e_xi_doctor','p_xi','清华大学人文社会学院','马克思主义理论与思想政治教育','在职研究生','法学博士','在职','1998','2002','xi_bio','公开履历支持','起止年份及学位由官方履历支持。','2026-09-22T17:44:35-07:00');
INSERT INTO "education" VALUES('e_huang_bachelor','p_huang','浙江大学','计算机科学','大学本科','学士',NULL,NULL,NULL,'pdd_2019','公司申报履历支持','就读年份、学习方式及学位具体学科门类未补造；学历层次按文件所载学位归纳。','2026-09-22T18:03:37-07:00');
INSERT INTO "education" VALUES('e_huang_master','p_huang','威斯康星大学麦迪逊分校','计算机科学，侧重数据挖掘','研究生（硕士）','硕士',NULL,NULL,NULL,'pdd_2019','公司申报履历支持','就读年份、学习方式及学位具体学科门类未补造；学历层次按文件所载学位归纳。','2026-09-22T18:03:37-07:00');
INSERT INTO "education" VALUES('e_wang_bachelor','p_wang','北京理工大学',NULL,'大学本科','工学学士',NULL,NULL,NULL,'wang_campaign','候选人自述','金融进修未明确学位，不将其当作更高学历。','2026-09-22T22:18:22-07:00');
INSERT INTO "education" VALUES('e_v4_p_xujiayin','p_xujiayin','武汉钢铁学院（今武汉科技大学）',NULL,'本科',NULL,NULL,NULL,'1982','v4_identity_p_xujiayin','公开资料支持','未把荣誉博士或非学位课程算作最高学历。','2026-09-22T23:37:42-07:00');
INSERT INTO "education" VALUES('e_v4_p_wangshi','p_wangshi','兰州铁道学院',NULL,'本科',NULL,NULL,NULL,'1978','v4_identity_p_wangshi','公开资料支持','未把荣誉博士或非学位课程算作最高学历。','2026-09-22T23:37:42-07:00');
INSERT INTO "education" VALUES('e_v4_p_sunhongbin','p_sunhongbin','清华大学',NULL,'硕士研究生','工程学硕士',NULL,NULL,'1985','v4_identity_p_sunhongbin','公开资料支持','未把荣誉博士或非学位课程算作最高学历。','2026-09-22T23:37:42-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_jingtian','p_jingtian','北京电影学院',NULL,'本科',NULL,NULL,'2007',NULL,'ic8_jingtian','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_jiaqinglin','p_jiaqinglin','河北工学院',NULL,'大学本科',NULL,NULL,'1958','1962','ic8_jiaqinglin','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_lijianguo','p_lijianguo','山东大学',NULL,'大学本科',NULL,NULL,'1964','1969','ic8_lijianguo','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_jingjunhai','p_jingjunhai','西安电子科技大学',NULL,'硕士研究生','工学硕士','在职','1985','1988','ic8_jingjunhai','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_gaohucheng','p_gaohucheng','巴黎第七大学',NULL,'博士研究生','社会学博士',NULL,NULL,'1985','ic8_gaohucheng','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_liumingkang','p_liumingkang','伦敦城市大学',NULL,'硕士研究生','工商管理硕士',NULL,NULL,NULL,'ic8_liumingkang','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
INSERT INTO "education" VALUES('ed_ic8_p_tiening','p_tiening',NULL,NULL,'高中',NULL,NULL,NULL,NULL,'ic8_tiening','公开资料支持','不把荣誉学位视为学历；年月未知保持空值。','2026-09-23T00:17:15-07:00');
CREATE TABLE excluded_people (id TEXT PRIMARY KEY,name TEXT NOT NULL,reason TEXT NOT NULL,removed_at TEXT NOT NULL);
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
INSERT INTO "faction_memberships" VALUES('fm_p_xi_f_xi','p_xi','f_xi',NULL,NULL,NULL,NULL,'xi_2023',NULL,'分析分组核心','高','按命名核心建立研究分组，不声称存在正式派系组织。','2026-09-22T18:03:37-07:00','核心人物');
INSERT INTO "faction_memberships" VALUES('fm_p_zhong_f_xi','p_zhong','f_xi','2002',NULL,NULL,NULL,'zhong_media',NULL,'分析归属，待核实','中','依据媒体转述的秘书服务经历建立候选归属；不是独立确认的政治忠诚。','2026-09-22T18:03:37-07:00','可能关联人物');
INSERT INTO "faction_memberships" VALUES('fm_p_lu_f_lu','p_lu','f_lu',NULL,NULL,NULL,NULL,'video_UwwbGnDF5WA',NULL,'本期角色明确','高','本期主持人与用户确认身份一致。','2026-09-22T18:03:37-07:00','主播');
INSERT INTO "faction_memberships" VALUES('fm_p_tao_f_lu','p_tao','f_lu',NULL,NULL,NULL,NULL,'video_UwwbGnDF5WA','00:30；07:38；13:43–14:23','本期合作，非长期联盟','高','多次以陶老师称呼并交接问答；未来合作计划不等于已发生的长期合作。','2026-09-22T18:03:37-07:00','本期嘉宾');
INSERT INTO "faction_memberships" VALUES('fm_p_huang_f_pdd','p_huang','f_pdd',NULL,NULL,NULL,NULL,'pdd_2019','PDF物理页154','历史企业关系有来源','高','公司申报文件记载创始人身份；分组名称为研究用标签。','2026-09-22T18:03:37-07:00','创始人');
INSERT INTO "faction_memberships" VALUES('fm_p_liuzhongjing_f_liu','p_liuzhongjing','f_liu',NULL,NULL,NULL,NULL,'video_UwwbGnDF5WA','24:27–24:43','受众圈提及有来源','中','主播明确讨论刘仲敬及其粉丝；不推断具体组织或真实成员。','2026-09-22T18:03:37-07:00','核心创作者');
INSERT INTO "faction_memberships" VALUES('fm_p_hawking_f_cam','p_hawking','f_cam',NULL,'2018',NULL,NULL,'hawking_cam',NULL,'历史学术联系有来源','高','剑桥机构纪念文章确认其科学研究和科普贡献；不是政治归属。','2026-09-22T18:03:37-07:00','代表学者');
INSERT INTO "faction_memberships" VALUES('fm_p_sunge_f_tron','p_sunge','f_tron',NULL,NULL,NULL,NULL,'sun_official',NULL,'创始人身份有来源','高','本人官网确认TRON创始人身份；本视频昵称对应关系另由用户补充确认。','2026-09-22T18:09:50-07:00','创始人');
INSERT INTO "faction_memberships" VALUES('fm_v3_p_wang_f_advance','p_wang','f_advance','2026','2026',NULL,NULL,'wang_campaign',NULL,'公开资料支持','高','市议员候选人；归属依据及时间范围以所附来源为限。','2026-09-22T22:18:22-07:00','市议员候选人');
INSERT INTO "faction_memberships" VALUES('fm_v3_p_hexiangjian_f_midea','p_hexiangjian','f_midea',NULL,NULL,NULL,NULL,'identity_p_hexiangjian',NULL,'公开资料支持','高','创始人；归属依据及时间范围以所附来源为限。','2026-09-22T22:18:22-07:00','创始人');
INSERT INTO "faction_memberships" VALUES('fm_v3_p_mengjianzhu_f_meng','p_mengjianzhu','f_meng',NULL,NULL,NULL,NULL,'identity_p_mengjianzhu',NULL,'公开资料支持','高','命名核心；归属依据及时间范围以所附来源为限。','2026-09-22T22:18:22-07:00','命名核心');
INSERT INTO "faction_memberships" VALUES('fm_v3_p_baishaokang_f_meng','p_baishaokang','f_meng',NULL,NULL,NULL,NULL,'video_iUo_HMNIf54',NULL,'主播说法，待核实','低','主播所称关联人物；归属依据及时间范围以所附来源为限。','2026-09-22T22:18:22-07:00','主播所称关联人物');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_big_d_p_xujiayin','p_xujiayin','f_big_d',NULL,NULL,NULL,'p_lu','yt_oG93w6k-1DY','20:40–21:34','主播说法待核实','低','节目在20:40–21:34描述共同聚会；不表示每两位都已证明有直接关系。','2026-09-22T23:37:42-07:00','节目所述关联');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_big_d_p_zhengyutong','p_zhengyutong','f_big_d',NULL,NULL,NULL,'p_lu','yt_oG93w6k-1DY','20:40–21:34','主播说法待核实','低','节目在20:40–21:34描述共同聚会；不表示每两位都已证明有直接关系。','2026-09-22T23:37:42-07:00','节目所述关联');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_big_d_p_liuluanxiong','p_liuluanxiong','f_big_d',NULL,NULL,NULL,'p_lu','yt_oG93w6k-1DY','20:40–21:34','主播说法待核实','低','节目在20:40–21:34描述共同聚会；不表示每两位都已证明有直接关系。','2026-09-22T23:37:42-07:00','节目所述关联');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_big_d_p_zhangsongqiao','p_zhangsongqiao','f_big_d',NULL,NULL,NULL,'p_lu','yt_oG93w6k-1DY','20:40–21:34','主播说法待核实','低','节目在20:40–21:34描述共同聚会；不表示每两位都已证明有直接关系。','2026-09-22T23:37:42-07:00','节目所述关联');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_vanke_p_wangshi','p_wangshi','f_vanke',NULL,NULL,NULL,NULL,'v4_vanke2017','14:25–14:34','公开任职关联','高','公司主席接任记录支持共同机构背景，归属具体起止尚未建模。','2026-09-22T23:37:42-07:00','历史任职成员');
INSERT INTO "faction_memberships" VALUES('fm_v4_f_vanke_p_yuliang','p_yuliang','f_vanke',NULL,NULL,NULL,NULL,'v4_vanke2017','14:25–14:34','公开任职关联','高','公司主席接任记录支持共同机构背景，归属具体起止尚未建模。','2026-09-22T23:37:42-07:00','历史任职成员');
INSERT INTO "faction_memberships" VALUES('fm_ic8_jia_p_jiaqinglin','p_jiaqinglin','f_ic8_jia_claim',NULL,NULL,NULL,'p_lu','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','主播说法待核实','低','节目明确提出的影响／提拔网络；无独立证据，不因为同省或同姓自动归属。','2026-09-23T00:17:15-07:00','主播描述的核心');
INSERT INTO "faction_memberships" VALUES('fm_ic8_jia_p_caifuchao','p_caifuchao','f_ic8_jia_claim',NULL,NULL,NULL,'p_lu','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','主播说法待核实','低','节目明确提出的影响／提拔网络；无独立证据，不因为同省或同姓自动归属。','2026-09-23T00:17:15-07:00','主播所称关联');
INSERT INTO "faction_memberships" VALUES('fm_ic8_jia_p_niechenxi','p_niechenxi','f_ic8_jia_claim',NULL,NULL,NULL,'p_lu','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','主播说法待核实','低','节目明确提出的影响／提拔网络；无独立证据，不因为同省或同姓自动归属。','2026-09-23T00:17:15-07:00','主播所称关联');
INSERT INTO "faction_memberships" VALUES('fm_ic8_jia_p_tiening','p_tiening','f_ic8_jia_claim',NULL,NULL,NULL,'p_lu','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','主播说法待核实','低','节目明确提出的影响／提拔网络；无独立证据，不因为同省或同姓自动归属。','2026-09-23T00:17:15-07:00','主播所称关联');
INSERT INTO "faction_memberships" VALUES('fm_ic8_jia_p_linkeqing','p_linkeqing','f_ic8_jia_claim',NULL,NULL,NULL,'p_lu','yt_iC8a1SW78PE','24:40–27:44（章节定位，非逐句）','主播说法待核实','低','节目明确提出的影响／提拔网络；无独立证据，不因为同省或同姓自动归属。','2026-09-23T00:17:15-07:00','主播所称关联');
CREATE TABLE factions (
 id TEXT PRIMARY KEY,
 name TEXT NOT NULL UNIQUE,
 definition TEXT NOT NULL,
 note TEXT
, faction_type TEXT NOT NULL DEFAULT '待分类', core_person_id TEXT REFERENCES people(id), source_id TEXT REFERENCES sources(id), status TEXT NOT NULL DEFAULT '待核实', updated_at TEXT);
INSERT INTO "factions" VALUES('f_pending','派系待定','尚无足够信息确认归属。','不是实际派系；待定者彼此不构成关系。','状态占位',NULL,'user_v2','待定','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_xi','习近平政治网络','围绕习近平及其直接工作关系建立的研究分组。','不是官方组织名；每条外围成员归属单独标注证据和状态。','政治网络','p_xi','xi_2023','分析分组','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_lu','鲁社长节目协作圈','主播及有本期共同节目参与证据的人物。','只表示节目协作；赞赏对象、观众和订阅者不自动纳入。','媒体协作圈','p_lu','video_UwwbGnDF5WA','分析分组','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_pdd','拼多多商业网络','以拼多多创立与企业经营关系为依据的商业分组。','创始人与公司历史关系不等于当前经营权或政治派系。','商业网络','p_huang','pdd_2019','分析分组','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_liu','刘仲敬思想与受众圈','视频明确提及的刘仲敬观点及粉丝受众网络。','分析名称；不等于现实组织或政治联盟，未收录具体匿名粉丝。','思想受众圈','p_liuzhongjing','video_UwwbGnDF5WA','分析分组','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_cam','剑桥理论物理学术圈','以霍金在剑桥的学术工作背景为线索的分组。','霍金是当前库中代表人物，不意味着他领导全部剑桥物理研究；不是政治派系。','学术网络','p_hawking','hawking_cam','分析分组','2026-09-22T18:03:37-07:00');
INSERT INTO "factions" VALUES('f_tron','波场TRON商业网络','围绕波场TRON创立及相关商业合作关系的研究分组。','商业网络不等于政治派系；目前仅录入有来源的创始人。','商业网络','p_sunge','sun_official','分析分组','2026-09-22T18:09:50-07:00');
INSERT INTO "factions" VALUES('f_advance','列治文前进联盟','Advance Richmond；2026年竞选团队。','归属不自动等同私人友好或政治忠诚。','正式政治组织','p_wang','wang_campaign','公开组织','2026-09-22T22:18:22-07:00');
INSERT INTO "factions" VALUES('f_midea','美的商业网络','以何享健的美的集团创立经历为依据的商业分组。','归属不自动等同私人友好或政治忠诚。','商业网络','p_hexiangjian','identity_p_hexiangjian','分析分组','2026-09-22T22:18:22-07:00');
INSERT INTO "factions" VALUES('f_meng','孟建柱工作网络','节目讨论的政治关系研究分组；外围归属为主播主张。','归属不自动等同私人友好或政治忠诚。','政治网络','p_mengjianzhu','video_iUo_HMNIf54','分析分组','2026-09-22T22:18:22-07:00');
INSERT INTO "factions" VALUES('f_big_d','香港大D会社交圈','主播所述郑裕彤等人的牌友网络，非正式组织，具体聚会故事未独立核实。','归属用独立连线表达，头像颜色仍表示人物分类。','商业社交圈','p_zhengyutong','yt_oG93w6k-1DY','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "factions" VALUES('f_vanke','万科历史管理团队','王石与郁亮的历史任职网络；同一企业不等于政治派系。','归属用独立连线表达，头像颜色仍表示人物分类。','企业任职网络','p_wangshi','v4_vanke2017','公开证据支持','2026-09-22T23:37:42-07:00');
INSERT INTO "factions" VALUES('f_ic8_jia_claim','贾庆林相关政治网络（主播主张）','本期关于提拔、协调和地方影响的具体主张集合；不是已确认正式组织，亲属和同省不自动加入。','虚线圈层，来源为本期鲁社长推测；不表示政治忠诚。','政治网络主张','p_jiaqinglin','yt_iC8a1SW78PE','主播说法待核实','2026-09-23T00:17:15-07:00');
CREATE TABLE family_research (person_id TEXT PRIMARY KEY REFERENCES people(id),max_depth INTEGER NOT NULL DEFAULT 3 CHECK(max_depth BETWEEN 1 AND 3),status TEXT NOT NULL, note TEXT NOT NULL,updated_at TEXT NOT NULL);
INSERT INTO "family_research" VALUES('p_wenjiabao',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_wenjiahong',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_xi',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_xiyuanping',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_qixin',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_xizhongxun',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
INSERT INTO "family_research" VALUES('p_jingtian',3,'持续补充','用户指定保留三层亲属资料入口。空位表示未收录资料，不断言具体亲属存在；未来视频先核姓名与证据再补关系。','2026-09-23T00:32:45-07:00');
CREATE TABLE identity_checks (
 id TEXT PRIMARY KEY, person_id TEXT REFERENCES people(id), video_source_id TEXT REFERENCES sources(id),
 canonical_name TEXT, locator TEXT, status TEXT NOT NULL, verification_source_id TEXT REFERENCES sources(id),
 note TEXT NOT NULL, checked_at TEXT NOT NULL
);
INSERT INTO "identity_checks" VALUES('ic_v3_p_tangfeifan','p_tangfeifan','video_iUo_HMNIf54','汤飞帆','00:35–00:39','规范姓名已核对','tang_name','宁波官员；规范姓名由市长名单核对。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_baishaokang','p_baishaokang','video_iUo_HMNIf54','白少康','00:45–00:48','规范姓名已核对','bai_bio','曾任上海市副市长、公安局局长，后任中央政法委副秘书长。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_mengjianzhu','p_mengjianzhu','video_iUo_HMNIf54','孟建柱','00:47–00:48','规范姓名已核对','identity_p_mengjianzhu','曾任中央政法委书记；字幕括注完整姓名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_linwu','p_linwu','video_iUo_HMNIf54','林武','00:49–00:53','规范姓名已核对','lin_bio','山东省委书记任职记录所指人物。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_tangdengjie','p_tangdengjie','video_iUo_HMNIf54','唐登杰','00:58–01:02','规范姓名已核对','tangd_bio','山西省委书记任职记录所指人物。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_wangxinwei','p_wangxinwei','video_iUo_HMNIf54','王新伟','01:03–01:05','规范姓名已核对','wangx_bio','2025年当选辽宁省省长。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_hexiangjian','p_hexiangjian','video_iUo_HMNIf54','何享健','01:07–01:12','规范姓名已核对','identity_p_hexiangjian','美的集团创始人；节目未具名其所谓领导关系。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_zoujinsong','p_zoujinsong','video_iUo_HMNIf54','邹劲松','01:13–01:16','规范姓名已核对','zou_bio','中央港澳办、国务院港澳办三局局长的公开活动资料支持身份。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_huyaobang','p_huyaobang','video_iUo_HMNIf54','胡耀邦','01:18–01:25','规范姓名已核对','hu_bio','曾任中共中央主席、总书记；1987年后为政治局委员。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_zhaoziyang','p_zhaoziyang','video_iUo_HMNIf54','赵紫阳','01:20–01:33','规范姓名已核对','zhao_history','曾任国务院总理、中共中央总书记；1989年失势后被软禁。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_dengxiaoping','p_dengxiaoping','video_iUo_HMNIf54','邓小平','01:27–01:31','规范姓名已核对','deng_death','中国前领导人；1997年逝世。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_gongzheng','p_gongzheng','video_iUo_HMNIf54','龚正','03:02–03:06','规范姓名已核对','identity_p_gongzheng','曾有上海市市长任职记录；不把主播退休说法当作任免公告。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_dengyaping','p_dengyaping','video_iUo_HMNIf54','邓亚萍','03:14–03:37','规范姓名已核对','identity_p_dengyaping','乒乓球奥运冠军，曾参与搜索业务；项目亏损金额存在争议。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_lizhiyuan','p_lizhiyuan','video_iUo_HMNIf54','李智远','04:15–04:17','规范姓名已核对','li_bio','陕西省民政厅党组书记、厅长的公开活动资料支持身份。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_hujintao','p_hujintao','video_iUo_HMNIf54','胡锦涛','04:28–04:30','规范姓名已核对','identity_p_hujintao','曾任中共中央总书记、国家主席；不采信无医学证据的健康推测。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_musk','p_musk','video_iUo_HMNIf54','马斯克','08:19–08:44','规范姓名已核对','identity_p_musk','Elon Musk；节目围绕无人驾驶业务进行评价。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_wenjiabao','p_wenjiabao','video_iUo_HMNIf54','温家宝','11:01；11:23','规范姓名已核对','identity_p_wenjiabao','曾任国务院总理；节目讨论物联网产业政策。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_liuhaocun','p_liuhaocun','video_iUo_HMNIf54','刘浩存','13:28–13:50','规范姓名已核对','identity_p_liuhaocun','中国演员；主播明确否认将先前代号对应到她，不能建立传闻关系。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_xi','p_xi','video_iUo_HMNIf54','习近平','00:00–00:18','规范姓名或公开称谓已核对','xi_2023','已核查上下文；不根据昵称猜测实名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_zhong','p_zhong','video_iUo_HMNIf54','钟绍军','00:37–00:39','规范姓名或公开称谓已核对','zhong_media','已核查上下文；不根据昵称猜测实名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_lu','p_lu','video_iUo_HMNIf54','鲁社长','全片；12:11–13:15','规范姓名或公开称谓已核对','user','已核查上下文；不根据昵称猜测实名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_yuan','p_yuan','video_iUo_HMNIf54','元霸','13:22–13:26','公开身份待确认','video_iUo_HMNIf54','已核查上下文；不根据昵称猜测实名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v3_p_yuantengfei','p_yuantengfei','video_iUo_HMNIf54','袁腾飞','15:29','规范姓名或公开称谓已核对','video_UwwbGnDF5WA','已核查上下文；不根据昵称猜测实名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_0',NULL,'video_iUo_HMNIf54',NULL,'00:40–00:44','待确认／非人名',NULL,'一位律师；只有称谓，无唯一身份线索；不绑定配合调查说法。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_1',NULL,'video_iUo_HMNIf54',NULL,'01:56–01:57','待确认／非人名',NULL,'一位观众账号；无法核实真实姓名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_2',NULL,'video_iUo_HMNIf54',NULL,'03:41','待确认／非人名',NULL,'一位打赏观众账号；无法核实真实姓名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_3',NULL,'video_iUo_HMNIf54',NULL,'06:14–06:30','待确认／非人名',NULL,'一位提问观众账号；无法核实真实姓名和职业。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_4',NULL,'video_iUo_HMNIf54',NULL,'11:51–12:08','待确认／非人名',NULL,'一位提问观众账号；无法核实真实姓名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_5',NULL,'video_iUo_HMNIf54',NULL,'15:15–15:17','待确认／非人名',NULL,'一位被称为老高的创作者；无法仅凭称呼唯一匹配公开身份。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_6',NULL,'video_iUo_HMNIf54',NULL,'03:12–03:13','待确认／非人名',NULL,'云南省长；视频未具名；不靠上传日推定身份。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_7',NULL,'video_iUo_HMNIf54',NULL,'05:40–05:42','待确认／非人名',NULL,'湖州市市长；视频未具名；不擅自配人。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_8',NULL,'video_iUo_HMNIf54',NULL,'03:14–03:18','待确认／非人名',NULL,'一家咨询机构；是机构称谓，不是人名。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_9',NULL,'video_iUo_HMNIf54',NULL,'13:41–13:43','待确认／非人名',NULL,'一位未具名代号人物；主播明确否认与刘浩存相同。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_pending_v3_10',NULL,'video_iUo_HMNIf54',NULL,'01:07–01:12','待确认／非人名',NULL,'何享健的未具名领导关系；节目未点名具体人，不能补造关系边。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_wang_v3','p_wang',NULL,'王吉舟',NULL,'用户确认并经公开名录核对','wang_city','昵称映射来自用户；候选人资格有市政府名录支持。','2026-09-22T22:18:22-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_xujiayin','p_xujiayin','yt_oG93w6k-1DY','许家印','00:00–00:34；00:34–01:23；01:23–01:46；01:46–02:01；02:01–02:18；02:18–02:27；02:27–02:39；02:40–03:03；03:05–03:17；03:18–04:14；04:16–04:46；04:46–05:28；05:29–05:45；05:46–06:28；06:29–06:53；06:54–07:17；07:18–07:55；07:56–08:12；08:13–09:06；09:07–10:06；10:06–10:55；10:57–11:09；11:10–11:33；11:34–11:45；11:46–11:58；11:59–12:21；12:22–12:57；12:58–13:10；13:10–13:39；13:39–14:24；14:34–14:48；15:32–15:38；15:40–16:21；16:22–17:23；17:24–17:32；17:33–18:00；18:01–18:45；18:46–19:14；20:40–21:00；21:01–21:34；21:35–22:16；22:18–22:50；22:52–23:03；23:05–23:19；23:20–23:32；23:51–23:58；24:00–24:15；24:16–25:43','公开姓名已核对；具体叙事另核','v4_identity_p_xujiayin','恒大创办人；舞阳钢铁、武汉钢铁学院经历匹配','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_liuluanxiong','p_liuluanxiong','yt_oG93w6k-1DY','刘銮雄','00:00–00:34；19:39–19:53；19:54–20:09；20:10–20:39；20:40–21:00；21:01–21:34','公开姓名已核对；具体叙事另核','v4_identity_p_liuluanxiong','香港商人；华人置业资料中的刘氏家族','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_lijiaxin','p_lijiaxin','yt_oG93w6k-1DY','李嘉欣','00:00–00:34；19:39–19:53','公开姓名已核对；具体叙事另核','v4_identity_p_lijiaxin','演员 Michelle Lee；与同音姓名区分','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_guanzhilin','p_guanzhilin','yt_oG93w6k-1DY','关之琳','00:00–00:34；19:39–19:53；19:54–20:09','公开姓名已核对；具体叙事另核','v4_identity_p_guanzhilin','演员 Rosamund Kwan；公开艺名，原名关家慧','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_ninggaoning','p_ninggaoning','yt_oG93w6k-1DY','宁高宁','04:16–04:46','公开姓名已核对；具体叙事另核','v4_identity_p_ninggaoning','曾任中国中化党组书记、董事长','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_lijiacheng','p_lijiacheng','yt_oG93w6k-1DY','李嘉诚','13:10–13:39；14:49–15:22；18:46–19:14；20:10–20:39','公开姓名已核对；具体叙事另核','v4_identity_p_lijiacheng','长江集团创办人、李嘉诚基金会创办人','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_wangshi','p_wangshi','yt_oG93w6k-1DY','王石','13:39–14:24；14:25–14:34；17:24–17:32；17:33–18:00；18:01–18:45','公开姓名已核对；具体叙事另核','v4_identity_p_wangshi','万科创始人，原董事会主席','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_yuliang','p_yuliang','yt_oG93w6k-1DY','郁亮','14:25–14:34','公开姓名已核对；具体叙事另核','v4_identity_p_yuliang','万科2017年接任董事会主席；采用已核对写法','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_sunhongbin','p_sunhongbin','yt_oG93w6k-1DY','孙宏斌','15:23–15:30','公开姓名已核对；具体叙事另核','v4_identity_p_sunhongbin','融创创办人、董事会主席，口述老孙指此人','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_zhengyutong','p_zhengyutong','yt_oG93w6k-1DY','郑裕彤','18:46–19:14；20:40–21:00；21:01–21:34；21:35–22:16；23:05–23:19；23:33–23:50；23:51–23:58；24:16–25:43','公开姓名已核对；具体叙事另核','v4_identity_p_zhengyutong','新世界发展、周大福创办人；不把荣誉博士当学历','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_zhangsongqiao','p_zhangsongqiao','yt_oG93w6k-1DY','张松桥','18:46–19:14；19:15–19:38；20:40–21:00；21:01–21:34','公开姓名已核对；具体叙事另核','v4_identity_p_zhangsongqiao','中渝置地张松桥；重庆李嘉诚为公开绰号','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_xiaojianhua','p_xiaojianhua','yt_oG93w6k-1DY','肖建华','19:15–19:38','公开姓名已核对；具体叙事另核','v4_identity_p_xiaojianhua','明天控股相关商人；与同名诉讼当事人区分','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_wenjiahong','p_wenjiahong','yt_oG93w6k-1DY','温家宏','23:20–23:32；23:33–23:50；23:51–23:58；24:00–24:15','公开姓名已核对；具体叙事另核','v4_identity_p_wenjiahong','姓名与历史公司公告匹配；家族及持股叙事仍需分项核对','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_wenjiabao','p_wenjiabao','yt_oG93w6k-1DY','温家宝','22:18–22:50；23:20–23:32；23:33–23:50','公开姓名已核对；具体叙事另核','v4_identity_p_wenjiabao','既有人物：国务院原总理；本期复核政策语境，非同名者','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_v4_p_lu','p_lu','yt_oG93w6k-1DY','鲁社长','00:34–01:23；14:49–15:22；15:23–15:30','公开频道名；法定姓名未确认','v4_identity_p_lu','主播公开频道名，真实法定姓名未确认，继续沿用稳定ID','2026-09-22T23:37:42-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jingtian','p_jingtian','yt_iC8a1SW78PE','景甜','00:00–05:28（章节定位，非逐句）；05:28–07:06（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jingtian','演员，北京电影学院表演系本科毕业；本期中心人物','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_xiyuanping','p_xiyuanping','yt_iC8a1SW78PE','习远平','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_xiyuanping','习仲勋之子、习近平之弟，曾任国际节能环保协会会长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wangjianlin','p_wangjianlin','yt_iC8a1SW78PE','王健林','00:00–05:28（章节定位，非逐句）；05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wangjianlin','万达集团董事长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_yuzhengsheng','p_yuzhengsheng','yt_iC8a1SW78PE','俞正声','00:00–05:28（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_yuzhengsheng','曾任全国政协主席、上海市委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhangjun_funde','p_zhangjun_funde','yt_iC8a1SW78PE','张峻','00:00–05:28（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zhangjun_funde','富德集团、富德保险控股负责人；按机构消歧','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jingjunhai','p_jingjunhai','yt_iC8a1SW78PE','景俊海','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jingjunhai','曾任陕西省委宣传部长、吉林省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wangsicong','p_wangsicong','yt_iC8a1SW78PE','王思聪','05:28–07:06（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wangsicong','普思投资创办人，王健林之子','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiaqinglin','p_jiaqinglin','yt_iC8a1SW78PE','贾庆林','05:28–07:06（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiaqinglin','曾任全国政协主席、北京市委书记、福建省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wangzhaoguo','p_wangzhaoguo','yt_iC8a1SW78PE','王兆国','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wangzhaoguo','曾任全国人大常委会副委员长、全国总工会主席','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_luzheng','p_luzheng','yt_iC8a1SW78PE','路征','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_luzheng','影视出品人、制片人，1905电影网有作品条目；家族说法未独立证实','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_yexuanlian','p_yexuanlian','yt_iC8a1SW78PE','叶选廉','07:06–08:31（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_yexuanlian','企业经营者，叶剑英之子','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zengqinghuai','p_zengqinghuai','yt_iC8a1SW78PE','曾庆淮','07:06–08:31（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zengqinghuai','曾任文化部特别巡视员、驻香港特派员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_liruishan','p_liruishan','yt_iC8a1SW78PE','李瑞山','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_liruishan','曾任陕西省委第一书记、陕西省革命委员会主任','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_huoshilian','p_huoshilian','yt_iC8a1SW78PE','霍士廉','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_huoshilian','曾任陕西省委书记、农业部部长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiazhibang','p_jiazhibang','yt_iC8a1SW78PE','贾治邦','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiazhibang','曾任陕西省省长、国家林业局局长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhangboxing','p_zhangboxing','yt_iC8a1SW78PE','张勃兴','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zhangboxing','曾任陕西省省长、省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_pengzhen','p_pengzhen','yt_iC8a1SW78PE','彭真','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_pengzhen','曾任全国人大常委会委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_xizhongxun','p_xizhongxun','yt_iC8a1SW78PE','习仲勋','08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_xizhongxun','曾任国务院副总理、全国人大常委会副委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_lijianguo','p_lijianguo','yt_iC8a1SW78PE','李建国','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_lijianguo','曾任全国人大常委会副委员长、陕西省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiazhiguo_shaanxi','p_jiazhiguo_shaanxi','yt_iC8a1SW78PE','贾治国','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiazhiguo_shaanxi','陕西省委第四巡视组原组长；不与河北宗教人士等同名者混同','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiafeng_shaanxi','p_jiafeng_shaanxi','yt_iC8a1SW78PE','贾锋','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiafeng_shaanxi','陕西省商务厅党组书记（2024年资料）；曾任陕西省政府副秘书长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiangzemin','p_jiangzemin','yt_iC8a1SW78PE','江泽民','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiangzemin','曾任中共中央总书记、国家主席、中央军委主席','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_chenxitong','p_chenxitong','yt_iC8a1SW78PE','陈希同','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_chenxitong','曾任北京市委书记、北京市市长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_libotan','p_libotan','yt_iC8a1SW78PE','李伯潭','05:28–07:06（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_libotan','北京昭德置业董事长，曾任贵州茅台独立董事','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiaqiang','p_jiaqiang','yt_iC8a1SW78PE','贾蔷','08:31–12:48（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiaqiang','贾庆林之女、李伯潭之妻；职业资料待补充','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_boxilai','p_boxilai','yt_iC8a1SW78PE','薄熙来','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_boxilai','曾任大连市长、辽宁省长、商务部部长、重庆市委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_dengpufang','p_dengpufang','yt_iC8a1SW78PE','邓朴方','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_dengpufang','曾任全国政协副主席、中国残联主席','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_liumingkang','p_liumingkang','yt_iC8a1SW78PE','刘明康','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_liumingkang','原中国银监会主席，曾在福建任职','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wangxinyu_wanda','p_wangxinyu_wanda','yt_iC8a1SW78PE','王新宇','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wangxinyu_wanda','纽约时报万达股权调查所述商人、王兆国之子；不与网球运动员同名者混同','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wenruchun','p_wenruchun','yt_iC8a1SW78PE','温如春','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wenruchun','商界人士，温家宝之女','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_dengjiagui','p_dengjiagui','yt_iC8a1SW78PE','邓家贵','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_dengjiagui','商人，齐桥桥之夫','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_qiqiaoqiao','p_qiqiaoqiao','yt_iC8a1SW78PE','齐桥桥','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_qiqiaoqiao','商界人士，习近平之姐；由节目“大姐”称谓结合公开关系定位','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_sunchunlan','p_sunchunlan','yt_iC8a1SW78PE','孙春兰','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_sun_official','曾任国务院副总理、全国总工会党组书记','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_chenhao_yunnan','p_chenhao_yunnan','yt_iC8a1SW78PE','陈豪','12:48–16:55（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_chenhao_yunnan','曾任云南省委书记、全国总工会副主席；不是香港演员陈豪','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_gaohucheng','p_gaohucheng','yt_iC8a1SW78PE','高虎城','16:55–18:05（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_gaohucheng','曾任商务部部长，巴黎第七大学社会学博士','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_caifuchao','p_caifuchao','yt_iC8a1SW78PE','蔡赴朝','16:55–18:05（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_caifuchao','曾任国家新闻出版广电总局局长、北京市委宣传部长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_liyifeng','p_liyifeng','yt_iC8a1SW78PE','李易峰','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_liyifeng','中国内地演员、歌手','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiangshuying','p_jiangshuying','yt_iC8a1SW78PE','江疏影','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiangshuying','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_qinlan','p_qinlan','yt_iC8a1SW78PE','秦岚','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_qinlan','中国内地演员、歌手','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhangjike','p_zhangjike','yt_iC8a1SW78PE','张继科','18:05–21:43（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zhangjike','乒乓球运动员、奥运冠军','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_niechenxi','p_niechenxi','yt_iC8a1SW78PE','聂辰席','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_niechenxi','曾任国家广播电视总局局长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_tiening','p_tiening','yt_iC8a1SW78PE','铁凝','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_tiening','作家、中国文联主席、第十四届全国人大常委会副委员长；按最高已收录公职归政治','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_lizhanshu','p_lizhanshu','yt_iC8a1SW78PE','栗战书','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_lizhanshu','曾任全国人大常委会委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiafalin','p_jiafalin','yt_iC8a1SW78PE','贾发林','18:05–21:43（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiafalin','曾任沧州市委常委、宣传部部长；公开官方材料可确认姓名和地方任职','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhaowei','p_zhaowei','yt_iC8a1SW78PE','赵薇','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zhaowei','演员、导演','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_liuye','p_liuye','yt_iC8a1SW78PE','刘烨','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_epic','中国内地演员；不是同名艺术家','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhangfengyi','p_zhangfengyi','yt_iC8a1SW78PE','张丰毅','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_sunzi','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_herundong','p_herundong','yt_iC8a1SW78PE','何润东','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_beautyboss','演员、歌手、导演','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_guoshoubao','p_guoshoubao','yt_iC8a1SW78PE','郭寿宝','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_guoshoubao','西安索宝实业集团董事长，《战国》监制','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_sunhonglei','p_sunhonglei','yt_iC8a1SW78PE','孙红雷','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_sunhonglei','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wuzhenyu','p_wuzhenyu','yt_iC8a1SW78PE','吴镇宇','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_wuzhenyu','香港演员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_kimheesun','p_kimheesun','yt_iC8a1SW78PE','金喜善','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_kimheesun','韩国演员；属于节目具名演员，不是外国国家元首','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_jiangwu','p_jiangwu','yt_iC8a1SW78PE','姜武','21:43–24:40（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_jiangwu','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_linkeqing','p_linkeqing','yt_iC8a1SW78PE','林克庆','24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_lin_official','曾任广州市委书记，广东省政协主席','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_zhengshuang','p_zhengshuang','yt_iC8a1SW78PE','郑爽','24:40–27:44（章节定位，非逐句）','已定位公开身份；关系逐项核实','ic8_zhengshuang','1991年出生的演员，节目末尾用作类比；不与1966年出生的同名演员混同','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_lu','p_lu','yt_iC8a1SW78PE','鲁社长','00:00–05:28（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','复用已核身份与稳定ID',NULL,'已有人物，本期仅补证据；孙哥按既有核对指孙宇晨。','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_sunge','p_sunge','yt_iC8a1SW78PE','孙宇晨','00:00–05:28（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','复用已核身份与稳定ID',NULL,'已有人物，本期仅补证据；孙哥按既有核对指孙宇晨。','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_xi','p_xi','yt_iC8a1SW78PE','习近平','00:00–05:28（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','复用已核身份与稳定ID',NULL,'已有人物，本期仅补证据；孙哥按既有核对指孙宇晨。','2026-09-23T00:17:15-07:00');
INSERT INTO "identity_checks" VALUES('ic_ic8_p_wenjiabao','p_wenjiabao','yt_iC8a1SW78PE','温家宝','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','复用已核身份与稳定ID',NULL,'已有人物，本期仅补证据；孙哥按既有核对指孙宇晨。','2026-09-23T00:17:15-07:00');
CREATE TABLE kinship_links (relationship_id TEXT PRIMARY KEY REFERENCES relationships(id),kind TEXT NOT NULL CHECK(kind IN ('parent_child','sibling','spouse','extended')), note TEXT NOT NULL DEFAULT '');
INSERT INTO "kinship_links" VALUES('r_v4_wen_family','sibling','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_lu_jzb','extended','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_lu_jzg','extended','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_lu_jf','extended','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_zbx_peng','extended','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_jia_falin','sibling','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_wang_sicong','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_xi_brother','sibling','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_xi_father','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_xi_sister','sibling','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_qi_deng','spouse','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_wen_daughter','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_wang_son','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_jia_soninlaw','extended','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_jia_daughter','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_ic8_li_jiaqiang','spouse','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_family_xi_mother','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_family_yuan_mother','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_family_xi_parents','spouse','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
INSERT INTO "kinship_links" VALUES('r_family_yuan_father','parent_child','仅标记关系类型；是否已证实沿用 relationships 与证据状态，不改变原置信度。');
CREATE TABLE mentions (
 id TEXT PRIMARY KEY,
 person_id TEXT NOT NULL REFERENCES people(id),
 source_id TEXT NOT NULL REFERENCES sources(id),
 locator TEXT NOT NULL,
 note TEXT,
 UNIQUE(person_id, source_id)
);
INSERT INTO "mentions" VALUES('m_p_zhong','p_zhong','video','01:20–01:38','字幕全名；未外部核验');
INSERT INTO "mentions" VALUES('m_p_dong','p_dong','video','01:45–01:54','字幕全名；未外部核验');
INSERT INTO "mentions" VALUES('m_p_ye','p_ye','video','01:56–02:16','简称按上下文合并');
INSERT INTO "mentions" VALUES('m_p_chen','p_chen','video','01:56–02:16','简称按上下文合并；关系说法有争议');
INSERT INTO "mentions" VALUES('m_p_xi','p_xi','video','02:04–02:07','依据任职上下文识别简称');
INSERT INTO "mentions" VALUES('m_p_marx','p_marx','video','09:34；13:51；14:02','字幕全名');
INSERT INTO "mentions" VALUES('m_p_lu','p_lu','video','标题及正文多处','称呼不是已确认实名');
INSERT INTO "mentions" VALUES('m_p_yuan','p_yuan','video','19:16–19:22','暂按同一账号合并；实名未知');
INSERT INTO "mentions" VALUES('m_p_wang','p_wang','video','19:22','实名未知');
INSERT INTO "mentions" VALUES('m_v2_p_lu','p_lu','video_UwwbGnDF5WA','00:24；02:00；04:48；23:24–24:43','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_tao','p_tao','video_UwwbGnDF5WA','00:30；04:15；04:48；06:14；07:38–07:47；08:52；13:43；14:20；16:52–17:08；22:27','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_xi','p_xi','video_UwwbGnDF5WA','08:05（习大大）','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_sunge','p_sunge','video_UwwbGnDF5WA','16:05–16:07','字幕写孙哥并提孙学；用户后续确认指孙宇晨，昵称孙割。对应关系来源user_sun_identity；本次未重新听音核验。');
INSERT INTO "mentions" VALUES('m_v2_p_laoman','p_laoman','video_UwwbGnDF5WA','16:25','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_huang','p_huang','video_UwwbGnDF5WA','20:45–20:55','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_yuantengfei','p_yuantengfei','video_UwwbGnDF5WA','23:18–24:17','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_hawking','p_hawking','video_UwwbGnDF5WA','24:21','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v2_p_liuzhongjing','p_liuzhongjing','video_UwwbGnDF5WA','24:27–24:40','基于中文字幕；语音及观众昵称可能需后续核对。');
INSERT INTO "mentions" VALUES('m_v3_p_tangfeifan','p_tangfeifan','video_iUo_HMNIf54','00:35–00:39','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_baishaokang','p_baishaokang','video_iUo_HMNIf54','00:45–00:48','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_mengjianzhu','p_mengjianzhu','video_iUo_HMNIf54','00:47–00:48','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_linwu','p_linwu','video_iUo_HMNIf54','00:49–00:53','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_tangdengjie','p_tangdengjie','video_iUo_HMNIf54','00:58–01:02','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_wangxinwei','p_wangxinwei','video_iUo_HMNIf54','01:03–01:05','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_hexiangjian','p_hexiangjian','video_iUo_HMNIf54','01:07–01:12','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_zoujinsong','p_zoujinsong','video_iUo_HMNIf54','01:13–01:16','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_huyaobang','p_huyaobang','video_iUo_HMNIf54','01:18–01:25','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_zhaoziyang','p_zhaoziyang','video_iUo_HMNIf54','01:20–01:33','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_dengxiaoping','p_dengxiaoping','video_iUo_HMNIf54','01:27–01:31','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_gongzheng','p_gongzheng','video_iUo_HMNIf54','03:02–03:06','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_dengyaping','p_dengyaping','video_iUo_HMNIf54','03:14–03:37','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_lizhiyuan','p_lizhiyuan','video_iUo_HMNIf54','04:15–04:17','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_hujintao','p_hujintao','video_iUo_HMNIf54','04:28–04:30','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_musk','p_musk','video_iUo_HMNIf54','08:19–08:44','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_wenjiabao','p_wenjiabao','video_iUo_HMNIf54','11:01；11:23','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_liuhaocun','p_liuhaocun','video_iUo_HMNIf54','13:28–13:50','已按公开资料核对规范姓名。');
INSERT INTO "mentions" VALUES('m_v3_p_xi','p_xi','video_iUo_HMNIf54','00:00–00:18','与旧库稳定ID合并。');
INSERT INTO "mentions" VALUES('m_v3_p_zhong','p_zhong','video_iUo_HMNIf54','00:37–00:39','与旧库稳定ID合并。');
INSERT INTO "mentions" VALUES('m_v3_p_lu','p_lu','video_iUo_HMNIf54','全片；12:11–13:15','与旧库稳定ID合并。');
INSERT INTO "mentions" VALUES('m_v3_p_yuan','p_yuan','video_iUo_HMNIf54','13:22–13:26','与旧库稳定ID合并。');
INSERT INTO "mentions" VALUES('m_v3_p_yuantengfei','p_yuantengfei','video_iUo_HMNIf54','15:29','与旧库稳定ID合并。');
INSERT INTO "mentions" VALUES('m_v4_p_xujiayin','p_xujiayin','yt_oG93w6k-1DY','00:00–00:34；00:34–01:23；01:23–01:46；01:46–02:01；02:01–02:18；02:18–02:27；02:27–02:39；02:40–03:03；03:05–03:17；03:18–04:14；04:16–04:46；04:46–05:28；05:29–05:45；05:46–06:28；06:29–06:53；06:54–07:17；07:18–07:55；07:56–08:12；08:13–09:06；09:07–10:06；10:06–10:55；10:57–11:09；11:10–11:33；11:34–11:45；11:46–11:58；11:59–12:21；12:22–12:57；12:58–13:10；13:10–13:39；13:39–14:24；14:34–14:48；15:32–15:38；15:40–16:21；16:22–17:23；17:24–17:32；17:33–18:00；18:01–18:45；18:46–19:14；20:40–21:00；21:01–21:34；21:35–22:16；22:18–22:50；22:52–23:03；23:05–23:19；23:20–23:32；23:51–23:58；24:00–24:15；24:16–25:43','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_liuluanxiong','p_liuluanxiong','yt_oG93w6k-1DY','00:00–00:34；19:39–19:53；19:54–20:09；20:10–20:39；20:40–21:00；21:01–21:34','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_lijiaxin','p_lijiaxin','yt_oG93w6k-1DY','00:00–00:34；19:39–19:53','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_guanzhilin','p_guanzhilin','yt_oG93w6k-1DY','00:00–00:34；19:39–19:53；19:54–20:09','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_ninggaoning','p_ninggaoning','yt_oG93w6k-1DY','04:16–04:46','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_lijiacheng','p_lijiacheng','yt_oG93w6k-1DY','13:10–13:39；14:49–15:22；18:46–19:14；20:10–20:39','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_wangshi','p_wangshi','yt_oG93w6k-1DY','13:39–14:24；14:25–14:34；17:24–17:32；17:33–18:00；18:01–18:45','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_yuliang','p_yuliang','yt_oG93w6k-1DY','14:25–14:34','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_sunhongbin','p_sunhongbin','yt_oG93w6k-1DY','15:23–15:30','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_zhengyutong','p_zhengyutong','yt_oG93w6k-1DY','18:46–19:14；20:40–21:00；21:01–21:34；21:35–22:16；23:05–23:19；23:33–23:50；23:51–23:58；24:16–25:43','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_zhangsongqiao','p_zhangsongqiao','yt_oG93w6k-1DY','18:46–19:14；19:15–19:38；20:40–21:00；21:01–21:34','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_xiaojianhua','p_xiaojianhua','yt_oG93w6k-1DY','19:15–19:38','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_wenjiahong','p_wenjiahong','yt_oG93w6k-1DY','23:20–23:32；23:33–23:50；23:51–23:58；24:00–24:15','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_wenjiabao','p_wenjiabao','yt_oG93w6k-1DY','22:18–22:50；23:20–23:32；23:33–23:50','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_v4_p_lu','p_lu','yt_oG93w6k-1DY','00:34–01:23；14:49–15:22；15:23–15:30','细节见逐段视频索引，不将共同提及自动视为关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_guoshoubao','p_guoshoubao','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_linkeqing','p_linkeqing','yt_iC8a1SW78PE','24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_xiyuanping','p_xiyuanping','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_lu','p_lu','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_huoshilian','p_huoshilian','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiangshuying','p_jiangshuying','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wangxinyu_wanda','p_wangxinyu_wanda','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_gaohucheng','p_gaohucheng','yt_iC8a1SW78PE','16:55–18:05（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_liruishan','p_liruishan','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_yexuanlian','p_yexuanlian','yt_iC8a1SW78PE','07:06–08:31（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_chenhao_yunnan','p_chenhao_yunnan','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wangsicong','p_wangsicong','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_xizhongxun','p_xizhongxun','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhaowei','p_zhaowei','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhangfengyi','p_zhangfengyi','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhengshuang','p_zhengshuang','yt_iC8a1SW78PE','24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_yuzhengsheng','p_yuzhengsheng','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiazhibang','p_jiazhibang','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiazhiguo_shaanxi','p_jiazhiguo_shaanxi','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_sunge','p_sunge','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_liyifeng','p_liyifeng','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wangzhaoguo','p_wangzhaoguo','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_liuye','p_liuye','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiafeng_shaanxi','p_jiafeng_shaanxi','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhangjike','p_zhangjike','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_lizhanshu','p_lizhanshu','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wenruchun','p_wenruchun','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zengqinghuai','p_zengqinghuai','yt_iC8a1SW78PE','07:06–08:31（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_dengpufang','p_dengpufang','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_qinlan','p_qinlan','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_tiening','p_tiening','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_chenxitong','p_chenxitong','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wangjianlin','p_wangjianlin','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_xi','p_xi','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_pengzhen','p_pengzhen','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_liumingkang','p_liumingkang','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_herundong','p_herundong','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jingtian','p_jingtian','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；05:28–07:06（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiaqinglin','p_jiaqinglin','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_qiqiaoqiao','p_qiqiaoqiao','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_luzheng','p_luzheng','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）；16:55–18:05（章节定位，非逐句）；18:05–21:43（章节定位，非逐句）；21:43–24:40（章节定位，非逐句）；24:40–27:44（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_dengjiagui','p_dengjiagui','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_boxilai','p_boxilai','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_niechenxi','p_niechenxi','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_sunchunlan','p_sunchunlan','yt_iC8a1SW78PE','12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jingjunhai','p_jingjunhai','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）；07:06–08:31（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhangjun_funde','p_zhangjun_funde','yt_iC8a1SW78PE','00:00–05:28（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiafalin','p_jiafalin','yt_iC8a1SW78PE','18:05–21:43（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiangwu','p_jiangwu','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_zhangboxing','p_zhangboxing','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_lijianguo','p_lijianguo','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiangzemin','p_jiangzemin','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wuzhenyu','p_wuzhenyu','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_jiaqiang','p_jiaqiang','yt_iC8a1SW78PE','08:31–12:48（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_caifuchao','p_caifuchao','yt_iC8a1SW78PE','16:55–18:05（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_libotan','p_libotan','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；08:31–12:48（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_wenjiabao','p_wenjiabao','yt_iC8a1SW78PE','05:28–07:06（章节定位，非逐句）；12:48–16:55（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_sunhonglei','p_sunhonglei','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
INSERT INTO "mentions" VALUES('m_ic8_p_kimheesun','p_kimheesun','yt_iC8a1SW78PE','21:43–24:40（章节定位，非逐句）','规范真实姓名；章节范围索引。仅列举不自动创建关系。');
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
INSERT INTO "observations" VALUES('o_1','p_lu','身份','鲁社长即主播本人。','user',NULL,NULL,'用户确认','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_2','p_zhong','动态线索','主播谈及钟绍军动向并声称掌握信息；未提供可核实的具体任免或调查结果。','video','p_lu','01:20–01:38','待核实','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_3','p_dong','职务预测','问答讨论国防部长与军委、国务委员安排；预测不作为任免事实入库。','video','p_lu','01:45–01:54','预测性观点','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_4','p_ye','学历','在职研究生学历由当选报道明确；院校与博士学位由另一份公开履历补充。','ye_level',NULL,NULL,'公开报道支持','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_5','p_chen','退休','人物简介记载2003年退休。','chen_interview','p_chen','人物介绍','公开履历支持','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_6','p_zhong','最高学历','本轮未取得足够可靠的学历来源，保持空值。','video',NULL,NULL,'待补充','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_7','p_dong','最高学历','本轮未取得足够可靠的学历来源，保持空值。','video',NULL,NULL,'待补充','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_8','p_chen','最高学历','本轮未取得足够可靠的学历来源，保持空值。','chen_interview',NULL,NULL,'待补充','2026-09-22T17:44:35-07:00');
INSERT INTO "observations" VALUES('o_v2_huang','p_huang','公开评论待核实','投资问答中发言人猜测黄峥不希望成为首富，且承认判断不确定。字幕无发言人标签，不据此认定个人动机或企业行为。','video_UwwbGnDF5WA',NULL,'20:45–20:55','主观猜测；发言人未直接标注','2026-09-22T18:03:37-07:00');
INSERT INTO "observations" VALUES('o_sun_identity','p_sunge','身份归并','保留原人物ID p_sunge，将本期孙哥与用户称呼孙割按用户补充归并到孙宇晨。','user_sun_identity',NULL,'UwwbGnDF5WA 16:05–16:07','用户确认；标准姓名由本人官网支持','2026-09-22T18:09:50-07:00');
INSERT INTO "observations" VALUES('o_v3_0','p_linwu','动向预测','主播表达对未来的担忧，没有提供已发生事件。','video_iUo_HMNIf54','p_lu','00:49–00:53','预测性观点','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_1','p_tangfeifan','关系线索','提問与钟绍军的关联，但未提供其本人已被调查的可核实信息。','video_iUo_HMNIf54','p_lu','00:35–00:39','待核实','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_2','p_hexiangjian','政治关系','主播泛谈其可能与领导交好，没有说出具体姓名。','video_iUo_HMNIf54','p_lu','01:07–01:12','不建立未具名关系边','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_3','p_dengyaping','职业评价','主播评价搜索业务对职业发展的影响；财务金额有当事人否认材料，不能确认为损失事实。','video_iUo_HMNIf54','p_lu','03:14–03:37','有争议','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_4','p_huyaobang','历史职务核对','公开履历显示1987年十三届一中全会后为政治局委员，不能把去世时仍任常委作为事实。','video_iUo_HMNIf54','p_lu','01:21–01:25','公开资料纠正','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_5','p_liuhaocun','代号澄清','主播明确否认将先前代号对应到刘浩存，不建立相关八卦关系。','video_iUo_HMNIf54','p_lu','13:28–13:50','明确否认对应','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_6','p_gongzheng','任免线索','节目将有关问题解释为年龄因素；未提供退休任免公告。','video_iUo_HMNIf54','p_lu','03:02–03:06','主播解释，待核实','2026-09-22T22:18:22-07:00');
INSERT INTO "observations" VALUES('o_v3_dengy_denial','p_dengyaping','当事人回应','公开报道收录当事人对亏损金额传闻的否认；保留冲突，金额不作事实入库。','dengy_denial',NULL,NULL,'反向材料','2026-09-22T22:18:22-07:00');
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
INSERT INTO "people" VALUES('p_zhong','钟绍军','军事',1,'[]','由视频字幕识别姓名；履历另行注明资料来源。',NULL,'a_037','首版部分履历，非截至今日完整履历','2026-09-22T23:37:42-07:00','f_xi');
INSERT INTO "people" VALUES('p_dong','董军','军事',1,'[]','由视频字幕识别姓名；履历另行注明资料来源。',NULL,'a_048','首版部分履历，非截至今日完整履历','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_ye','叶建春','政治',1,'["叶"]','由视频字幕识别姓名；履历另行注明资料来源。','e_ye_doctor','a_012','首版部分履历，非截至今日完整履历','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_chen','陈增光','政治',1,'["陈"]','由视频字幕识别姓名；履历另行注明资料来源。',NULL,'a_036','首版部分履历，非截至今日完整履历','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_xi','习近平','政治',1,'["习", "习大大"]','由视频字幕识别姓名；履历另行注明资料来源。','e_xi_doctor','a_033','首版部分履历，非截至今日完整履历','2026-09-23T00:17:15-07:00','f_xi');
INSERT INTO "people" VALUES('p_marx','马克思','学者',0,'[]','由视频字幕识别姓名；履历另行注明资料来源。',NULL,NULL,'保留出现记录，背景待补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_lu','鲁社长','媒体',1,'["社长"]','用户确认：主播本人，作为视频信息来源；真实姓名未推断。',NULL,NULL,'保留出现记录，背景待补充','2026-09-23T00:17:15-07:00','f_lu');
INSERT INTO "people" VALUES('p_yuan','元霸','媒体',0,'["元霸加拿大"]','元霸与元霸加拿大暂按同一账号合并；未推定实名。',NULL,NULL,'公开身份待确认；保留旧库称谓，不猜测实名','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_wang','王吉舟','政治',1,'["大老王", "Jizhou William Wang"]','大老王与王吉舟的对应由用户确认；列治文市政府名单核实其2026年市议员候选人身份。','e_wang_bachelor',NULL,'实名及候选人身份已核对；非已当选议员','2026-09-22T23:37:42-07:00','f_advance');
INSERT INTO "people" VALUES('p_tao','陶瑞','媒体',1,'["陶老师", "陶瑞老师"]','本期具名嘉宾和投资评论者；具体职业资历未独立核实。',NULL,NULL,'公开身份待确认；保留旧库称谓，不猜测实名','2026-09-22T23:37:42-07:00','f_lu');
INSERT INTO "people" VALUES('p_huang','黄峥','商业',1,'["Zheng Huang", "Colin Huang"]','拼多多创始人；视频对其动机的评论另存待核实线索。','e_huang_master','a_huang_pdd','本期人物分类与关系初建；完整背景待补充','2026-09-22T23:37:42-07:00','f_pdd');
INSERT INTO "people" VALUES('p_yuantengfei','袁腾飞','学者',1,'["袁老师"]','历史科普创作者；高中历史教师身份在本期由主播描述。',NULL,NULL,'本期人物分类与关系初建；完整背景待补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_liuzhongjing','刘仲敬','学者',1,'[]','本期谈及其观点和受众；字幕24:40的刘仲敬按上下文识别为误转写，不登记为正式别名。',NULL,NULL,'本期人物分类与关系初建；完整背景待补充','2026-09-22T23:37:42-07:00','f_liu');
INSERT INTO "people" VALUES('p_hawking','霍金','学者',1,'["Stephen Hawking"]','物理学家及科普作者；本期作为类比对象提及，不推定与袁腾飞存在现实联系。',NULL,NULL,'本期人物分类与关系初建；完整背景待补充','2026-09-22T23:37:42-07:00','f_cam');
INSERT INTO "people" VALUES('p_sunge','孙宇晨','商业',1,'["孙哥", "孙割", "Justin Sun"]','用户确认本期孙哥／孙割指加密货币企业家；标准姓名据本人官网核为孙宇晨。用户所写孙宇晨为姓名顺序误写，不登记为正式别名。',NULL,NULL,'身份按用户补充确认；学历与完整履历待补充','2026-09-23T00:17:15-07:00','f_tron');
INSERT INTO "people" VALUES('p_laoman','老蛮','媒体',1,'[]','观众称长期阅读其数据分析内容；账号身份与实名尚未核实。',NULL,NULL,'公开身份待确认；保留旧库称谓，不猜测实名','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_tangfeifan','汤飞帆','政治',1,'[]','宁波官员；规范姓名由市长名单核对。',NULL,'a_v3_tang','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_baishaokang','白少康','政治',1,'[]','曾任上海市副市长、公安局局长，后任中央政法委副秘书长。',NULL,'a_v3_bai','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_meng');
INSERT INTO "people" VALUES('p_mengjianzhu','孟建柱','政治',1,'[]','曾任中央政法委书记；字幕括注完整姓名。',NULL,'a_v3_meng','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_meng');
INSERT INTO "people" VALUES('p_linwu','林武','政治',1,'[]','山东省委书记任职记录所指人物。',NULL,'a_v3_lin','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_tangdengjie','唐登杰','政治',1,'[]','山西省委书记任职记录所指人物。',NULL,'a_v3_tangd','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_wangxinwei','王新伟','政治',1,'[]','2025年当选辽宁省省长。',NULL,'a_v3_wangx','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_hexiangjian','何享健','商业',1,'[]','美的集团创始人；节目未具名其所谓领导关系。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_midea');
INSERT INTO "people" VALUES('p_zoujinsong','邹劲松','政治',1,'[]','中央港澳办、国务院港澳办三局局长的公开活动资料支持身份。',NULL,'a_v3_zou','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_huyaobang','胡耀邦','政治',1,'[]','曾任中共中央主席、总书记；1987年后为政治局委员。',NULL,'a_v3_hu_chair','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhaoziyang','赵紫阳','政治',1,'[]','曾任国务院总理、中共中央总书记；1989年失势后被软禁。',NULL,'a_v3_zhao_sec','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_dengxiaoping','邓小平','政治',1,'[]','中国前领导人；1997年逝世。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_gongzheng','龚正','政治',1,'[]','曾有上海市市长任职记录；不把主播退休说法当作任免公告。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_dengyaping','邓亚萍','其他名人',1,'[]','乒乓球奥运冠军，曾参与搜索业务；项目亏损金额存在争议。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_lizhiyuan','李智远','政治',1,'[]','陕西省民政厅党组书记、厅长的公开活动资料支持身份。',NULL,'a_v3_li','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_hujintao','胡锦涛','政治',1,'[]','曾任中共中央总书记、国家主席；不采信无医学证据的健康推测。',NULL,'a_v3_huj','实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_musk','马斯克','商业',1,'[]','Elon Musk；节目围绕无人驾驶业务进行评价。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_wenjiabao','温家宝','政治',1,'[]','曾任国务院总理；节目讨论物联网产业政策。',NULL,'a_v3_wen','实名已核对；履历尚待持续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_liuhaocun','刘浩存','演员主持人',1,'[]','中国演员；主播明确否认将先前代号对应到她，不能建立传闻关系。',NULL,NULL,'实名已核对；履历尚待持续补充','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_xujiayin','许家印','商业',1,'[]','恒大创办人；舞阳钢铁、武汉钢铁学院经历匹配。本期详细线索见视频依据，传闻和推测不等于事实。','e_v4_p_xujiayin','a_v4_p_xujiayin_1','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_big_d');
INSERT INTO "people" VALUES('p_liuluanxiong','刘銮雄','商业',1,'["大刘"]','香港商人；华人置业资料中的刘氏家族。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,NULL,'公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_big_d');
INSERT INTO "people" VALUES('p_lijiaxin','李嘉欣','演员主持人',1,'[]','演员 Michelle Lee；与同音姓名区分。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,NULL,'公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_guanzhilin','关之琳','演员主持人',1,'["关家慧", "Rosamund Kwan"]','演员 Rosamund Kwan；公开艺名，原名关家慧。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,NULL,'公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_ninggaoning','宁高宁','商业',1,'[]','曾任中国中化党组书记、董事长。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,'a_v4_p_ninggaoning_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_lijiacheng','李嘉诚','商业',1,'[]','长江集团创办人、李嘉诚基金会创办人。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,'a_v4_p_lijiacheng_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_wangshi','王石','商业',1,'[]','万科创始人，原董事会主席。本期详细线索见视频依据，传闻和推测不等于事实。','e_v4_p_wangshi','a_v4_p_wangshi_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_vanke');
INSERT INTO "people" VALUES('p_yuliang','郁亮','商业',1,'[]','万科2017年接任董事会主席；采用已核对写法。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,'a_v4_p_yuliang_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_vanke');
INSERT INTO "people" VALUES('p_sunhongbin','孙宏斌','商业',1,'["老孙"]','融创创办人、董事会主席，口述老孙指此人。本期详细线索见视频依据，传闻和推测不等于事实。','e_v4_p_sunhongbin','a_v4_p_sunhongbin_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhengyutong','郑裕彤','商业',1,'[]','新世界发展、周大福创办人；不把荣誉博士当学历。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,'a_v4_p_zhengyutong_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_big_d');
INSERT INTO "people" VALUES('p_zhangsongqiao','张松桥','商业',1,'["重庆李嘉诚"]','中渝置地张松桥；重庆李嘉诚为公开绰号。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,'a_v4_p_zhangsongqiao_0','公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_big_d');
INSERT INTO "people" VALUES('p_xiaojianhua','肖建华','商业',1,'[]','明天控股相关商人；与同名诉讼当事人区分。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,NULL,'公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_wenjiahong','温家宏','商业',1,'[]','姓名与历史公司公告匹配；家族及持股叙事仍需分项核对。本期详细线索见视频依据，传闻和推测不等于事实。',NULL,NULL,'公开姓名核对；履历及视频细节分项核实','2026-09-22T23:37:42-07:00','f_pending');
INSERT INTO "people" VALUES('p_jingtian','景甜','演员主持人',1,'[]','演员，北京电影学院表演系本科毕业；本期中心人物。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_jingtian',NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_xiyuanping','习远平','其他名人',1,'[]','习仲勋之子、习近平之弟，曾任国际节能环保协会会长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_wangjianlin','王健林','商业',1,'[]','万达集团董事长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_wangjianlin_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_yuzhengsheng','俞正声','政治',1,'[]','曾任全国政协主席、上海市委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_yuzhengsheng_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhangjun_funde','张峻','商业',1,'[]','富德集团、富德保险控股负责人；按机构消歧。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_zhangjun_funde_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jingjunhai','景俊海','政治',1,'[]','曾任陕西省委宣传部长、吉林省委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_jingjunhai','a_ic8_p_jingjunhai_5','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_wangsicong','王思聪','商业',1,'[]','普思投资创办人，王健林之子。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiaqinglin','贾庆林','政治',1,'[]','曾任全国政协主席、北京市委书记、福建省委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_jiaqinglin','a_ic8_p_jiaqinglin_7','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_ic8_jia_claim');
INSERT INTO "people" VALUES('p_wangzhaoguo','王兆国','政治',1,'[]','曾任全国人大常委会副委员长、全国总工会主席。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_luzheng','路征','商业',1,'[]','影视出品人、制片人，1905电影网有作品条目；家族说法未独立证实。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_yexuanlian','叶选廉','商业',1,'[]','企业经营者，叶剑英之子。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zengqinghuai','曾庆淮','政治',1,'[]','曾任文化部特别巡视员、驻香港特派员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_liruishan','李瑞山','政治',1,'[]','曾任陕西省委第一书记、陕西省革命委员会主任。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_huoshilian','霍士廉','政治',1,'[]','曾任陕西省委书记、农业部部长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiazhibang','贾治邦','政治',1,'[]','曾任陕西省省长、国家林业局局长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_jiazhibang_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhangboxing','张勃兴','政治',1,'[]','曾任陕西省省长、省委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_pengzhen','彭真','政治',1,'[]','曾任全国人大常委会委员长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_xizhongxun','习仲勋','政治',1,'[]','曾任国务院副总理、全国人大常委会副委员长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_lijianguo','李建国','政治',1,'[]','曾任全国人大常委会副委员长、陕西省委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_lijianguo','a_ic8_p_lijianguo_3','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiazhiguo_shaanxi','贾治国','政治',1,'[]','陕西省委第四巡视组原组长；不与河北宗教人士等同名者混同。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_jiazhiguo_shaanxi_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiafeng_shaanxi','贾锋','政治',1,'[]','陕西省商务厅党组书记（2024年资料）；曾任陕西省政府副秘书长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_jiafeng_shaanxi_1','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiangzemin','江泽民','政治',1,'[]','曾任中共中央总书记、国家主席、中央军委主席。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_chenxitong','陈希同','政治',1,'[]','曾任北京市委书记、北京市市长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_libotan','李伯潭','商业',1,'[]','北京昭德置业董事长，曾任贵州茅台独立董事。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiaqiang','贾蔷','其他名人',1,'[]','贾庆林之女、李伯潭之妻；职业资料待补充。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_boxilai','薄熙来','政治',1,'[]','曾任大连市长、辽宁省长、商务部部长、重庆市委书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_dengpufang','邓朴方','政治',1,'[]','曾任全国政协副主席、中国残联主席。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_liumingkang','刘明康','政治',1,'[]','原中国银监会主席，曾在福建任职。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_liumingkang','a_ic8_p_liumingkang_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_wangxinyu_wanda','王新宇','商业',1,'[]','纽约时报万达股权调查所述商人、王兆国之子；不与网球运动员同名者混同。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_wenruchun','温如春','商业',1,'[]','商界人士，温家宝之女。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_dengjiagui','邓家贵','商业',1,'[]','商人，齐桥桥之夫。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_qiqiaoqiao','齐桥桥','商业',1,'[]','商界人士，习近平之姐；由节目“大姐”称谓结合公开关系定位。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_sunchunlan','孙春兰','政治',1,'[]','曾任国务院副总理、全国总工会党组书记。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_chenhao_yunnan','陈豪','政治',1,'[]','曾任云南省委书记、全国总工会副主席；不是香港演员陈豪。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_gaohucheng','高虎城','政治',1,'[]','曾任商务部部长，巴黎第七大学社会学博士。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_gaohucheng','a_ic8_p_gaohucheng_3','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_caifuchao','蔡赴朝','政治',1,'[]','曾任国家新闻出版广电总局局长、北京市委宣传部长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_caifuchao_3','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_ic8_jia_claim');
INSERT INTO "people" VALUES('p_liyifeng','李易峰','演员主持人',1,'[]','中国内地演员、歌手。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiangshuying','江疏影','演员主持人',1,'[]','中国内地演员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_qinlan','秦岚','演员主持人',1,'[]','中国内地演员、歌手。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhangjike','张继科','其他名人',1,'[]','乒乓球运动员、奥运冠军。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_niechenxi','聂辰席','政治',1,'[]','曾任国家广播电视总局局长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_ic8_jia_claim');
INSERT INTO "people" VALUES('p_tiening','铁凝','政治',1,'[]','作家、中国文联主席、第十四届全国人大常委会副委员长；按最高已收录公职归政治。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。','ed_ic8_p_tiening','a_ic8_p_tiening_1','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_ic8_jia_claim');
INSERT INTO "people" VALUES('p_lizhanshu','栗战书','政治',1,'[]','曾任全国人大常委会委员长。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiafalin','贾发林','政治',1,'[]','曾任沧州市委常委、宣传部部长；公开官方材料可确认姓名和地方任职。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_p_jiafalin_0','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhaowei','赵薇','演员主持人',1,'[]','演员、导演。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_liuye','刘烨','演员主持人',1,'[]','中国内地演员；不是同名艺术家。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_zhangfengyi','张丰毅','演员主持人',1,'[]','中国内地演员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_herundong','何润东','演员主持人',1,'[]','演员、歌手、导演。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_guoshoubao','郭寿宝','商业',1,'[]','西安索宝实业集团董事长，《战国》监制。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_sunhonglei','孙红雷','演员主持人',1,'[]','中国内地演员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_wuzhenyu','吴镇宇','演员主持人',1,'[]','香港演员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_kimheesun','金喜善','演员主持人',1,'[]','韩国演员；属于节目具名演员，不是外国国家元首。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_jiangwu','姜武','演员主持人',1,'[]','中国内地演员。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_linkeqing','林克庆','政治',1,'[]','曾任广州市委书记，广东省政协主席。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,'a_ic8_lin_official','身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:22:10-07:00','f_ic8_jia_claim');
INSERT INTO "people" VALUES('p_zhengshuang','郑爽','演员主持人',1,'[]','1991年出生的演员，节目末尾用作类比；不与1966年出生的同名演员混同。视频中的推测另列于证据索引；未核实的亲属、代持和幕后安排不作为事实。',NULL,NULL,'身份已定位；学历、履历与照片按证据继续补充','2026-09-23T00:17:15-07:00','f_pending');
INSERT INTO "people" VALUES('p_qixin','齐心','政治',1,'[]','曾在中共中央党校工作；习仲勋夫人，习近平、习远平的母亲。公开身份已核对，其他履历待补充。',NULL,NULL,'用户指定补充的亲属档案；照片、学历和详细履历待补充','2026-09-23T00:32:45-07:00','f_pending');
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
INSERT INTO "person_classifications" VALUES('pc_v4_p_zhong','p_zhong','c_v4_1','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_dong','p_dong','c_v4_1','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_ye','p_ye','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_chen','p_chen','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_xi','p_xi','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_marx','p_marx','c_v4_4','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_lu','p_lu','c_v4_3','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_yuan','p_yuan','c_v4_3','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_wang','p_wang','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_tao','p_tao','c_v4_3','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_huang','p_huang','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_yuantengfei','p_yuantengfei','c_v4_4','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_liuzhongjing','p_liuzhongjing','c_v4_4','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_hawking','p_hawking','c_v4_4','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_sunge','p_sunge','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_laoman','p_laoman','c_v4_3','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_tangfeifan','p_tangfeifan','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_baishaokang','p_baishaokang','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_mengjianzhu','p_mengjianzhu','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_linwu','p_linwu','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_tangdengjie','p_tangdengjie','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_wangxinwei','p_wangxinwei','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_hexiangjian','p_hexiangjian','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_zoujinsong','p_zoujinsong','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_huyaobang','p_huyaobang','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_zhaoziyang','p_zhaoziyang','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_dengxiaoping','p_dengxiaoping','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_gongzheng','p_gongzheng','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_dengyaping','p_dengyaping','c_v4_6','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_lizhiyuan','p_lizhiyuan','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_hujintao','p_hujintao','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_musk','p_musk','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_wenjiabao','p_wenjiabao','c_v4_0','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_liuhaocun','p_liuhaocun','c_v4_5','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_xujiayin','p_xujiayin','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_liuluanxiong','p_liuluanxiong','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_lijiaxin','p_lijiaxin','c_v4_5','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_guanzhilin','p_guanzhilin','c_v4_5','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_ninggaoning','p_ninggaoning','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_lijiacheng','p_lijiacheng','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_wangshi','p_wangshi','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_yuliang','p_yuliang','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_sunhongbin','p_sunhongbin','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_zhengyutong','p_zhengyutong','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_zhangsongqiao','p_zhangsongqiao','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_xiaojianhua','p_xiaojianhua','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_v4_p_wenjiahong','p_wenjiahong','c_v4_2','taxonomy_v4',NULL,NULL,'统一分类','按已收录主要公众身份归档；不表示派系或政治立场。','2026-09-22T23:37:42-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jingtian','p_jingtian','c_v4_5','ic8_jingtian',NULL,NULL,'已核对职业主分类','演员，北京电影学院表演系本科毕业；本期中心人物','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_xiyuanping','p_xiyuanping','c_v4_6','ic8_xiyuanping',NULL,NULL,'已核对职业主分类','习仲勋之子、习近平之弟，曾任国际节能环保协会会长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wangjianlin','p_wangjianlin','c_v4_2','ic8_wangjianlin',NULL,NULL,'已核对职业主分类','万达集团董事长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_yuzhengsheng','p_yuzhengsheng','c_v4_0','ic8_yuzhengsheng',NULL,NULL,'已核对职业主分类','曾任全国政协主席、上海市委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhangjun_funde','p_zhangjun_funde','c_v4_2','ic8_zhangjun_funde',NULL,NULL,'已核对职业主分类','富德集团、富德保险控股负责人；按机构消歧','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jingjunhai','p_jingjunhai','c_v4_0','ic8_jingjunhai',NULL,NULL,'已核对职业主分类','曾任陕西省委宣传部长、吉林省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wangsicong','p_wangsicong','c_v4_2','ic8_wangsicong',NULL,NULL,'已核对职业主分类','普思投资创办人，王健林之子','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiaqinglin','p_jiaqinglin','c_v4_0','ic8_jiaqinglin',NULL,NULL,'已核对职业主分类','曾任全国政协主席、北京市委书记、福建省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wangzhaoguo','p_wangzhaoguo','c_v4_0','ic8_wangzhaoguo',NULL,NULL,'已核对职业主分类','曾任全国人大常委会副委员长、全国总工会主席','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_luzheng','p_luzheng','c_v4_2','ic8_luzheng',NULL,NULL,'已核对职业主分类','影视出品人、制片人，1905电影网有作品条目；家族说法未独立证实','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_yexuanlian','p_yexuanlian','c_v4_2','ic8_yexuanlian',NULL,NULL,'已核对职业主分类','企业经营者，叶剑英之子','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zengqinghuai','p_zengqinghuai','c_v4_0','ic8_zengqinghuai',NULL,NULL,'已核对职业主分类','曾任文化部特别巡视员、驻香港特派员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_liruishan','p_liruishan','c_v4_0','ic8_liruishan',NULL,NULL,'已核对职业主分类','曾任陕西省委第一书记、陕西省革命委员会主任','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_huoshilian','p_huoshilian','c_v4_0','ic8_huoshilian',NULL,NULL,'已核对职业主分类','曾任陕西省委书记、农业部部长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiazhibang','p_jiazhibang','c_v4_0','ic8_jiazhibang',NULL,NULL,'已核对职业主分类','曾任陕西省省长、国家林业局局长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhangboxing','p_zhangboxing','c_v4_0','ic8_zhangboxing',NULL,NULL,'已核对职业主分类','曾任陕西省省长、省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_pengzhen','p_pengzhen','c_v4_0','ic8_pengzhen',NULL,NULL,'已核对职业主分类','曾任全国人大常委会委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_xizhongxun','p_xizhongxun','c_v4_0','ic8_xizhongxun',NULL,NULL,'已核对职业主分类','曾任国务院副总理、全国人大常委会副委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_lijianguo','p_lijianguo','c_v4_0','ic8_lijianguo',NULL,NULL,'已核对职业主分类','曾任全国人大常委会副委员长、陕西省委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiazhiguo_shaanxi','p_jiazhiguo_shaanxi','c_v4_0','ic8_jiazhiguo_shaanxi',NULL,NULL,'已核对职业主分类','陕西省委第四巡视组原组长；不与河北宗教人士等同名者混同','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiafeng_shaanxi','p_jiafeng_shaanxi','c_v4_0','ic8_jiafeng_shaanxi',NULL,NULL,'已核对职业主分类','陕西省商务厅党组书记（2024年资料）；曾任陕西省政府副秘书长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiangzemin','p_jiangzemin','c_v4_0','ic8_jiangzemin',NULL,NULL,'已核对职业主分类','曾任中共中央总书记、国家主席、中央军委主席','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_chenxitong','p_chenxitong','c_v4_0','ic8_chenxitong',NULL,NULL,'已核对职业主分类','曾任北京市委书记、北京市市长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_libotan','p_libotan','c_v4_2','ic8_libotan',NULL,NULL,'已核对职业主分类','北京昭德置业董事长，曾任贵州茅台独立董事','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiaqiang','p_jiaqiang','c_v4_6','ic8_jiaqiang',NULL,NULL,'已核对职业主分类','贾庆林之女、李伯潭之妻；职业资料待补充','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_boxilai','p_boxilai','c_v4_0','ic8_boxilai',NULL,NULL,'已核对职业主分类','曾任大连市长、辽宁省长、商务部部长、重庆市委书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_dengpufang','p_dengpufang','c_v4_0','ic8_dengpufang',NULL,NULL,'已核对职业主分类','曾任全国政协副主席、中国残联主席','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_liumingkang','p_liumingkang','c_v4_0','ic8_liumingkang',NULL,NULL,'已核对职业主分类','原中国银监会主席，曾在福建任职','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wangxinyu_wanda','p_wangxinyu_wanda','c_v4_2','ic8_wangxinyu_wanda',NULL,NULL,'已核对职业主分类','纽约时报万达股权调查所述商人、王兆国之子；不与网球运动员同名者混同','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wenruchun','p_wenruchun','c_v4_2','ic8_wenruchun',NULL,NULL,'已核对职业主分类','商界人士，温家宝之女','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_dengjiagui','p_dengjiagui','c_v4_2','ic8_dengjiagui',NULL,NULL,'已核对职业主分类','商人，齐桥桥之夫','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_qiqiaoqiao','p_qiqiaoqiao','c_v4_2','ic8_qiqiaoqiao',NULL,NULL,'已核对职业主分类','商界人士，习近平之姐；由节目“大姐”称谓结合公开关系定位','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_sunchunlan','p_sunchunlan','c_v4_0','ic8_sunchunlan',NULL,NULL,'已核对职业主分类','曾任国务院副总理、全国总工会党组书记','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_chenhao_yunnan','p_chenhao_yunnan','c_v4_0','ic8_chenhao_yunnan',NULL,NULL,'已核对职业主分类','曾任云南省委书记、全国总工会副主席；不是香港演员陈豪','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_gaohucheng','p_gaohucheng','c_v4_0','ic8_gaohucheng',NULL,NULL,'已核对职业主分类','曾任商务部部长，巴黎第七大学社会学博士','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_caifuchao','p_caifuchao','c_v4_0','ic8_caifuchao',NULL,NULL,'已核对职业主分类','曾任国家新闻出版广电总局局长、北京市委宣传部长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_liyifeng','p_liyifeng','c_v4_5','ic8_liyifeng',NULL,NULL,'已核对职业主分类','中国内地演员、歌手','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiangshuying','p_jiangshuying','c_v4_5','ic8_jiangshuying',NULL,NULL,'已核对职业主分类','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_qinlan','p_qinlan','c_v4_5','ic8_qinlan',NULL,NULL,'已核对职业主分类','中国内地演员、歌手','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhangjike','p_zhangjike','c_v4_6','ic8_zhangjike',NULL,NULL,'已核对职业主分类','乒乓球运动员、奥运冠军','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_niechenxi','p_niechenxi','c_v4_0','ic8_niechenxi',NULL,NULL,'已核对职业主分类','曾任国家广播电视总局局长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_tiening','p_tiening','c_v4_0','ic8_tiening',NULL,NULL,'已核对职业主分类','作家、中国文联主席、第十四届全国人大常委会副委员长；按最高已收录公职归政治','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_lizhanshu','p_lizhanshu','c_v4_0','ic8_lizhanshu',NULL,NULL,'已核对职业主分类','曾任全国人大常委会委员长','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiafalin','p_jiafalin','c_v4_0','ic8_jiafalin',NULL,NULL,'已核对职业主分类','曾任沧州市委常委、宣传部部长；公开官方材料可确认姓名和地方任职','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhaowei','p_zhaowei','c_v4_5','ic8_zhaowei',NULL,NULL,'已核对职业主分类','演员、导演','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_liuye','p_liuye','c_v4_5','ic8_liuye',NULL,NULL,'已核对职业主分类','中国内地演员；不是同名艺术家','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhangfengyi','p_zhangfengyi','c_v4_5','ic8_zhangfengyi',NULL,NULL,'已核对职业主分类','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_herundong','p_herundong','c_v4_5','ic8_herundong',NULL,NULL,'已核对职业主分类','演员、歌手、导演','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_guoshoubao','p_guoshoubao','c_v4_2','ic8_guoshoubao',NULL,NULL,'已核对职业主分类','西安索宝实业集团董事长，《战国》监制','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_sunhonglei','p_sunhonglei','c_v4_5','ic8_sunhonglei',NULL,NULL,'已核对职业主分类','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_wuzhenyu','p_wuzhenyu','c_v4_5','ic8_wuzhenyu',NULL,NULL,'已核对职业主分类','香港演员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_kimheesun','p_kimheesun','c_v4_5','ic8_kimheesun',NULL,NULL,'已核对职业主分类','韩国演员；属于节目具名演员，不是外国国家元首','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_jiangwu','p_jiangwu','c_v4_5','ic8_jiangwu',NULL,NULL,'已核对职业主分类','中国内地演员','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_linkeqing','p_linkeqing','c_v4_0','ic8_linkeqing',NULL,NULL,'已核对职业主分类','曾任广州市委书记，广东省政协主席','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_ic8_p_zhengshuang','p_zhengshuang','c_v4_5','ic8_zhengshuang',NULL,NULL,'已核对职业主分类','1991年出生的演员，节目末尾用作类比；不与1966年出生的同名演员混同','2026-09-23T00:17:15-07:00');
INSERT INTO "person_classifications" VALUES('pc_family_qixin','p_qixin','c_v4_0','family_qixin_2018',NULL,NULL,'已核对职业主分类','曾在中共中央党校工作，历史干部身份；不以亲属关系划分政治圈层。','2026-09-23T00:32:45-07:00');
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
INSERT INTO "person_events" VALUES('ev_hu_resign','p_huyaobang','离任','辞去中共中央总书记职务','1987-01-16',NULL,'day','公开证据支持','career','已离任总书记','hu_resign',NULL,NULL,NULL,'2026-09-22T22:18:22-07:00','离开总书记岗位不等于失去全部党内职务。');
INSERT INTO "person_events" VALUES('ev_hu_pb','p_huyaobang','任职','当选中央政治局委员','1987-11',NULL,'month','公开证据支持','career','政治局委员','hu_bio',NULL,NULL,'2008-10-18','2026-09-22T22:18:22-07:00','据公开履历纠正节目将其去世时称为常委的说法。');
INSERT INTO "person_events" VALUES('ev_hu_death','p_huyaobang','逝世','在北京逝世','1989-04-15',NULL,'day','公开证据支持','life','已逝世','hu_bio',NULL,NULL,'2008-10-18','2026-09-22T22:18:22-07:00','');
INSERT INTO "person_events" VALUES('ev_zhao_house','p_zhaoziyang','软禁','失势后被软禁','1989','2005-01-17','year','公开证据支持','freedom','被软禁','zhao_history',NULL,NULL,'2005-01-17','2026-09-22T22:18:22-07:00','具体起始日不详；保留年精度。软禁不是判刑服刑。');
INSERT INTO "person_events" VALUES('ev_zhao_death','p_zhaoziyang','逝世','在北京逝世','2005-01-17',NULL,'day','公开证据支持','life','已逝世','zhao_history',NULL,NULL,'2005-01-17','2026-09-22T22:18:22-07:00','');
INSERT INTO "person_events" VALUES('ev_deng_death','p_dengxiaoping','逝世','在北京逝世','1997-02-19',NULL,'day','公开证据支持','life','已逝世','deng_death',NULL,NULL,NULL,'2026-09-22T22:18:22-07:00','');
INSERT INTO "person_events" VALUES('ev_ye_investigation','p_ye','调查','接受纪律审查和监察调查','2026-08-27',NULL,'day','公开证据支持','judicial','被调查','ye_investigation',NULL,NULL,'2026-08-27','2026-09-22T22:18:22-07:00','最近公开记录；尚无本库收录的判决或服刑信息。');
INSERT INTO "person_events" VALUES('ev_bai_end','p_baishaokang','免职','免去国家监察委员会委员职务','2022-10-30',NULL,'day','公开证据支持','career','该职务已免去','bai_end',NULL,NULL,'2022-10-31','2026-09-22T22:18:22-07:00','只指国家监委委员这一职务，不证明政治清洗。');
INSERT INTO "person_events" VALUES('ev_wang_candidate','p_wang','竞选','列入2026年市议员候选人名单','2026-09-11',NULL,'day','公开证据支持','public_role','市议员候选人','wang_city',NULL,NULL,'2026-09-11','2026-09-22T22:18:22-07:00','名录发布日期，非开始参选日；不声称已当选。');
INSERT INTO "person_events" VALUES('ev_wang_migration','p_wang','定居海外','移居加拿大（候选人自述）','2011',NULL,'year','公开证据支持','residence','移居加拿大','wang_campaign',NULL,NULL,NULL,'2026-09-22T22:18:22-07:00','来源为本人竞选材料；不是出逃记录。');
INSERT INTO "person_events" VALUES('ev_zhong_claim','p_zhong','异常动向','主播谈及其异常动向',NULL,NULL,'unknown','主播说法待核实',NULL,NULL,'video_iUo_HMNIf54','p_lu','00:37–00:39','2026-09-14','2026-09-22T22:18:22-07:00','没有具体事件日期和调查通报，不改变司法状态。');
INSERT INTO "person_events" VALUES('ev_tangd_prediction','p_tangdengjie','任职预测','主播讨论可能转任发改委',NULL,NULL,'unknown','预测',NULL,NULL,'video_iUo_HMNIf54','p_lu','00:58–01:02','2026-09-14','2026-09-22T22:18:22-07:00','主播明确说是可能性，不作为任命或未来事件。');
INSERT INTO "person_events" VALUES('ev_lu_move_plan','p_lu','迁居计划','主播表示正在研究迁居新加坡',NULL,NULL,'unknown','主播说法待核实',NULL,NULL,'video_iUo_HMNIf54','p_lu','12:19–13:15','2026-09-14','2026-09-22T22:18:22-07:00','计划不代表已迁居，正常迁居不等于出逃。');
INSERT INTO "person_events" VALUES('ev_v4_zheng_death','p_zhengyutong','逝世','因病逝世','2016-09-29',NULL,'day','公开证据支持','life','已逝世','v4_zheng_death',NULL,NULL,'2016-10-13','2026-09-22T23:37:42-07:00','独立补充的公开资料；不是本期主播给出的事件日期。死亡不等于遇害。');
INSERT INTO "person_events" VALUES('ev_v4_xiao_sentence','p_xiaojianhua','判刑','一审判处有期徒刑十三年','2022-08-19',NULL,'day','公开证据支持','judicial','有一审判刑记录','v4_xiao_sentence',NULL,NULL,'2022-08-19','2026-09-22T23:37:42-07:00','独立补充的法院宣判报道；不推算刑满日或把判刑记录等同于当前服刑地点与状态。');
INSERT INTO "person_events" VALUES('ev_v4_yu_chair','p_yuliang','任职','接任万科董事会主席','2017-06-30',NULL,'day','公开证据支持',NULL,NULL,'v4_vanke2017',NULL,NULL,'2017-07-12','2026-09-22T23:37:42-07:00','与更早担任总裁的时间分开。');
INSERT INTO "person_events" VALUES('ev_ic8_gala18','p_jingtian','公开演出','参与2018央视春晚','2018-02-15',NULL,'day','公开证据支持',NULL,NULL,'ic8_gala2018',NULL,NULL,NULL,'2026-09-23T00:17:15-07:00','与李易峰、江疏影合唱；不证明幕后推荐。');
INSERT INTO "person_events" VALUES('ev_ic8_gala19','p_jingtian','公开演出','参与2019央视春晚','2019-02-04',NULL,'day','公开证据支持',NULL,NULL,'ic8_gala2019',NULL,NULL,'2019-02-04','2026-09-23T00:17:15-07:00','与秦岚、江疏影等合唱。');
INSERT INTO "person_events" VALUES('ev_ic8_baihua19','p_jingtian','公开主持','主持文联2019百花迎春活动','2019-01-17',NULL,'day','公开证据支持',NULL,NULL,'ic8_baihua2019',NULL,NULL,'2019-01-17','2026-09-23T00:17:15-07:00','官方专题支持；节目只强调2018一次，公开履历并不限于一次。');
INSERT INTO "person_events" VALUES('ev_ic8_romance','p_jingtian','公开交往','公开与张继科的恋情','2018-03-28',NULL,'day','公开证据支持',NULL,NULL,'ic8_breakup',NULL,NULL,'2019-06-09','2026-09-23T00:17:15-07:00','公开日期不是实际交往开始日。');
INSERT INTO "person_events" VALUES('ev_ic8_breakup','p_jingtian','关系结束公告','公布与张继科分手','2019-06-09',NULL,'day','公开证据支持',NULL,NULL,'ic8_breakup',NULL,NULL,'2019-06-09','2026-09-23T00:17:15-07:00','当日工作人员确认消息；实际分手日未知。');
INSERT INTO "person_events" VALUES('ev_ic8_penalty','p_jingtian','行政处罚通报','监管通报广告代言行政处罚','2022-05-28',NULL,'day','公开证据支持',NULL,NULL,'ic8_penalty',NULL,NULL,'2022-05-28','2026-09-23T00:17:15-07:00','本日期为通报发布这一公开事件；实际处罚决定日未注明。2021年底为发现线索。罚没合计722.12万元，不是刑事判决，不产生服刑状态。');
INSERT INTO "person_events" VALUES('ev_ic8_wanda','p_wangjianlin','企业交易签约','万达签约并购传奇影业','2016-01-12',NULL,'day','公开证据支持',NULL,NULL,'ic8_wanda2016',NULL,NULL,'2016-01-12','2026-09-23T00:17:15-07:00','企业交易，不等于个人购买；纠正节目后段2015年说法。');
INSERT INTO "person_events" VALUES('ev_ic8_jiafeng','p_jiafeng_shaanxi','任职','获任陕西省政府副秘书长','2019-09-05',NULL,'day','公开证据支持',NULL,NULL,'ic8_jiafeng2019',NULL,NULL,'2019-09-17','2026-09-23T00:17:15-07:00','政府任免日期与9月17日报道日期分别记录。');
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
INSERT INTO "relationship_evidence" VALUES('re1','r_ye_chen','video',NULL,'观众说法，由主播转述','01:56–02:07','质疑','观众认为两人交集有限，理由涉及籍贯及工作经历。','未独立核实','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re2','r_ye_chen','video','p_lu','主播判断','02:09–02:16','支持','主播否定前述判断并再次指向陈增光，关系细节未展开。','单一来源主张','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re3','r_chen_xi','chen_interview','p_chen','当事人访谈及采访背景','人物介绍及宁德调研回忆','支持','陈增光任副书记、行署专员期间与任地委书记的习近平共事。','共事经历有公开记录；好恶未评估','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re4','r_chen_xi','xi_bio',NULL,'新华社公开履历','1988–1990年任职段','支持','习近平在相应年份担任宁德地委书记，与陈增光任职记录相吻合。','官方履历支持','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re5','r_chen_xi','video',NULL,'观众说法，由主播转述','02:04–02:07','背景','观众谈及两人最后会面时间；该说法未获本次检索证明。','未独立核实，不据此确定最后接触日期','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re6','r_chen_xi_succession','chen_interview','p_chen','当事人访谈背景','人物介绍','支持','人物介绍记录陈增光接续习近平任宁德地委书记。','公开履历支持','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re7','r_zhong_xi','zhong_media',NULL,'媒体转述','早期任职经历段','支持','报道称钟绍军在浙江时期担任习近平秘书，并随工作地点变化进入相关办公室。','媒体转述，未独立验证原始任免','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re8','r_yuan_wang','video','p_lu','主播陈述','19:16–19:22','支持','主播推荐元霸并提及其对大老王的技术分析支持。','单一来源主张','2026-09-22T17:44:35-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v2_1','r_lu_tao_program','video_UwwbGnDF5WA','p_lu','鲁社长（按上下文识别）','00:30；07:38–07:47；08:52；13:43–14:23','支持','鲁社长请陶瑞回答问题并提到后续共同节目安排。','主播在视频中的公开表述','2026-09-22T18:03:37-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v2_2','r_lu_yuantengfei','video_UwwbGnDF5WA','p_lu','鲁社长（按上下文识别）','23:24–23:58','支持','主播肯定其历史教学和科普贡献，并称其内容是自己儿子的历史入门来源；不推断现实师生关系。','主播在视频中的公开表述','2026-09-22T18:03:37-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v2_3','r_lu_yuantengfei','video_UwwbGnDF5WA','p_lu','鲁社长（按上下文识别）','24:00–24:17','背景','主播同时批评其历史观点缺少超出通识范围的创新；这是主播评价，不是本库的学术结论。','主播在视频中的公开表述','2026-09-22T18:03:37-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v2_4','r_lu_liuzhongjing','video_UwwbGnDF5WA','p_lu','鲁社长（按上下文识别）','24:27–24:43','支持','主播自述对刘仲敬的评价以赞扬为主，也提出不足，并提到粉丝异议。','主播在视频中的公开表述','2026-09-22T18:03:37-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v3_r_tang_zhong','r_tang_zhong','video_iUo_HMNIf54','p_lu','主播判断','00:35–00:39','支持','主播认为关系密切；未提供机制、起止日期或独立佐证。','主播说法，待核实','2026-09-22T22:18:22-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v3_r_bai_meng','r_bai_meng','video_iUo_HMNIf54','p_lu','主播判断','00:45–00:48','支持','主播称白少康与孟建柱有关联；不能直接等同政治忠诚或提拔关系。','主播说法，待核实','2026-09-22T22:18:22-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v3_r_zhao_deng','r_zhao_deng','zhao_deng_history',NULL,'公开资料','正文','支持','1989年政治处置问题出现分歧；不为私人好恶虚构数值。','公开历史报道支持','2026-09-22T22:18:22-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v3_zhao_video','r_zhao_deng','video_iUo_HMNIf54','p_lu','主播解释','01:27–01:33','支持','节目将赵紫阳后来的处境与当时政治分歧联系起来；个人化措辞不是独立证据。','主播解释','2026-09-22T22:18:22-07:00');
INSERT INTO "relationship_evidence" VALUES('re_v3_r_zhao_hu_succession','r_zhao_hu_succession','hu_zhao_transition',NULL,'公开资料','1987年1月16日条目','支持','胡耀邦辞职后，赵紫阳代理总书记；接任不代表私人友好或敌对。','官方机构沿革支持','2026-09-22T22:18:22-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_xu_ning_e','r_v4_xu_ning','yt_oG93w6k-1DY','p_lu','鲁社长','04:16–04:46','支持','主播转述危机前讨论农业扶贫；时间和金额未核实。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_xu_wang_e','r_v4_xu_wang','yt_oG93w6k-1DY','p_lu','鲁社长','17:24–18:00','支持','主播称2008年求援未获回应，并推测后来入股万科有报复动机；未证实私下敌对。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_xu_zheng_e','r_v4_xu_zheng','yt_oG93w6k-1DY','p_lu','鲁社长','21:35–22:16','支持','主播称郑裕彤牵头资金及信用支持；投资额与个人出资须分开核实。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_xu_liu_e','r_v4_xu_liu','yt_oG93w6k-1DY','p_lu','鲁社长','20:40–21:34','支持','主播称共同参加香港牌友聚会；归为市场故事，输款和频率未核实。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_xu_zhang_e','r_v4_xu_zhang','yt_oG93w6k-1DY','p_lu','鲁社长','20:40–21:34','支持','主播称通过引荐进入同一牌友圈；未确认持续时间与亲疏。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_zhang_xiao_e','r_v4_zhang_xiao','yt_oG93w6k-1DY','p_lu','鲁社长','19:15–19:38','支持','主播关于南山人寿收购、退出及获利的主张；未提供具体公司、交易日或监管结论，不认定操纵市场。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_liu_li_e','r_v4_liu_li','yt_oG93w6k-1DY','p_lu','鲁社长','19:39–19:53','支持','本片转述过往交往；未核实起止日期，不推导当前关系。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_liu_guan_e','r_v4_liu_guan','yt_oG93w6k-1DY','p_lu','鲁社长','19:39–20:09','支持','过往关系与私密传闻分开；所谓高尔夫球及就医传闻有当事人否认，不作为事实。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_liu_guan_denial','r_v4_liu_guan','v4_guan_denial',NULL,'刘銮雄（媒体报道记者会）',NULL,'质疑','公开否认相关性暴力及球类传闻；反证针对私密传闻，不用于否定两人过往交往。','存在当事人否认','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_lu_sun_e','r_v4_lu_sun','yt_oG93w6k-1DY','p_lu','鲁社长','15:23–15:30','支持','鲁社长自述早年熟识并常一起喝酒；单方自述，时间未知。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_wen_family_e','r_v4_wen_family','yt_oG93w6k-1DY','p_lu','鲁社长','23:20–23:32','支持','主播称二人为兄弟；姓名有公开资料，亲属关系本次仍按主播主张标注。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_wen_xu_e','r_v4_wen_xu','yt_oG93w6k-1DY','p_lu','鲁社长','23:20–24:15','支持','主播称温家宏持有恒大大量股份、上市后套现；须核对法律主体、比例和交易，不将旧董事公告直接等同于本项主张。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_wen_zheng_e','r_v4_wen_zheng','yt_oG93w6k-1DY','p_lu','鲁社长','23:51–23:58','支持','主播推测温家宏打电话促成援助；没有通话证据，不是已经发生的事实事件。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_wang_yu_e','r_v4_wang_yu','v4_vanke2017',NULL,'万科公告','14:25–14:34','支持','万科公告支持郁亮于2017年6月30日接任董事会主席；不代表二人私交评分。','公开证据支持','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_lu_xu_e','r_v4_lu_xu','yt_oG93w6k-1DY','p_lu','鲁社长','00:34–01:23','支持','主播表示欣赏许家印的社交与经营能力，未声称二人已有私交。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_v4_lu_li_e','r_v4_lu_li','yt_oG93w6k-1DY','p_lu','鲁社长','14:49–15:22','支持','主播评价其市场化经营；不代表二人有私人关系。','主播说法待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_yu_e','r_ic8_wang_yu','yt_iC8a1SW78PE','p_lu','鲁社长','00:00–05:28（章节定位，非逐句）','支持','主播称2017年经俞正声协调化解误解；无私下协调原始证据。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_zhang_e','r_ic8_xi_zhang','yt_iC8a1SW78PE','p_lu','鲁社长','00:00–05:28（章节定位，非逐句）','支持','主播称关系密切；人物身份已核，交往和影响力未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_sicong_claim_e','r_ic8_wang_sicong_claim','yt_iC8a1SW78PE','p_lu','鲁社长','05:28–07:06（章节定位，非逐句）','支持','所谓禁止谈论景甜的命令及动机未独立证实；与父子身份分开。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_lu_jzb_e','r_ic8_lu_jzb','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','节目称二舅；无独立家谱或可靠当事人资料。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_lu_jzg_e','r_ic8_lu_jzg','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','节目称三舅；贾治国按陕西巡视干部消歧，舅甥待核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_lu_jf_e','r_ic8_lu_jf','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','节目称表哥；规范姓名和职务可核，表亲未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jzb_zbx_e','r_ic8_jzb_zbx','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','节目称贾治邦为张勃兴秘书；不以两人同省任职自动证明。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_zbx_peng_e','r_ic8_zbx_peng','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','主播称有亲属关系，未给具体亲等；不补造家谱。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_zbx_xizx_e','r_ic8_zbx_xizx','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','主播称与习仲勋家族来往；具体人、活动、年份不明。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jzb_ljg_e','r_ic8_jzb_ljg','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','主播称李建国也要礼让，属于个人影响力评价，不等于客观亲疏。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_jiang_e','r_ic8_jia_jiang','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','同事、邻居和帮忙搬米煤的故事来自节目；搬运及私交因果未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_xi_e','r_ic8_jia_xi','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','主播将福建升迁及进入江泽民视野归于贾庆林；任职重叠不证明私人提拔。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_jiang_e','r_ic8_xi_jiang','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','支持','主播称经贾庆林进入江泽民视野；无原始会见或引荐材料。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_bo_e','r_ic8_wang_bo','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','节目称曾合作；纽约时报转述王健林曾称两人关系不好。合作性质和亲疏有争议。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_deng_e','r_ic8_wang_deng','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','主播声称合作，并评价邓家影响力；合作事项未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_jia_e','r_ic8_wang_jia','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','政协职务可核，私人引荐、项目支持与交换关系未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_liu_jia_e','r_ic8_liu_jia','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','节目称福建省政府任职期间有上下级联系；具体直接工作链待核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_liu_e','r_ic8_wang_liu','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','节目声称经引荐获得支持；缺少银行主体及决策记录，不认定违规授信。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_lu_e','r_ic8_wang_lu','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','节目声称路征持万达陕西公司49%及集团股权；未明确主体或提供代持证据。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wzg_sun_e','r_ic8_wzg_sun','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','节目以工会等背景评价家族影响力；无具体任用决策证据。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wzg_chen_e','r_ic8_wzg_chen','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','支持','此处陈豪是云南政治人物；不把共同机构经历直接写成已证实提拔。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_gao_e','r_ic8_jia_gao','yt_iC8a1SW78PE','p_lu','鲁社长','16:55–18:05（章节定位，非逐句）','支持','主播由工作背景推测审批帮助；任职履历不证明干预并购。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_cai_e','r_ic8_jia_cai','yt_iC8a1SW78PE','p_lu','鲁社长','16:55–18:05（章节定位，非逐句）','支持','北京办公厅及宣传系统职务可核，私人提拔和审查照顾未核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_nie_e','r_ic8_jia_nie','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','支持','主播归因早年晋升，未取得原始人事决策依据。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_tie_e','r_ic8_jia_tie','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','支持','主播将作协、文联升迁与其影响关联；公开履历不证实该因果。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_li_nie_e','r_ic8_li_nie','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','支持','主播泛称后期晋升受益，具体行为和时间未知。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_li_tie_e','r_ic8_li_tie','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','支持','主播泛称后期晋升受益，具体行为和时间未知。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_falin_e','r_ic8_jia_falin','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','支持','身份及沧州任职已核；本次兄弟关系仍按节目转述保存。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_lin_e','r_ic8_jia_lin','yt_iC8a1SW78PE','p_lu','鲁社长','24:40–27:44（章节定位，非逐句）','支持','主播以此推测行政处罚未获阻止；没有独立证据支持亲信或干预关系。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_lu_guo_e','r_ic8_lu_guo','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','支持','共同制作身份与某人有求于另一人不同；资金协调和投资额待核。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_sun_e','r_ic8_jing_sun','yt_iC8a1SW78PE','p_lu','鲁社长','24:40–27:44（章节定位，非逐句）','支持','主播称2026年8月发生纠纷；内容、时间及对错本次未独立证实，不认定违法。','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_bo_counter','r_ic8_wang_bo','ic8_nyt_wanda',NULL,'王健林（纽约时报转述其公开采访）',NULL,'质疑','公开采访曾称与薄熙来关系不好，与节目直接合作叙事存在张力。','存在当事人反向说法','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_lu_e','r_ic8_jing_lu','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》等作品的演员、出品／制片职能可核；不据此认定亲密或亲子关系。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_lu_video','r_ic8_jing_lu','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_sunhonglei_e','r_ic8_jing_p_sunhonglei','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_sunhonglei_video','r_ic8_jing_p_sunhonglei','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_wuzhenyu_e','r_ic8_jing_p_wuzhenyu','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_wuzhenyu_video','r_ic8_jing_p_wuzhenyu','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_kimheesun_e','r_ic8_jing_p_kimheesun','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_kimheesun_video','r_ic8_jing_p_kimheesun','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_jiangwu_e','r_ic8_jing_p_jiangwu','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_p_jiangwu_video','r_ic8_jing_p_jiangwu','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_guo_e','r_ic8_jing_guo','ic8_zhanguo',NULL,'公开资料',NULL,'支持','《战国》演员与监制的职业项目关联；投资金额及因果另待核。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_guo_video','r_ic8_jing_guo','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala18_p_liyifeng_e','r_ic8_gala18_p_liyifeng','ic8_gala2018',NULL,'公开资料',NULL,'支持','2018央视春晚《赞赞新时代》共同演唱；只定位演出当天。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala18_p_liyifeng_video','r_ic8_gala18_p_liyifeng','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala18_p_jiangshuying_e','r_ic8_gala18_p_jiangshuying','ic8_gala2018',NULL,'公开资料',NULL,'支持','2018央视春晚《赞赞新时代》共同演唱；只定位演出当天。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala18_p_jiangshuying_video','r_ic8_gala18_p_jiangshuying','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala19_p_qinlan_e','r_ic8_gala19_p_qinlan','ic8_gala2019',NULL,'公开资料',NULL,'支持','2019央视春晚《我们都是追梦人》共同演唱；只定位演出当天。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala19_p_qinlan_video','r_ic8_gala19_p_qinlan','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala19_p_jiangshuying_e','r_ic8_gala19_p_jiangshuying','ic8_gala2019',NULL,'公开资料',NULL,'支持','2019央视春晚《我们都是追梦人》共同演唱；只定位演出当天。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_gala19_p_jiangshuying_video','r_ic8_gala19_p_jiangshuying','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_zhang_e','r_ic8_jing_zhang','ic8_breakup',NULL,'公开资料',NULL,'支持','公开恋情窗口为2018-03-28至2019-06-09；实际开始／结束日可能早于公告，不把同游或纹身传闻用作时间边界。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jing_zhang_video','r_ic8_jing_zhang','yt_iC8a1SW78PE','p_lu','鲁社长','18:05–21:43（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_sicong_e','r_ic8_wang_sicong','ic8_wangsicong',NULL,'公开资料',NULL,'支持','公开人物资料支持父子身份；未给关系强度或政治资源评分。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_sicong_video','r_ic8_wang_sicong','yt_iC8a1SW78PE','p_lu','鲁社长','05:28–07:06（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_brother_e','r_ic8_xi_brother','ic8_xiyuanping',NULL,'公开资料',NULL,'支持','公开身份支持兄弟关系；不证明景甜后台传闻。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_brother_video','r_ic8_xi_brother','yt_iC8a1SW78PE','p_lu','鲁社长','00:00–05:28（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_father_e','r_ic8_xi_father','ic8_xizhongxun',NULL,'公开资料',NULL,'支持','公开人物资料支持父子身份。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_father_video','r_ic8_xi_father','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_sister_e','r_ic8_xi_sister','ic8_qiqiaoqiao',NULL,'公开资料',NULL,'支持','公开调查资料支持亲属身份，不表示干预交易。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_xi_sister_video','r_ic8_xi_sister','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_qi_deng_e','r_ic8_qi_deng','ic8_qiqiaoqiao',NULL,'公开资料',NULL,'支持','ICIJ资料支持夫妻身份；起止日期未核。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_qi_deng_video','r_ic8_qi_deng','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wen_daughter_e','r_ic8_wen_daughter','ic8_wenruchun',NULL,'公开资料',NULL,'支持','公开调查资料支持父女身份；不将商业伙伴的持股当成本人持股。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wen_daughter_video','r_ic8_wen_daughter','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_son_e','r_ic8_wang_son','ic8_nyt_wanda',NULL,'公开资料',NULL,'支持','纽约时报公司资料调查所定位的王新宇；避免与同名运动员混淆。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_wang_son_video','r_ic8_wang_son','yt_iC8a1SW78PE','p_lu','鲁社长','12:48–16:55（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_soninlaw_e','r_ic8_jia_soninlaw','ic8_jia_family',NULL,'公开资料',NULL,'支持','公开人物资料及万达调查支持该亲属身份，不证明私下请托。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_soninlaw_video','r_ic8_jia_soninlaw','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_daughter_e','r_ic8_jia_daughter','ic8_jia_family',NULL,'公开资料',NULL,'支持','公开家庭资料；不证明节目所谓转达请托。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_jia_daughter_video','r_ic8_jia_daughter','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_li_jiaqiang_e','r_ic8_li_jiaqiang','ic8_jia_family',NULL,'公开资料',NULL,'支持','公开家庭资料，婚姻起止未核，不编造。','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_li_jiaqiang_video','r_ic8_li_jiaqiang','yt_iC8a1SW78PE','p_lu','鲁社长','08:31–12:48（章节定位，非逐句）','背景','本期提及；事实范围以独立来源为准。','节目对应段落','2026-09-23T00:17:15-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_herundong_e','r_ic8_work_p_herundong','ic8_beautyboss',NULL,'作品演职员资料',NULL,'支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。','公开证据支持','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_herundong_yt','r_ic8_work_p_herundong','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及这一作品合作；动机和出资待核。','节目对应','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_liuye_e','r_ic8_work_p_liuye','ic8_epic',NULL,'作品演职员资料',NULL,'支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。','公开证据支持','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_liuye_yt','r_ic8_work_p_liuye','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及这一作品合作；动机和出资待核。','节目对应','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_zhangfengyi_e','r_ic8_work_p_zhangfengyi','ic8_sunzi',NULL,'作品演职员资料',NULL,'支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。','公开证据支持','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_ic8_work_p_zhangfengyi_yt','r_ic8_work_p_zhangfengyi','yt_iC8a1SW78PE','p_lu','鲁社长','21:43–24:40（章节定位，非逐句）','背景','本期提及这一作品合作；动机和出资待核。','节目对应','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('ic8_epic_context','r_ic8_work_p_liuye','ic8_epic',NULL,'作品目录',NULL,'背景','不同年代平台演员表可能变化；赵薇在节目被明确提及，身份保留，尚不由单一现存表补定其与景甜的合作时间。','目录差异说明','2026-09-23T00:22:10-07:00');
INSERT INTO "relationship_evidence" VALUES('r_family_xi_mother_ev','r_family_xi_mother','family_qixin_2018',NULL,'公开人物及家庭资料',NULL,'支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。','公开证据支持','2026-09-23T00:32:45-07:00');
INSERT INTO "relationship_evidence" VALUES('r_family_yuan_mother_ev','r_family_yuan_mother','family_qixin_2015',NULL,'公开人物及家庭资料',NULL,'支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。','公开证据支持','2026-09-23T00:32:45-07:00');
INSERT INTO "relationship_evidence" VALUES('r_family_xi_parents_ev','r_family_xi_parents','family_qixin_2018',NULL,'公开人物及家庭资料',NULL,'支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。','公开证据支持','2026-09-23T00:32:45-07:00');
INSERT INTO "relationship_evidence" VALUES('r_family_yuan_father_ev','r_family_yuan_father','family_qixin_2015',NULL,'公开人物及家庭资料',NULL,'支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。','公开证据支持','2026-09-23T00:32:45-07:00');
CREATE TABLE relationship_periods (
 id TEXT PRIMARY KEY, relationship_id TEXT NOT NULL REFERENCES relationships(id),
 valid_from TEXT, valid_to TEXT,
 temporal_mode TEXT NOT NULL CHECK(temporal_mode IN ('interval','point','start_only','undated')),
 relationship_type TEXT NOT NULL, affinity INTEGER CHECK(affinity BETWEEN -100 AND 100),
 strength INTEGER CHECK(strength BETWEEN 1 AND 5), source_id TEXT REFERENCES sources(id),
 confidence TEXT NOT NULL, verification TEXT NOT NULL, reported_at TEXT, recorded_at TEXT NOT NULL,
 note TEXT NOT NULL, CHECK(valid_from IS NULL OR valid_to IS NULL OR valid_from<=valid_to)
);
INSERT INTO "relationship_periods" VALUES('rp_r_ye_chen','r_ye_chen',NULL,NULL,'undated','未明确的政治关联',NULL,NULL,'video','低','说法冲突，待核实',NULL,'2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_chen_xi','r_chen_xi','1988','1990','interval','宁德时期共事',NULL,3,'chen_interview','高','公开访谈与履历支持','2020-06-27','2026-09-22T22:18:22-07:00','以来源时间精度回看关系。');
INSERT INTO "relationship_periods" VALUES('rp_r_chen_xi_succession','r_chen_xi_succession','1990','1990','point','接任地委书记',NULL,NULL,'chen_interview','高','公开访谈履历支持','2020-06-27','2026-09-22T22:18:22-07:00','以来源时间精度回看关系。');
INSERT INTO "relationship_periods" VALUES('rp_r_zhong_xi','r_zhong_xi','2002',NULL,'start_only','秘书服务关系',NULL,NULL,'zhong_media','中','媒体转述，待交叉核实','2019-11-11','2026-09-22T22:18:22-07:00','只有起点时表示已记录开始，不能断定持续至今。');
INSERT INTO "relationship_periods" VALUES('rp_r_yuan_wang','r_yuan_wang',NULL,NULL,'undated','技术分析支持',NULL,NULL,'video','低','主播单方陈述',NULL,'2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_lu_tao_program','r_lu_tao_program',NULL,NULL,'undated','共同参与节目问答',NULL,1,'video_UwwbGnDF5WA','高','本期合作有字幕支持',NULL,'2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_lu_yuantengfei','r_lu_yuantengfei',NULL,NULL,'undated','公开评价：高度肯定并有学术批评',50,NULL,'video_UwwbGnDF5WA','高','主播公开态度',NULL,'2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_lu_liuzhongjing','r_lu_liuzhongjing',NULL,NULL,'undated','公开评价：尊敬并指出不足',25,NULL,'video_UwwbGnDF5WA','高','主播公开态度',NULL,'2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_tang_zhong','r_tang_zhong',NULL,NULL,'undated','亲近关系（主播主张）',NULL,NULL,'video_iUo_HMNIf54','低','主播说法，待核实','2026-09-14','2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_bai_meng','r_bai_meng',NULL,NULL,'undated','政治关联（主播主张）',NULL,NULL,'video_iUo_HMNIf54','低','主播说法，待核实','2026-09-14','2026-09-22T22:18:22-07:00','没有实际起止时间，不以收录日代填。');
INSERT INTO "relationship_periods" VALUES('rp_r_zhao_deng','r_zhao_deng','1989','1989','point','1989年政治分歧',NULL,NULL,'zhao_deng_history','高','公开历史报道支持','2004-10-17','2026-09-22T22:18:22-07:00','以来源时间精度回看关系。');
INSERT INTO "relationship_periods" VALUES('rp_r_zhao_hu_succession','r_zhao_hu_succession','1987-01-16','1987-01-16','point','接任代理总书记',NULL,NULL,'hu_zhao_transition','高','官方机构沿革支持','2018-11-20','2026-09-22T22:18:22-07:00','以来源时间精度回看关系。');
INSERT INTO "relationship_periods" VALUES('r_v4_xu_ning_t','r_v4_xu_ning',NULL,NULL,'undated','会面转述',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_xu_wang_t','r_v4_xu_wang','2008',NULL,'point','求助未获回应（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','日期仅为该次事件，不表示此后一直存在关系。');
INSERT INTO "relationship_periods" VALUES('r_v4_xu_zheng_t','r_v4_xu_zheng','2008',NULL,'point','投资支持（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','日期仅为该次事件，不表示此后一直存在关系。');
INSERT INTO "relationship_periods" VALUES('r_v4_xu_liu_t','r_v4_xu_liu',NULL,NULL,'undated','社交往来（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_xu_zhang_t','r_v4_xu_zhang',NULL,NULL,'undated','社交往来（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_zhang_xiao_t','r_v4_zhang_xiao',NULL,NULL,'undated','交易合作及分歧（主张）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_liu_li_t','r_v4_liu_li',NULL,NULL,'undated','过往感情关系（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_liu_guan_t','r_v4_liu_guan',NULL,NULL,'undated','过往感情关系（转述）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_lu_sun_t','r_v4_lu_sun',NULL,NULL,'undated','交往自述',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_wen_family_t','r_v4_wen_family',NULL,NULL,'undated','兄弟（待核）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_wen_xu_t','r_v4_wen_xu',NULL,NULL,'undated','企业持股关联（主张）',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_wen_zheng_t','r_v4_wen_zheng',NULL,NULL,'undated','推测的求援引荐',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_wang_yu_t','r_v4_wang_yu','2017-06-30',NULL,'point','董事会主席接任',NULL,NULL,'v4_vanke2017','高','公开证据支持','2017-07-12','2026-09-22T23:37:42-07:00','日期仅为该次事件，不表示此后一直存在关系。');
INSERT INTO "relationship_periods" VALUES('r_v4_lu_xu_t','r_v4_lu_xu',NULL,NULL,'undated','公开评价',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_v4_lu_li_t','r_v4_lu_li',NULL,NULL,'undated','公开评价',NULL,NULL,'yt_oG93w6k-1DY','低','主播说法待核实','2026-09-20','2026-09-22T23:37:42-07:00','发生时间或持续区间未知；历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_yu_t','r_ic8_wang_yu',NULL,NULL,'undated','危机协调（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_xi_zhang_t','r_ic8_xi_zhang',NULL,NULL,'undated','友好往来（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_sicong_claim_t','r_ic8_wang_sicong_claim',NULL,NULL,'undated','要求避谈（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_lu_jzb_t','r_ic8_lu_jzb',NULL,NULL,'undated','舅甥（待核）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_lu_jzg_t','r_ic8_lu_jzg',NULL,NULL,'undated','舅甥（待核）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_lu_jf_t','r_ic8_lu_jf',NULL,NULL,'undated','表亲（待核）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jzb_zbx_t','r_ic8_jzb_zbx',NULL,NULL,'undated','秘书经历（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_zbx_peng_t','r_ic8_zbx_peng',NULL,NULL,'undated','亲属（待核）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_zbx_xizx_t','r_ic8_zbx_xizx',NULL,NULL,'undated','家族往来（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jzb_ljg_t','r_ic8_jzb_ljg',NULL,NULL,'undated','相互礼让（评价）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_jiang_t','r_ic8_jia_jiang',NULL,NULL,'undated','同事与私交轶事（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_xi_t','r_ic8_jia_xi',NULL,NULL,'undated','提拔引荐（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_xi_jiang_t','r_ic8_xi_jiang',NULL,NULL,'undated','引荐认识（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_bo_t','r_ic8_wang_bo',NULL,NULL,'undated','政商合作（有反向说法）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_deng_t','r_ic8_wang_deng',NULL,NULL,'undated','合作（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_jia_t','r_ic8_wang_jia',NULL,NULL,'undated','引荐与支持（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_liu_jia_t','r_ic8_liu_jia',NULL,NULL,'undated','福建共事（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_liu_t','r_ic8_wang_liu',NULL,NULL,'undated','授信协调（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_lu_t','r_ic8_wang_lu',NULL,NULL,'undated','持股与商业合作（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wzg_sun_t','r_ic8_wzg_sun',NULL,NULL,'undated','影响任用（推测）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wzg_chen_t','r_ic8_wzg_chen',NULL,NULL,'undated','影响任用（推测）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_gao_t','r_ic8_jia_gao',NULL,NULL,'undated','尊重与政策协调（推测）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_cai_t','r_ic8_jia_cai',NULL,NULL,'undated','秘书与提拔（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_nie_t','r_ic8_jia_nie',NULL,NULL,'undated','提拔（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_tie_t','r_ic8_jia_tie',NULL,NULL,'undated','提拔（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_li_nie_t','r_ic8_li_nie',NULL,NULL,'undated','提拔（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_li_tie_t','r_ic8_li_tie',NULL,NULL,'undated','提拔（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_falin_t','r_ic8_jia_falin',NULL,NULL,'undated','兄弟（待核）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_lin_t','r_ic8_jia_lin',NULL,NULL,'undated','政治网络归属（主张）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_lu_guo_t','r_ic8_lu_guo',NULL,NULL,'undated','投资协调（转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_sun_t','r_ic8_jing_sun',NULL,NULL,'undated','公开争议（主播转述）',NULL,NULL,'yt_iC8a1SW78PE','低','主播说法待核实','2026-09-15','2026-09-23T00:17:15-07:00','主播叙事；关系时间未独立核实，历史视图默认隐藏。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_lu_t','r_ic8_jing_lu','2011',NULL,'point','电影制作合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_p_sunhonglei_t','r_ic8_jing_p_sunhonglei','2011',NULL,'point','同片表演合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_p_wuzhenyu_t','r_ic8_jing_p_wuzhenyu','2011',NULL,'point','同片表演合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_p_kimheesun_t','r_ic8_jing_p_kimheesun','2011',NULL,'point','同片表演合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_p_jiangwu_t','r_ic8_jing_p_jiangwu','2011',NULL,'point','同片表演合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_guo_t','r_ic8_jing_guo','2011',NULL,'point','同片制作合作',NULL,NULL,'ic8_zhanguo','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_gala18_p_liyifeng_t','r_ic8_gala18_p_liyifeng','2018-02-15',NULL,'point','同节目表演合作',NULL,NULL,'ic8_gala2018','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_gala18_p_jiangshuying_t','r_ic8_gala18_p_jiangshuying','2018-02-15',NULL,'point','同节目表演合作',NULL,NULL,'ic8_gala2018','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_gala19_p_qinlan_t','r_ic8_gala19_p_qinlan','2019-02-04',NULL,'point','同节目表演合作',NULL,NULL,'ic8_gala2019','高','公开证据支持','2019-02-04','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_gala19_p_jiangshuying_t','r_ic8_gala19_p_jiangshuying','2019-02-04',NULL,'point','同节目表演合作',NULL,NULL,'ic8_gala2019','高','公开证据支持','2019-02-04','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jing_zhang_t','r_ic8_jing_zhang','2018-03-28','2019-06-09','interval','公开恋情记录',NULL,NULL,'ic8_breakup','高','公开证据支持','2019-06-09','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_sicong_t','r_ic8_wang_sicong',NULL,NULL,'undated','父子',NULL,NULL,'ic8_wangsicong','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_xi_brother_t','r_ic8_xi_brother',NULL,NULL,'undated','兄弟',NULL,NULL,'ic8_xiyuanping','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_xi_father_t','r_ic8_xi_father',NULL,NULL,'undated','父子',NULL,NULL,'ic8_xizhongxun','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_xi_sister_t','r_ic8_xi_sister',NULL,NULL,'undated','姐弟',NULL,NULL,'ic8_qiqiaoqiao','高','公开证据支持','2014-01-22','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_qi_deng_t','r_ic8_qi_deng',NULL,NULL,'undated','夫妻',NULL,NULL,'ic8_qiqiaoqiao','高','公开证据支持','2014-01-22','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wen_daughter_t','r_ic8_wen_daughter',NULL,NULL,'undated','父女',NULL,NULL,'ic8_wenruchun','高','公开证据支持','2014-01-22','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_wang_son_t','r_ic8_wang_son',NULL,NULL,'undated','父子',NULL,NULL,'ic8_nyt_wanda','高','公开证据支持','2015-04-28','2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_soninlaw_t','r_ic8_jia_soninlaw',NULL,NULL,'undated','岳父与女婿',NULL,NULL,'ic8_jia_family','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_jia_daughter_t','r_ic8_jia_daughter',NULL,NULL,'undated','父女',NULL,NULL,'ic8_jia_family','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_li_jiaqiang_t','r_ic8_li_jiaqiang',NULL,NULL,'undated','夫妻',NULL,NULL,'ic8_jia_family','高','公开证据支持',NULL,'2026-09-23T00:17:15-07:00','时间表示公开记录可证实的范围，不等于实际私交起止。');
INSERT INTO "relationship_periods" VALUES('r_ic8_work_p_herundong_t','r_ic8_work_p_herundong','2010',NULL,'point','同片表演合作',NULL,NULL,'ic8_beautyboss','高','公开证据支持',NULL,'2026-09-23T00:22:10-07:00','作品年份的点状证据；不代表全年每天均有私交。');
INSERT INTO "relationship_periods" VALUES('r_ic8_work_p_liuye_t','r_ic8_work_p_liuye','2009',NULL,'point','同片表演合作',NULL,NULL,'ic8_epic','高','公开证据支持',NULL,'2026-09-23T00:22:10-07:00','作品年份的点状证据；不代表全年每天均有私交。');
INSERT INTO "relationship_periods" VALUES('r_ic8_work_p_zhangfengyi_t','r_ic8_work_p_zhangfengyi','2011',NULL,'point','同片表演合作',NULL,NULL,'ic8_sunzi','高','公开证据支持',NULL,'2026-09-23T00:22:10-07:00','作品年份的点状证据；不代表全年每天均有私交。');
INSERT INTO "relationship_periods" VALUES('r_family_xi_mother_period','r_family_xi_mother',NULL,NULL,'undated','母子',NULL,NULL,'family_qixin_2018','高','公开证据支持',NULL,'2026-09-23T00:32:45-07:00','亲属身份明确，关系年代未采集；不按报道日反填发生日。');
INSERT INTO "relationship_periods" VALUES('r_family_yuan_mother_period','r_family_yuan_mother',NULL,NULL,'undated','母子',NULL,NULL,'family_qixin_2015','高','公开证据支持',NULL,'2026-09-23T00:32:45-07:00','亲属身份明确，关系年代未采集；不按报道日反填发生日。');
INSERT INTO "relationship_periods" VALUES('r_family_xi_parents_period','r_family_xi_parents',NULL,NULL,'undated','夫妻',NULL,NULL,'family_qixin_2018','高','公开证据支持',NULL,'2026-09-23T00:32:45-07:00','亲属身份明确，关系年代未采集；不按报道日反填发生日。');
INSERT INTO "relationship_periods" VALUES('r_family_yuan_father_period','r_family_yuan_father',NULL,NULL,'undated','父子',NULL,NULL,'family_qixin_2015','高','公开证据支持',NULL,'2026-09-23T00:32:45-07:00','亲属身份明确，关系年代未采集；不按报道日反填发生日。');
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
INSERT INTO "relationships" VALUES('r_ye_chen','p_ye','p_chen','未明确的政治关联','未确定',NULL,NULL,NULL,NULL,'低','说法冲突，待核实','观众称交集有限，主播反驳但未交代具体关联方式；不能推断好恶、提拔或派系。',NULL,'2026-09-22T17:44:35-07:00','未评估');
INSERT INTO "relationships" VALUES('r_chen_xi','p_chen','p_xi','宁德时期共事','双向','1988','1990',NULL,3,'高','公开访谈与履历支持','宁德任职重叠且当事人叙述多次共同调研，按规则评为3级持续工作联系；不评价私人好感，不能外推到2026年。',NULL,'2026-09-22T17:44:35-07:00','未评估');
INSERT INTO "relationships" VALUES('r_chen_xi_succession','p_chen','p_xi','接任地委书记','A→B','1990','1990',NULL,NULL,'高','公开访谈履历支持','A接任B曾任岗位；接任不等于提拔关系或派系归属。',NULL,'2026-09-22T17:44:35-07:00','未评估');
INSERT INTO "relationships" VALUES('r_zhong_xi','p_zhong','p_xi','秘书服务关系','A→B','2002',NULL,NULL,NULL,'中','媒体转述，待交叉核实','联合早报对秘书经历的叙述转引其他网站；支持建立待核实工作关系，不足以量化亲疏或确认派系。',NULL,'2026-09-22T17:44:35-07:00','未评估');
INSERT INTO "relationships" VALUES('r_yuan_wang','p_yuan','p_wang','技术分析支持','A→B',NULL,NULL,NULL,NULL,'低','主播单方陈述','主播将元霸描述为大老王的技术分析支持来源；联系频率、持续时间和双方评价未明。',NULL,'2026-09-22T17:44:35-07:00','未评估');
INSERT INTO "relationships" VALUES('r_lu_tao_program','p_lu','p_tao','共同参与节目问答','双向',NULL,NULL,NULL,1,'高','本期合作有字幕支持','本期多次交接问答并谈及未来合作计划；强度1仅表示本期可观察接触，不外推长期私交。',NULL,'2026-09-22T18:03:37-07:00','未评估');
INSERT INTO "relationships" VALUES('r_lu_yuantengfei','p_lu','p_yuantengfei','公开评价：高度肯定并有学术批评','A→B',NULL,NULL,50,NULL,'高','主播公开态度','主播明确赞赏历史科普与教学，同时指出研究创新方面的局限。+50是本库对公开评价的粗粒度编码，非私人好感测量、非主播给出的95–99评分。',NULL,'2026-09-22T18:03:37-07:00','公开评价');
INSERT INTO "relationships" VALUES('r_lu_liuzhongjing','p_lu','p_liuzhongjing','公开评价：尊敬并指出不足','A→B',NULL,NULL,25,NULL,'高','主播公开态度','主播自述尊敬且曾撰文赞扬，也指出不足。+25编码有保留的公开肯定；未查阅原推文，不推断互相认识或政治联盟。',NULL,'2026-09-22T18:03:37-07:00','公开评价');
INSERT INTO "relationships" VALUES('r_tang_zhong','p_tangfeifan','p_zhong','亲近关系（主播主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法，待核实','主播认为关系密切；未提供机制、起止日期或独立佐证。',NULL,'2026-09-22T22:18:22-07:00','未评估');
INSERT INTO "relationships" VALUES('r_bai_meng','p_baishaokang','p_mengjianzhu','政治关联（主播主张）','A→B',NULL,NULL,NULL,NULL,'低','主播说法，待核实','主播称白少康与孟建柱有关联；不能直接等同政治忠诚或提拔关系。',NULL,'2026-09-22T22:18:22-07:00','未评估');
INSERT INTO "relationships" VALUES('r_zhao_deng','p_zhaoziyang','p_dengxiaoping','1989年政治分歧','双向','1989','1989',NULL,NULL,'高','公开历史报道支持','1989年政治处置问题出现分歧；不为私人好恶虚构数值。',NULL,'2026-09-22T22:18:22-07:00','未评估');
INSERT INTO "relationships" VALUES('r_zhao_hu_succession','p_zhaoziyang','p_huyaobang','接任代理总书记','A→B','1987-01-16','1987-01-16',NULL,NULL,'高','官方机构沿革支持','胡耀邦辞职后，赵紫阳代理总书记；接任不代表私人友好或敌对。',NULL,'2026-09-22T22:18:22-07:00','未评估');
INSERT INTO "relationships" VALUES('r_v4_xu_ning','p_xujiayin','p_ninggaoning','会面转述','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播转述危机前讨论农业扶贫；时间和金额未核实。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_xu_wang','p_xujiayin','p_wangshi','求助未获回应（转述）','A→B','2008',NULL,NULL,NULL,'低','主播说法待核实','主播称2008年求援未获回应，并推测后来入股万科有报复动机；未证实私下敌对。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_xu_zheng','p_zhengyutong','p_xujiayin','投资支持（转述）','A→B','2008',NULL,NULL,NULL,'低','主播说法待核实','主播称郑裕彤牵头资金及信用支持；投资额与个人出资须分开核实。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_xu_liu','p_xujiayin','p_liuluanxiong','社交往来（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称共同参加香港牌友聚会；归为市场故事，输款和频率未核实。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_xu_zhang','p_xujiayin','p_zhangsongqiao','社交往来（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称通过引荐进入同一牌友圈；未确认持续时间与亲疏。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_zhang_xiao','p_zhangsongqiao','p_xiaojianhua','交易合作及分歧（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播关于南山人寿收购、退出及获利的主张；未提供具体公司、交易日或监管结论，不认定操纵市场。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_liu_li','p_liuluanxiong','p_lijiaxin','过往感情关系（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','本片转述过往交往；未核实起止日期，不推导当前关系。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_liu_guan','p_liuluanxiong','p_guanzhilin','过往感情关系（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','过往关系与私密传闻分开；所谓高尔夫球及就医传闻有当事人否认，不作为事实。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_lu_sun','p_lu','p_sunhongbin','交往自述','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','鲁社长自述早年熟识并常一起喝酒；单方自述，时间未知。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_wen_family','p_wenjiabao','p_wenjiahong','兄弟（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称二人为兄弟；姓名有公开资料，亲属关系本次仍按主播主张标注。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_wen_xu','p_wenjiahong','p_xujiayin','企业持股关联（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称温家宏持有恒大大量股份、上市后套现；须核对法律主体、比例和交易，不将旧董事公告直接等同于本项主张。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_wen_zheng','p_wenjiahong','p_zhengyutong','推测的求援引荐','A→B',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播推测温家宏打电话促成援助；没有通话证据，不是已经发生的事实事件。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_wang_yu','p_wangshi','p_yuliang','董事会主席接任','A→B','2017-06-30',NULL,NULL,NULL,'高','公开证据支持','万科公告支持郁亮于2017年6月30日接任董事会主席；不代表二人私交评分。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_lu_xu','p_lu','p_xujiayin','公开评价','A→B',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播表示欣赏许家印的社交与经营能力，未声称二人已有私交。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_v4_lu_li','p_lu','p_lijiacheng','公开评价','A→B',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播评价其市场化经营；不代表二人有私人关系。',NULL,'2026-09-22T23:37:42-07:00','未评分');
INSERT INTO "relationships" VALUES('r_ic8_wang_yu','p_wangjianlin','p_yuzhengsheng','危机协调（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称2017年经俞正声协调化解误解；无私下协调原始证据。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_xi_zhang','p_xiyuanping','p_zhangjun_funde','友好往来（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称关系密切；人物身份已核，交往和影响力未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_sicong_claim','p_wangjianlin','p_wangsicong','要求避谈（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','所谓禁止谈论景甜的命令及动机未独立证实；与父子身份分开。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_lu_jzb','p_luzheng','p_jiazhibang','舅甥（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称二舅；无独立家谱或可靠当事人资料。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_lu_jzg','p_luzheng','p_jiazhiguo_shaanxi','舅甥（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称三舅；贾治国按陕西巡视干部消歧，舅甥待核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_lu_jf','p_luzheng','p_jiafeng_shaanxi','表亲（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称表哥；规范姓名和职务可核，表亲未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jzb_zbx','p_jiazhibang','p_zhangboxing','秘书经历（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称贾治邦为张勃兴秘书；不以两人同省任职自动证明。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_zbx_peng','p_zhangboxing','p_pengzhen','亲属（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称有亲属关系，未给具体亲等；不补造家谱。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_zbx_xizx','p_zhangboxing','p_xizhongxun','家族往来（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称与习仲勋家族来往；具体人、活动、年份不明。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jzb_ljg','p_jiazhibang','p_lijianguo','相互礼让（评价）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称李建国也要礼让，属于个人影响力评价，不等于客观亲疏。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_jiang','p_jiaqinglin','p_jiangzemin','同事与私交轶事（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','同事、邻居和帮忙搬米煤的故事来自节目；搬运及私交因果未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_xi','p_jiaqinglin','p_xi','提拔引荐（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播将福建升迁及进入江泽民视野归于贾庆林；任职重叠不证明私人提拔。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_xi_jiang','p_xi','p_jiangzemin','引荐认识（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称经贾庆林进入江泽民视野；无原始会见或引荐材料。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_bo','p_wangjianlin','p_boxilai','政商合作（有反向说法）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称曾合作；纽约时报转述王健林曾称两人关系不好。合作性质和亲疏有争议。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_deng','p_wangjianlin','p_dengpufang','合作（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播声称合作，并评价邓家影响力；合作事项未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_jia','p_wangjianlin','p_jiaqinglin','引荐与支持（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','政协职务可核，私人引荐、项目支持与交换关系未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_liu_jia','p_liumingkang','p_jiaqinglin','福建共事（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目称福建省政府任职期间有上下级联系；具体直接工作链待核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_liu','p_wangjianlin','p_liumingkang','授信协调（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目声称经引荐获得支持；缺少银行主体及决策记录，不认定违规授信。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_lu','p_wangjianlin','p_luzheng','持股与商业合作（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目声称路征持万达陕西公司49%及集团股权；未明确主体或提供代持证据。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wzg_sun','p_wangzhaoguo','p_sunchunlan','影响任用（推测）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','节目以工会等背景评价家族影响力；无具体任用决策证据。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wzg_chen','p_wangzhaoguo','p_chenhao_yunnan','影响任用（推测）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','此处陈豪是云南政治人物；不把共同机构经历直接写成已证实提拔。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_gao','p_jiaqinglin','p_gaohucheng','尊重与政策协调（推测）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播由工作背景推测审批帮助；任职履历不证明干预并购。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_cai','p_jiaqinglin','p_caifuchao','秘书与提拔（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','北京办公厅及宣传系统职务可核，私人提拔和审查照顾未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_nie','p_jiaqinglin','p_niechenxi','提拔（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播归因早年晋升，未取得原始人事决策依据。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_tie','p_jiaqinglin','p_tiening','提拔（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播将作协、文联升迁与其影响关联；公开履历不证实该因果。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_li_nie','p_lizhanshu','p_niechenxi','提拔（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播泛称后期晋升受益，具体行为和时间未知。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_li_tie','p_lizhanshu','p_tiening','提拔（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播泛称后期晋升受益，具体行为和时间未知。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_falin','p_jiaqinglin','p_jiafalin','兄弟（待核）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','身份及沧州任职已核；本次兄弟关系仍按节目转述保存。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_lin','p_jiaqinglin','p_linkeqing','政治网络归属（主张）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播以此推测行政处罚未获阻止；没有独立证据支持亲信或干预关系。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_lu_guo','p_luzheng','p_guoshoubao','投资协调（转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','共同制作身份与某人有求于另一人不同；资金协调和投资额待核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_sun','p_jingtian','p_sunge','公开争议（主播转述）','双向',NULL,NULL,NULL,NULL,'低','主播说法待核实','主播称2026年8月发生纠纷；内容、时间及对错本次未独立证实，不认定违法。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_lu','p_jingtian','p_luzheng','电影制作合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》等作品的演员、出品／制片职能可核；不据此认定亲密或亲子关系。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_p_sunhonglei','p_jingtian','p_sunhonglei','同片表演合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_p_wuzhenyu','p_jingtian','p_wuzhenyu','同片表演合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_p_kimheesun','p_jingtian','p_kimheesun','同片表演合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_p_jiangwu','p_jingtian','p_jiangwu','同片表演合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》演职员记录支持职业合作，不表示私人关系或政治圈层。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_guo','p_jingtian','p_guoshoubao','同片制作合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','《战国》演员与监制的职业项目关联；投资金额及因果另待核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_gala18_p_liyifeng','p_jingtian','p_liyifeng','同节目表演合作','双向','2018-02-15',NULL,NULL,NULL,'高','公开证据支持','2018央视春晚《赞赞新时代》共同演唱；只定位演出当天。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_gala18_p_jiangshuying','p_jingtian','p_jiangshuying','同节目表演合作','双向','2018-02-15',NULL,NULL,NULL,'高','公开证据支持','2018央视春晚《赞赞新时代》共同演唱；只定位演出当天。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_gala19_p_qinlan','p_jingtian','p_qinlan','同节目表演合作','双向','2019-02-04',NULL,NULL,NULL,'高','公开证据支持','2019央视春晚《我们都是追梦人》共同演唱；只定位演出当天。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_gala19_p_jiangshuying','p_jingtian','p_jiangshuying','同节目表演合作','双向','2019-02-04',NULL,NULL,NULL,'高','公开证据支持','2019央视春晚《我们都是追梦人》共同演唱；只定位演出当天。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jing_zhang','p_jingtian','p_zhangjike','公开恋情记录','双向','2018-03-28','2019-06-09',NULL,NULL,'高','公开证据支持','公开恋情窗口为2018-03-28至2019-06-09；实际开始／结束日可能早于公告，不把同游或纹身传闻用作时间边界。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_sicong','p_wangjianlin','p_wangsicong','父子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开人物资料支持父子身份；未给关系强度或政治资源评分。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_xi_brother','p_xi','p_xiyuanping','兄弟','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开身份支持兄弟关系；不证明景甜后台传闻。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_xi_father','p_xi','p_xizhongxun','父子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开人物资料支持父子身份。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_xi_sister','p_xi','p_qiqiaoqiao','姐弟','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开调查资料支持亲属身份，不表示干预交易。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_qi_deng','p_qiqiaoqiao','p_dengjiagui','夫妻','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','ICIJ资料支持夫妻身份；起止日期未核。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wen_daughter','p_wenjiabao','p_wenruchun','父女','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开调查资料支持父女身份；不将商业伙伴的持股当成本人持股。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_wang_son','p_wangzhaoguo','p_wangxinyu_wanda','父子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','纽约时报公司资料调查所定位的王新宇；避免与同名运动员混淆。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_soninlaw','p_jiaqinglin','p_libotan','岳父与女婿','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开人物资料及万达调查支持该亲属身份，不证明私下请托。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_jia_daughter','p_jiaqinglin','p_jiaqiang','父女','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭资料；不证明节目所谓转达请托。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_li_jiaqiang','p_libotan','p_jiaqiang','夫妻','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭资料，婚姻起止未核，不编造。',NULL,'2026-09-23T00:17:15-07:00','未评分：没有可量化亲疏依据');
INSERT INTO "relationships" VALUES('r_ic8_work_p_herundong','p_jingtian','p_herundong','同片表演合作','双向','2010',NULL,NULL,NULL,'高','公开证据支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。',NULL,'2026-09-23T00:22:10-07:00','未评分');
INSERT INTO "relationships" VALUES('r_ic8_work_p_liuye','p_jingtian','p_liuye','同片表演合作','双向','2009',NULL,NULL,NULL,'高','公开证据支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。',NULL,'2026-09-23T00:22:10-07:00','未评分');
INSERT INTO "relationships" VALUES('r_ic8_work_p_zhangfengyi','p_jingtian','p_zhangfengyi','同片表演合作','双向','2011',NULL,NULL,NULL,'高','公开证据支持','公开作品演职员表支持与景甜的职业合作；年份只标识播出／上映记录，不认定实际拍摄起止或私交。',NULL,'2026-09-23T00:22:10-07:00','未评分');
INSERT INTO "relationships" VALUES('r_family_xi_mother','p_qixin','p_xi','母子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。',NULL,'2026-09-23T00:32:45-07:00','未评分');
INSERT INTO "relationships" VALUES('r_family_yuan_mother','p_qixin','p_xiyuanping','母子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。',NULL,'2026-09-23T00:32:45-07:00','未评分');
INSERT INTO "relationships" VALUES('r_family_xi_parents','p_xizhongxun','p_qixin','夫妻','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。',NULL,'2026-09-23T00:32:45-07:00','未评分');
INSERT INTO "relationships" VALUES('r_family_yuan_father','p_xizhongxun','p_xiyuanping','父子','双向',NULL,NULL,NULL,NULL,'高','公开证据支持','公开家庭记述支持身份关系；未采集实际起始日期，历史时点依未定年开关显示。',NULL,'2026-09-23T00:32:45-07:00','未评分');
CREATE TABLE segment_people (id TEXT PRIMARY KEY,segment_id TEXT NOT NULL REFERENCES video_segments(id),person_id TEXT NOT NULL REFERENCES people(id),UNIQUE(segment_id,person_id));
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_01_p_xujiayin','seg_oG93w6k-1DY_01','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_01_p_liuluanxiong','seg_oG93w6k-1DY_01','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_01_p_lijiaxin','seg_oG93w6k-1DY_01','p_lijiaxin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_01_p_guanzhilin','seg_oG93w6k-1DY_01','p_guanzhilin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_02_p_xujiayin','seg_oG93w6k-1DY_02','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_02_p_lu','seg_oG93w6k-1DY_02','p_lu');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_03_p_xujiayin','seg_oG93w6k-1DY_03','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_04_p_xujiayin','seg_oG93w6k-1DY_04','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_05_p_xujiayin','seg_oG93w6k-1DY_05','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_06_p_xujiayin','seg_oG93w6k-1DY_06','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_07_p_xujiayin','seg_oG93w6k-1DY_07','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_08_p_xujiayin','seg_oG93w6k-1DY_08','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_09_p_xujiayin','seg_oG93w6k-1DY_09','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_10_p_xujiayin','seg_oG93w6k-1DY_10','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_11_p_xujiayin','seg_oG93w6k-1DY_11','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_11_p_ninggaoning','seg_oG93w6k-1DY_11','p_ninggaoning');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_12_p_xujiayin','seg_oG93w6k-1DY_12','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_13_p_xujiayin','seg_oG93w6k-1DY_13','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_14_p_xujiayin','seg_oG93w6k-1DY_14','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_15_p_xujiayin','seg_oG93w6k-1DY_15','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_16_p_xujiayin','seg_oG93w6k-1DY_16','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_17_p_xujiayin','seg_oG93w6k-1DY_17','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_18_p_xujiayin','seg_oG93w6k-1DY_18','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_19_p_xujiayin','seg_oG93w6k-1DY_19','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_20_p_xujiayin','seg_oG93w6k-1DY_20','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_21_p_xujiayin','seg_oG93w6k-1DY_21','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_22_p_xujiayin','seg_oG93w6k-1DY_22','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_23_p_xujiayin','seg_oG93w6k-1DY_23','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_24_p_xujiayin','seg_oG93w6k-1DY_24','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_25_p_xujiayin','seg_oG93w6k-1DY_25','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_26_p_xujiayin','seg_oG93w6k-1DY_26','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_27_p_xujiayin','seg_oG93w6k-1DY_27','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_28_p_xujiayin','seg_oG93w6k-1DY_28','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_29_p_lijiacheng','seg_oG93w6k-1DY_29','p_lijiacheng');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_29_p_xujiayin','seg_oG93w6k-1DY_29','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_30_p_wangshi','seg_oG93w6k-1DY_30','p_wangshi');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_30_p_xujiayin','seg_oG93w6k-1DY_30','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_31_p_wangshi','seg_oG93w6k-1DY_31','p_wangshi');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_31_p_yuliang','seg_oG93w6k-1DY_31','p_yuliang');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_32_p_xujiayin','seg_oG93w6k-1DY_32','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_33_p_lijiacheng','seg_oG93w6k-1DY_33','p_lijiacheng');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_33_p_lu','seg_oG93w6k-1DY_33','p_lu');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_34_p_lu','seg_oG93w6k-1DY_34','p_lu');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_34_p_sunhongbin','seg_oG93w6k-1DY_34','p_sunhongbin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_35_p_xujiayin','seg_oG93w6k-1DY_35','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_36_p_xujiayin','seg_oG93w6k-1DY_36','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_37_p_xujiayin','seg_oG93w6k-1DY_37','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_38_p_xujiayin','seg_oG93w6k-1DY_38','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_38_p_wangshi','seg_oG93w6k-1DY_38','p_wangshi');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_39_p_xujiayin','seg_oG93w6k-1DY_39','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_39_p_wangshi','seg_oG93w6k-1DY_39','p_wangshi');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_40_p_xujiayin','seg_oG93w6k-1DY_40','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_40_p_wangshi','seg_oG93w6k-1DY_40','p_wangshi');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_41_p_xujiayin','seg_oG93w6k-1DY_41','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_41_p_lijiacheng','seg_oG93w6k-1DY_41','p_lijiacheng');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_41_p_zhengyutong','seg_oG93w6k-1DY_41','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_41_p_zhangsongqiao','seg_oG93w6k-1DY_41','p_zhangsongqiao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_42_p_zhangsongqiao','seg_oG93w6k-1DY_42','p_zhangsongqiao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_42_p_xiaojianhua','seg_oG93w6k-1DY_42','p_xiaojianhua');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_43_p_liuluanxiong','seg_oG93w6k-1DY_43','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_43_p_lijiaxin','seg_oG93w6k-1DY_43','p_lijiaxin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_43_p_guanzhilin','seg_oG93w6k-1DY_43','p_guanzhilin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_44_p_liuluanxiong','seg_oG93w6k-1DY_44','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_44_p_guanzhilin','seg_oG93w6k-1DY_44','p_guanzhilin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_45_p_liuluanxiong','seg_oG93w6k-1DY_45','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_45_p_lijiacheng','seg_oG93w6k-1DY_45','p_lijiacheng');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_46_p_xujiayin','seg_oG93w6k-1DY_46','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_46_p_zhengyutong','seg_oG93w6k-1DY_46','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_46_p_zhangsongqiao','seg_oG93w6k-1DY_46','p_zhangsongqiao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_46_p_liuluanxiong','seg_oG93w6k-1DY_46','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_47_p_xujiayin','seg_oG93w6k-1DY_47','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_47_p_zhengyutong','seg_oG93w6k-1DY_47','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_47_p_zhangsongqiao','seg_oG93w6k-1DY_47','p_zhangsongqiao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_47_p_liuluanxiong','seg_oG93w6k-1DY_47','p_liuluanxiong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_48_p_xujiayin','seg_oG93w6k-1DY_48','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_48_p_zhengyutong','seg_oG93w6k-1DY_48','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_49_p_xujiayin','seg_oG93w6k-1DY_49','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_49_p_wenjiabao','seg_oG93w6k-1DY_49','p_wenjiabao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_50_p_xujiayin','seg_oG93w6k-1DY_50','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_51_p_xujiayin','seg_oG93w6k-1DY_51','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_51_p_zhengyutong','seg_oG93w6k-1DY_51','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_52_p_wenjiahong','seg_oG93w6k-1DY_52','p_wenjiahong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_52_p_wenjiabao','seg_oG93w6k-1DY_52','p_wenjiabao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_52_p_xujiayin','seg_oG93w6k-1DY_52','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_53_p_zhengyutong','seg_oG93w6k-1DY_53','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_53_p_wenjiabao','seg_oG93w6k-1DY_53','p_wenjiabao');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_53_p_wenjiahong','seg_oG93w6k-1DY_53','p_wenjiahong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_54_p_wenjiahong','seg_oG93w6k-1DY_54','p_wenjiahong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_54_p_zhengyutong','seg_oG93w6k-1DY_54','p_zhengyutong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_54_p_xujiayin','seg_oG93w6k-1DY_54','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_55_p_wenjiahong','seg_oG93w6k-1DY_55','p_wenjiahong');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_55_p_xujiayin','seg_oG93w6k-1DY_55','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_56_p_xujiayin','seg_oG93w6k-1DY_56','p_xujiayin');
INSERT INTO "segment_people" VALUES('seg_oG93w6k-1DY_56_p_zhengyutong','seg_oG93w6k-1DY_56','p_zhengyutong');
INSERT INTO "segment_people" VALUES('ic8_seg_001_p_lu','ic8_seg_001','p_lu');
INSERT INTO "segment_people" VALUES('ic8_seg_001_p_sunge','ic8_seg_001','p_sunge');
INSERT INTO "segment_people" VALUES('ic8_seg_001_p_jingtian','ic8_seg_001','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_001_p_xiyuanping','ic8_seg_001','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_002_p_wangjianlin','ic8_seg_002','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_002_p_xi','ic8_seg_002','p_xi');
INSERT INTO "segment_people" VALUES('ic8_seg_002_p_yuzhengsheng','ic8_seg_002','p_yuzhengsheng');
INSERT INTO "segment_people" VALUES('ic8_seg_002_p_xiyuanping','ic8_seg_002','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_002_p_jingtian','ic8_seg_002','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_003_p_zhangjun_funde','ic8_seg_003','p_zhangjun_funde');
INSERT INTO "segment_people" VALUES('ic8_seg_003_p_xiyuanping','ic8_seg_003','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_003_p_jingtian','ic8_seg_003','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_004_p_jingtian','ic8_seg_004','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_004_p_xiyuanping','ic8_seg_004','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_005_p_jingtian','ic8_seg_005','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_005_p_jingjunhai','ic8_seg_005','p_jingjunhai');
INSERT INTO "segment_people" VALUES('ic8_seg_006_p_jingtian','ic8_seg_006','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_006_p_luzheng','ic8_seg_006','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_007_p_xiyuanping','ic8_seg_007','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_007_p_jingtian','ic8_seg_007','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_008_p_jingtian','ic8_seg_008','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_008_p_wangjianlin','ic8_seg_008','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_008_p_wangsicong','ic8_seg_008','p_wangsicong');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_jingtian','ic8_seg_009','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_wenjiabao','ic8_seg_009','p_wenjiabao');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_wenruchun','ic8_seg_009','p_wenruchun');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_jiaqinglin','ic8_seg_009','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_libotan','ic8_seg_009','p_libotan');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_wangzhaoguo','ic8_seg_009','p_wangzhaoguo');
INSERT INTO "segment_people" VALUES('ic8_seg_009_p_wangxinyu_wanda','ic8_seg_009','p_wangxinyu_wanda');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_jingtian','ic8_seg_010','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_luzheng','ic8_seg_010','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_yexuanlian','ic8_seg_010','p_yexuanlian');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_zengqinghuai','ic8_seg_010','p_zengqinghuai');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_jingjunhai','ic8_seg_010','p_jingjunhai');
INSERT INTO "segment_people" VALUES('ic8_seg_010_p_xiyuanping','ic8_seg_010','p_xiyuanping');
INSERT INTO "segment_people" VALUES('ic8_seg_011_p_luzheng','ic8_seg_011','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_011_p_jingtian','ic8_seg_011','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_012_p_luzheng','ic8_seg_012','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_012_p_liruishan','ic8_seg_012','p_liruishan');
INSERT INTO "segment_people" VALUES('ic8_seg_012_p_huoshilian','ic8_seg_012','p_huoshilian');
INSERT INTO "segment_people" VALUES('ic8_seg_013_p_luzheng','ic8_seg_013','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_013_p_jiazhibang','ic8_seg_013','p_jiazhibang');
INSERT INTO "segment_people" VALUES('ic8_seg_013_p_zhangboxing','ic8_seg_013','p_zhangboxing');
INSERT INTO "segment_people" VALUES('ic8_seg_014_p_zhangboxing','ic8_seg_014','p_zhangboxing');
INSERT INTO "segment_people" VALUES('ic8_seg_014_p_pengzhen','ic8_seg_014','p_pengzhen');
INSERT INTO "segment_people" VALUES('ic8_seg_014_p_xizhongxun','ic8_seg_014','p_xizhongxun');
INSERT INTO "segment_people" VALUES('ic8_seg_015_p_jiazhibang','ic8_seg_015','p_jiazhibang');
INSERT INTO "segment_people" VALUES('ic8_seg_015_p_lijianguo','ic8_seg_015','p_lijianguo');
INSERT INTO "segment_people" VALUES('ic8_seg_016_p_luzheng','ic8_seg_016','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_016_p_jiazhiguo_shaanxi','ic8_seg_016','p_jiazhiguo_shaanxi');
INSERT INTO "segment_people" VALUES('ic8_seg_016_p_jiafeng_shaanxi','ic8_seg_016','p_jiafeng_shaanxi');
INSERT INTO "segment_people" VALUES('ic8_seg_017_p_luzheng','ic8_seg_017','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_017_p_jiaqinglin','ic8_seg_017','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_018_p_jiaqinglin','ic8_seg_018','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_018_p_jiangzemin','ic8_seg_018','p_jiangzemin');
INSERT INTO "segment_people" VALUES('ic8_seg_019_p_jiaqinglin','ic8_seg_019','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_019_p_chenxitong','ic8_seg_019','p_chenxitong');
INSERT INTO "segment_people" VALUES('ic8_seg_019_p_jiangzemin','ic8_seg_019','p_jiangzemin');
INSERT INTO "segment_people" VALUES('ic8_seg_020_p_jiaqinglin','ic8_seg_020','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_020_p_xi','ic8_seg_020','p_xi');
INSERT INTO "segment_people" VALUES('ic8_seg_020_p_jiangzemin','ic8_seg_020','p_jiangzemin');
INSERT INTO "segment_people" VALUES('ic8_seg_021_p_luzheng','ic8_seg_021','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_021_p_jiaqinglin','ic8_seg_021','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_021_p_libotan','ic8_seg_021','p_libotan');
INSERT INTO "segment_people" VALUES('ic8_seg_021_p_jiaqiang','ic8_seg_021','p_jiaqiang');
INSERT INTO "segment_people" VALUES('ic8_seg_022_p_luzheng','ic8_seg_022','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_023_p_luzheng','ic8_seg_023','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_024_p_wangjianlin','ic8_seg_024','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_024_p_boxilai','ic8_seg_024','p_boxilai');
INSERT INTO "segment_people" VALUES('ic8_seg_024_p_dengpufang','ic8_seg_024','p_dengpufang');
INSERT INTO "segment_people" VALUES('ic8_seg_025_p_wangjianlin','ic8_seg_025','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_025_p_jiaqinglin','ic8_seg_025','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_025_p_luzheng','ic8_seg_025','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_026_p_liumingkang','ic8_seg_026','p_liumingkang');
INSERT INTO "segment_people" VALUES('ic8_seg_026_p_jiaqinglin','ic8_seg_026','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_026_p_wangjianlin','ic8_seg_026','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_027_p_luzheng','ic8_seg_027','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_027_p_wangjianlin','ic8_seg_027','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_028_p_luzheng','ic8_seg_028','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_028_p_wangjianlin','ic8_seg_028','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_wangxinyu_wanda','ic8_seg_029','p_wangxinyu_wanda');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_wangzhaoguo','ic8_seg_029','p_wangzhaoguo');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_wenruchun','ic8_seg_029','p_wenruchun');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_wenjiabao','ic8_seg_029','p_wenjiabao');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_dengjiagui','ic8_seg_029','p_dengjiagui');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_xi','ic8_seg_029','p_xi');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_libotan','ic8_seg_029','p_libotan');
INSERT INTO "segment_people" VALUES('ic8_seg_029_p_jiaqinglin','ic8_seg_029','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_wangxinyu_wanda','ic8_seg_030','p_wangxinyu_wanda');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_wangzhaoguo','ic8_seg_030','p_wangzhaoguo');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_sunchunlan','ic8_seg_030','p_sunchunlan');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_chenhao_yunnan','ic8_seg_030','p_chenhao_yunnan');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_wenruchun','ic8_seg_030','p_wenruchun');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_qiqiaoqiao','ic8_seg_030','p_qiqiaoqiao');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_xizhongxun','ic8_seg_030','p_xizhongxun');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_libotan','ic8_seg_030','p_libotan');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_jiaqinglin','ic8_seg_030','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_030_p_wangjianlin','ic8_seg_030','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_031_p_wangjianlin','ic8_seg_031','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_031_p_jingtian','ic8_seg_031','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_032_p_gaohucheng','ic8_seg_032','p_gaohucheng');
INSERT INTO "segment_people" VALUES('ic8_seg_032_p_jiaqinglin','ic8_seg_032','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_032_p_wangjianlin','ic8_seg_032','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_032_p_jingtian','ic8_seg_032','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_033_p_caifuchao','ic8_seg_033','p_caifuchao');
INSERT INTO "segment_people" VALUES('ic8_seg_033_p_jiaqinglin','ic8_seg_033','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_033_p_jingtian','ic8_seg_033','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_033_p_wangjianlin','ic8_seg_033','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_034_p_luzheng','ic8_seg_034','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_034_p_wangjianlin','ic8_seg_034','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_034_p_jingtian','ic8_seg_034','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_035_p_jingtian','ic8_seg_035','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_035_p_liyifeng','ic8_seg_035','p_liyifeng');
INSERT INTO "segment_people" VALUES('ic8_seg_035_p_jiangshuying','ic8_seg_035','p_jiangshuying');
INSERT INTO "segment_people" VALUES('ic8_seg_035_p_qinlan','ic8_seg_035','p_qinlan');
INSERT INTO "segment_people" VALUES('ic8_seg_036_p_jingtian','ic8_seg_036','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_036_p_tiening','ic8_seg_036','p_tiening');
INSERT INTO "segment_people" VALUES('ic8_seg_037_p_jingtian','ic8_seg_037','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_037_p_zhangjike','ic8_seg_037','p_zhangjike');
INSERT INTO "segment_people" VALUES('ic8_seg_037_p_luzheng','ic8_seg_037','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_038_p_jingtian','ic8_seg_038','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_038_p_zhangjike','ic8_seg_038','p_zhangjike');
INSERT INTO "segment_people" VALUES('ic8_seg_039_p_jingtian','ic8_seg_039','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_039_p_zhangjike','ic8_seg_039','p_zhangjike');
INSERT INTO "segment_people" VALUES('ic8_seg_039_p_luzheng','ic8_seg_039','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_040_p_niechenxi','ic8_seg_040','p_niechenxi');
INSERT INTO "segment_people" VALUES('ic8_seg_040_p_tiening','ic8_seg_040','p_tiening');
INSERT INTO "segment_people" VALUES('ic8_seg_041_p_lizhanshu','ic8_seg_041','p_lizhanshu');
INSERT INTO "segment_people" VALUES('ic8_seg_041_p_jiaqinglin','ic8_seg_041','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_041_p_niechenxi','ic8_seg_041','p_niechenxi');
INSERT INTO "segment_people" VALUES('ic8_seg_041_p_tiening','ic8_seg_041','p_tiening');
INSERT INTO "segment_people" VALUES('ic8_seg_041_p_jiafalin','ic8_seg_041','p_jiafalin');
INSERT INTO "segment_people" VALUES('ic8_seg_042_p_luzheng','ic8_seg_042','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_042_p_jiaqinglin','ic8_seg_042','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_042_p_niechenxi','ic8_seg_042','p_niechenxi');
INSERT INTO "segment_people" VALUES('ic8_seg_042_p_tiening','ic8_seg_042','p_tiening');
INSERT INTO "segment_people" VALUES('ic8_seg_042_p_jingtian','ic8_seg_042','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_043_p_luzheng','ic8_seg_043','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_043_p_jingtian','ic8_seg_043','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_044_p_luzheng','ic8_seg_044','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_044_p_jingtian','ic8_seg_044','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_045_p_luzheng','ic8_seg_045','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_045_p_jingtian','ic8_seg_045','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_045_p_zhaowei','ic8_seg_045','p_zhaowei');
INSERT INTO "segment_people" VALUES('ic8_seg_045_p_liuye','ic8_seg_045','p_liuye');
INSERT INTO "segment_people" VALUES('ic8_seg_046_p_luzheng','ic8_seg_046','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_046_p_jingtian','ic8_seg_046','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_046_p_zhangfengyi','ic8_seg_046','p_zhangfengyi');
INSERT INTO "segment_people" VALUES('ic8_seg_046_p_herundong','ic8_seg_046','p_herundong');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_luzheng','ic8_seg_047','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_jingtian','ic8_seg_047','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_guoshoubao','ic8_seg_047','p_guoshoubao');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_sunhonglei','ic8_seg_047','p_sunhonglei');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_wuzhenyu','ic8_seg_047','p_wuzhenyu');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_kimheesun','ic8_seg_047','p_kimheesun');
INSERT INTO "segment_people" VALUES('ic8_seg_047_p_jiangwu','ic8_seg_047','p_jiangwu');
INSERT INTO "segment_people" VALUES('ic8_seg_048_p_wangjianlin','ic8_seg_048','p_wangjianlin');
INSERT INTO "segment_people" VALUES('ic8_seg_048_p_wangsicong','ic8_seg_048','p_wangsicong');
INSERT INTO "segment_people" VALUES('ic8_seg_048_p_luzheng','ic8_seg_048','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_048_p_jingtian','ic8_seg_048','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_049_p_luzheng','ic8_seg_049','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_049_p_jingtian','ic8_seg_049','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_050_p_jingtian','ic8_seg_050','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_050_p_luzheng','ic8_seg_050','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_051_p_jingtian','ic8_seg_051','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_051_p_zhangjike','ic8_seg_051','p_zhangjike');
INSERT INTO "segment_people" VALUES('ic8_seg_052_p_jingtian','ic8_seg_052','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_052_p_luzheng','ic8_seg_052','p_luzheng');
INSERT INTO "segment_people" VALUES('ic8_seg_053_p_jingtian','ic8_seg_053','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_053_p_linkeqing','ic8_seg_053','p_linkeqing');
INSERT INTO "segment_people" VALUES('ic8_seg_053_p_jiaqinglin','ic8_seg_053','p_jiaqinglin');
INSERT INTO "segment_people" VALUES('ic8_seg_054_p_jingtian','ic8_seg_054','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_054_p_sunge','ic8_seg_054','p_sunge');
INSERT INTO "segment_people" VALUES('ic8_seg_054_p_zhengshuang','ic8_seg_054','p_zhengshuang');
INSERT INTO "segment_people" VALUES('ic8_seg_055_p_lu','ic8_seg_055','p_lu');
INSERT INTO "segment_people" VALUES('ic8_seg_055_p_jingtian','ic8_seg_055','p_jingtian');
INSERT INTO "segment_people" VALUES('ic8_seg_055_p_luzheng','ic8_seg_055','p_luzheng');
CREATE TABLE site_settings (key TEXT PRIMARY KEY,value TEXT NOT NULL,updated_at TEXT NOT NULL);
INSERT INTO "site_settings" VALUES('site_title','鲁社长大老王宇宙','2026-09-23T00:40:52-07:00');
INSERT INTO "site_settings" VALUES('presentation_mode','narrator','2026-09-23T00:40:52-07:00');
INSERT INTO "site_settings" VALUES('editorial_note','本页按鲁社长、大老王的节目叙述整理人物与关系，包含推测和转述，不代表已独立核实。具体出处及原始核对状态可在资料详情中查看。','2026-09-23T00:40:52-07:00');
INSERT INTO "site_settings" VALUES('repository_url','https://github.com/graymongooseus/lushezhang-dalaowang-universe','2026-09-23T09:02:18-07:00');
INSERT INTO "site_settings" VALUES('code_license','MIT','2026-09-23T09:02:18-07:00');
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
INSERT INTO "sources" VALUES('video','鲁社长：叶建春、钟绍军异动、董军地位悬疑等问答','https://www.youtube.com/watch?v=veuNZX1lNco','视频字幕','YouTube','p_lu',NULL,'2026-09-22T17:44:35-07:00','仅保存结构化提取与摘要；字幕覆盖00:00–20:46。上传账号和主播身份不是同一概念；发布日期未核实。');
INSERT INTO "sources" VALUES('user','用户确认主播身份及数据库需求',NULL,'用户说明','当前对话',NULL,NULL,'2026-09-22T17:44:35-07:00','用户确认鲁社长为主播本人，并要求持续建立人物与关系数据库。');
INSERT INTO "sources" VALUES('ye_bio','叶建春任江西省委副书记（简历）','https://renshi.people.com.cn/n1/2021/0220/c139617-32032664.html','官方媒体履历','人民网',NULL,'2021-02-20','2026-09-22T17:44:35-07:00','补充教育及2021年以前任职事实。');
INSERT INTO "sources" VALUES('ye_governor','叶建春当选江西省省长','https://www.xinhuanet.com/2022-01/20/c_1128283669.htm','正式任职报道','新华社',NULL,'2022-01-20','2026-09-22T17:44:35-07:00','仅证明2022年当选，不推定2026年仍在任。');
INSERT INTO "sources" VALUES('ye_level','叶建春当选江西省人民政府省长','https://news.china.com.cn/2022-01/20/content_78001963.htm','官方媒体报道','中国网／中国新闻网',NULL,'2022-01-20','2026-09-22T17:44:35-07:00','报道明确在职研究生学历。');
INSERT INTO "sources" VALUES('ye_2021','叶建春当选江西省人民政府省长：简历截至2021年10月','https://henan.china.com.cn/m/2022-01/20/content_41858329.html','媒体转载履历','中国网',NULL,'2022-01-20','2026-09-22T17:44:35-07:00','用于2021年10月代理省长任职。');
INSERT INTO "sources" VALUES('xi_bio','习近平同志简历（2012）','https://cpc.people.com.cn/n/2012/1115/c349998-19594969.html','官方履历','人民网／新华社',NULL,'2012-11-15','2026-09-22T17:44:35-07:00','按年份提取历史履历；摘要仅列主要党政职务。');
INSERT INTO "sources" VALUES('xi_2023','中华人民共和国主席、中华人民共和国中央军事委员会主席简历','https://www.moj.gov.cn/pub/sfbgw/zwgkztzl/2023zt/2023qglh20230223/xjplhsj20230223/202303/t20230311_473940.html','官方履历','司法部转载新华社',NULL,'2023-03-11','2026-09-22T17:44:35-07:00','反映2023年3月职务；不是对2026年当前状态的核验。');
INSERT INTO "sources" VALUES('chen_interview','我与习书记交接在基层（上）','https://www.12371.cn/2020/05/25/ARTI1590341099132695.shtml','当事人访谈','共产党员网／学习时报','p_chen','2020-06-27','2026-09-22T17:44:35-07:00','页面显示发布2020-06-27；访谈发生于2017-06-02，不能把URL日期当发布日期。');
INSERT INTO "sources" VALUES('zhong_office','张又侠会见巴基斯坦陆军参谋长巴杰瓦','https://www.thepaper.cn/newsDetail_forward_2454292?commTag=true','官方消息转载','澎湃新闻转载国防部发布',NULL,'2018-09-18','2026-09-22T17:44:35-07:00','报道列钟绍军为军委办公厅主任；只能确定当日已任职。');
INSERT INTO "sources" VALUES('zhong_media','钟绍军名列官方权威辅导材料编者名单','https://www.zaobao.com.sg/special/report/politic/cnpol/story20191111-1004257','媒体报道','联合早报',NULL,'2019-11-11','2026-09-22T17:44:35-07:00','其早期秘书履历又转引境外网站，证据链弱于直接任免记录。');
INSERT INTO "sources" VALUES('dong_media','中国任命原海军司令员董军为新防长','https://www.zaobao.com.sg/realtime/china/story20231229-1458933','媒体报道','联合早报',NULL,'2023-12-29','2026-09-22T17:44:35-07:00','用于分期履历，未独立核对全部早期任免日期。');
INSERT INTO "sources" VALUES('dong_appointment','全国人民代表大会常务委员会决定任免的名单','https://paper.people.com.cn/rmrb/images/2023-12/30/03/rmrb2023123003.pdf','正式任免','人民日报',NULL,'2023-12-30','2026-09-22T17:44:35-07:00','决定日期2023-12-29；任命董军为国防部部长。');
INSERT INTO "sources" VALUES('user_v2','用户要求人物分类及类似家族的派系结构',NULL,'用户说明','当前对话',NULL,NULL,'2026-09-22T18:03:37-07:00','分类包含企业家、政治家、反贼、媒体人物等；每人有归属字段，证据不足以待定表示。');
INSERT INTO "sources" VALUES('video_UwwbGnDF5WA','鲁社长：中国要关国门了？科技、投资与刘仲敬、袁腾飞等问答','https://www.youtube.com/watch?v=UwwbGnDF5WA','视频字幕','YouTube','p_lu',NULL,'2026-09-22T18:03:37-07:00','字幕覆盖00:00–24:43，播放器总长25:04；末段无字幕范围不作内容推断。未逐句对照音频；字幕无说话人标签。上传频道为鲁社长直播简报，主播为鲁社长。');
INSERT INTO "sources" VALUES('pdd_2019','Pinduoduo Inc. F-1/A（2019-02-07）','https://investor.pddholdings.com/static-files/db318ae2-0abd-44dc-90cc-e4933b15edaf','公司证券申报','Pinduoduo Inc.',NULL,'2019-02-07','2026-09-22T18:03:37-07:00','PDF物理页154（印刷页149）为黄峥履历；仅证明历史职务。');
INSERT INTO "sources" VALUES('hawking_cam','Professor Stephen Hawking：剑桥大学纪念文章','https://www.cam.ac.uk/stories/stephen-hawking','任职机构介绍','剑桥大学',NULL,'2018-03-14','2026-09-22T18:03:37-07:00','支持科学家、科普作者及剑桥学术背景；不据此推断政治派系。');
INSERT INTO "sources" VALUES('gop_2024','2024 Republican Party Platform','https://www.presidency.ucsb.edu/documents/2024-republican-party-platform','政党纲领原文存档','The American Presidency Project／共和党',NULL,'2024-07-08','2026-09-22T18:03:37-07:00','用于MAGA与特朗普政治网络的历史归属；政党与政治运动不混为同一概念。');
INSERT INTO "sources" VALUES('user_sun_identity','用户确认孙割为从事加密货币的孙宇晨',NULL,'用户身份确认','当前对话',NULL,NULL,'2026-09-22T18:09:50-07:00','用户写作孙晨宇；结合其指明的虚拟币领域及官方姓名规范为孙宇晨。将本期孙哥与用户称呼孙割归并，身份指认依据用户补充，不声称字幕自身足以确认。');
INSERT INTO "sources" VALUES('sun_official','孙宇晨个人官网：About','https://www.hejustinsun.com/zh/about','本人官网介绍','孙宇晨个人官网',NULL,NULL,'2026-09-22T18:09:50-07:00','支持标准姓名孙宇晨、Justin Sun与波场TRON创始人身份；不将官网宣传性评价作为事实入库。');
INSERT INTO "sources" VALUES('video_iUo_HMNIf54','鲁社长：习近平书单、内参制度与官场人物问答','https://www.youtube.com/watch?v=iUo-HMNIf54','视频字幕','鲁社长直播简报','p_lu','2026-09-14','2026-09-22T22:18:22-07:00','字幕覆盖00:00–16:22；视频时长16:39。简介标注时间背景26/09；剪辑上传日不等于原直播日。以实际字幕时间为准，简介章节时间有偏差。');
INSERT INTO "sources" VALUES('user_v3','用户确认王吉舟身份及时间轴要求',NULL,'用户说明','当前对话',NULL,'2026-09-22','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('wang_city','列治文市政府2026年候选人名单','https://www.richmond.ca/city-hall/elections/candidateslist.htm','政府候选人名录','City of Richmond',NULL,'2026-09-11','2026-09-22T22:18:22-07:00','王吉舟为候选人，不是已当选议员。');
INSERT INTO "sources" VALUES('wang_campaign','王吉舟竞选简介','https://www.advancerichmond.ca/team/jizhou-william-wang/','候选人自述','Advance Richmond',NULL,NULL,'2026-09-22T22:18:22-07:00','学历、移民和职业经历为竞选材料自述；候选人资格另据市政府名单。');
INSERT INTO "sources" VALUES('tang_name','宁波市市长、副市长名单','https://news.cnnb.com.cn/system/2022/04/12/030345167.shtml','官方媒体','中国宁波网',NULL,'2022-04-12','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('bai_bio','白少康任中央政法委副秘书长','https://www.xinhuanet.com/politics/2017-06/16/c_129634645.htm','官方媒体','新华网',NULL,'2017-06-16','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('bai_end','全国人大常委会任免名单','https://paper.people.com.cn/rmrb/images/2022-10/31/04/rmrb2022103104.pdf','官方任免','人民日报',NULL,'2022-10-31','2026-09-22T22:18:22-07:00','只证明国家监察委员会委员职务被免，不证明违法、落马或政治清洗。');
INSERT INTO "sources" VALUES('lin_bio','林武任山东省委书记','https://politics.people.com.cn/n1/2022/1229/c1001-32596172.html','官方媒体','人民网／新华社',NULL,'2022-12-29','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('tangd_bio','唐登杰任山西省委书记','https://news.sina.com.cn/o/2023-10-28/doc-imzsrnhr9501550.shtml','新华社转载','新浪／新京报',NULL,'2023-10-28','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('wangx_bio','王新伟当选辽宁省省长','https://news.voc.com.cn/news/202503/28249207.html','新华社转载','华声在线',NULL,'2025-03-31','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('zou_bio','创新及科技局局长在京港洽谈会致辞','https://www.itib.gov.hk/zh-cn/speeches/2025/pr_20251112.html','政府资料','香港创新科技及工业局',NULL,'2025-11-12','2026-09-22T22:18:22-07:00','职务语境核对邹劲松姓名；不是任命起始日。');
INSERT INTO "sources" VALUES('li_bio','陕西省委社会工作部与省民政厅交流','https://sn.people.com.cn/n2/2024/1126/c186331-41054505.html','官方媒体','人民网',NULL,'2024-11-26','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('hu_bio','胡耀邦生平','https://sdaj.hunan.gov.cn/wszt/xxsl/xxrw/200609/t20060928_1977919.html','政府档案','湖南省档案局',NULL,'2008-10-18','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('hu_resign','胡耀邦辞去总书记职务','https://www.yantian.gov.cn/ytdayszxxw/lsjt/content/post_11737542.html','政府档案','盐田档案与史志信息网',NULL,NULL,'2026-09-22T22:18:22-07:00','记载1987-01-16政治局扩大会议。');
INSERT INTO "sources" VALUES('hu_zhao_transition','中共中央机构沿革概要','https://www.scopsr.gov.cn/zlzx/jgyg/201811/t20181120_326533_8.html','政府档案','中国机构编制网',NULL,'2018-11-20','2026-09-22T22:18:22-07:00','');
INSERT INTO "sources" VALUES('zhao_history','赵紫阳去世报道','https://www.abc.net.au/news/2005-01-17/former-chinese-communist-party-head-dies/620372','新闻报道','ABC／Reuters',NULL,'2005-01-17','2026-09-22T22:18:22-07:00','支持1989年失势、被软禁及2005年逝世；不精确补造软禁开始日。');
INSERT INTO "sources" VALUES('zhao_deng_history','赵紫阳近况报道','https://www.rfa.org/mandarin/yataibaodao/zhaoziyang-20041017.html','新闻报道','自由亚洲电台',NULL,'2004-10-17','2026-09-22T22:18:22-07:00','记述赵紫阳与邓小平等人在1989年的分歧及其后软禁。');
INSERT INTO "sources" VALUES('deng_death','1997年2月19日邓小平逝世','https://cpc.people.com.cn/GB/64162/64165/77552/77575/','官方档案','人民网',NULL,NULL,'2026-09-22T22:18:22-07:00','历史事件日为1997-02-19。');
INSERT INTO "sources" VALUES('ye_investigation','叶建春接受中央纪委国家监委审查调查','https://www.xinhuanet.com/legal/20260827/75d541198d8f4611a91aa05e444603ef/c.html','官方通报','新华网／中央纪委国家监委',NULL,'2026-08-27','2026-09-22T22:18:22-07:00','调查不等于定罪或服刑。');
INSERT INTO "sources" VALUES('dengy_denial','邓亚萍回应搜索项目亏损传闻','https://news.ifeng.com/c/7ff2Ts6wwLC','当事人回应报道','凤凰网',NULL,NULL,'2026-09-22T22:18:22-07:00','当事人否认相关金额传闻，不能把节目中亏损金额写成已证事实。');
INSERT INTO "sources" VALUES('identity_p_mengjianzhu','孟建柱公开身份资料','https://en.wikipedia.org/wiki/Meng_Jianzhu','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_hexiangjian','何享健公开身份资料','https://zh.wikipedia.org/wiki/%E4%BD%95%E4%BA%AB%E5%81%A5','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_gongzheng','龚正公开身份资料','https://zh.wikipedia.org/wiki/%E9%BE%9A%E6%AD%A3','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_dengyaping','邓亚萍公开身份资料','https://en.wikipedia.org/wiki/Deng_Yaping','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_hujintao','胡锦涛公开身份资料','https://zh.wikipedia.org/wiki/%E8%83%A1%E9%94%A6%E6%B6%9B','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_musk','马斯克公开身份资料','https://en.wikipedia.org/wiki/Elon_Musk','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_wenjiabao','温家宝公开身份资料','https://zh.wikipedia.org/wiki/%E6%B8%A9%E5%AE%B6%E5%AE%9D','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('identity_p_liuhaocun','刘浩存公开身份资料','https://zh.wikipedia.org/wiki/%E5%88%98%E6%B5%A9%E5%AD%98','百科身份资料','Wikipedia',NULL,NULL,'2026-09-22T22:18:22-07:00','用于公开身份与照片匹配；不将百科当前职务自动视为完整履历。');
INSERT INTO "sources" VALUES('taxonomy_v4','用户指定七类人物与排除范围',NULL,'用户维护规则',NULL,NULL,'2026-09-22','2026-09-22T23:37:42-07:00','政治、军事、商业、媒体、学者、演员主持人、其他名人；排除外国国家元首与仅观众身份，不据旧其他分组删除已知公众人物。');
INSERT INTO "sources" VALUES('yt_oG93w6k-1DY','鲁社长：许家印凭什么值得佩服？以点带面、以面压点与香港商界往事','https://www.youtube.com/watch?v=oG93w6k-1DY','视频字幕','鲁社长智库','p_lu','2026-09-20','2026-09-22T23:37:42-07:00','剪辑上传日2026-09-20，原录制时间未知。字幕00:00–25:43，视频25:50。简介章节错位；索引依据逐段字幕。');
INSERT INTO "sources" VALUES('v4_identity_p_xujiayin','许家印：公开身份核对','https://www.cspgp.org.cn/gcrw/201902/t20190212_137080.html','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_liuluanxiong','刘銮雄：公开身份核对','https://www.chineseestates.com/SiteElements/CEHL_Website/Documents/News/Press%20release_UK_R2_SC.pdf','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_lijiaxin','李嘉欣：公开身份核对','https://www.1905.com/mdb/star/366/','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_guanzhilin','关之琳：公开身份核对','https://www.1905.com/mdb/star/392/details/','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_ninggaoning','宁高宁：公开身份核对','https://www.sinochem.com/zhjt/xwzx/jtdt/2024/10/I1294309057259110400.html','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_lijiacheng','李嘉诚：公开身份核对','https://www.lksf.org/our-founder/?lang=hk','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_wangshi','王石：公开身份核对','https://www.vanke.com/about/chairman','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_yuliang','郁亮：公开身份核对','https://companies.caixin.com/2017-06-30/101108256.html','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_sunhongbin','孙宏斌：公开身份核对','https://www.sunac.com.cn/mobile/about.aspx?type=6','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_zhengyutong','郑裕彤：公开身份核对','https://www.nwd.com.hk/zh-hant/content/新世界發展主席鄭裕彤博士獲特區政府頒發大紫荊勳章','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_zhangsongqiao','张松桥：公开身份核对','https://www.ccland.com.hk/tc/CorporateInformation.php','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_xiaojianhua','肖建华：公开身份核对','https://www.cls.cn/detail/1105240','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_wenjiahong','温家宏：公开身份核对','https://m.cj.sina.cn/page/aHR0cDovL2ZpbmFuY2Uuc2luYS5jb20uY24vc3RvY2svY29tcGFueS9zei8wMDA1MDIvMjQvMzEuc2h0bWw?from=redirect','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_wenjiabao','温家宝：公开身份核对','https://www.gov.cn/flfg/2008-03/16/content_921899.htm','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_identity_p_lu','鲁社长：公开身份核对','https://www.youtube.com/watch?v=oG93w6k-1DY','身份核对资料',NULL,NULL,NULL,'2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_vanke2017','万科2017年债券募集说明书：主席接任','https://www.vanke.com/upload/file/2017-07-12/636c7161-0229-4e0d-848c-a0867ffea4da.PDF','身份核对资料','万科',NULL,'2017-07-12','2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_guan_denial','刘銮雄记者会回应私生活传闻','https://www.zaobao.com.sg/entertainment/story20230107-1351091','媒体报道','联合早报',NULL,'2023-01-07','2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_zheng_death','郑裕彤出殡：2016年9月29日因病逝世','https://www.locpg.gov.cn/jsdt/2016-10/13/c_129321468.htm','身份核对资料','中央政府驻港联络办',NULL,'2016-10-13','2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('v4_xiao_sentence','明天控股、肖建华案一审公开宣判','https://www.cls.cn/detail/1105240','身份核对资料','财联社转述法院宣判',NULL,'2022-08-19','2026-09-22T23:37:42-07:00','只支持所述范围；不证明视频内其他传闻。');
INSERT INTO "sources" VALUES('yt_iC8a1SW78PE','鲁社长：景甜、路征与万达：幕后关系假说及公开资料核对','https://www.youtube.com/watch?v=iC8a1SW78PE','视频／替代音频分析','政经鲁社长','p_lu','2026-09-15','2026-09-23T00:17:15-07:00','YouTube字幕不可读取；完整阅读同题播客音频ASR。播客26:32，视频27:44，不能排除删节。时间链接用原视频公开章节范围，不冒称逐句校时。播客RSS：https://anchor.fm/s/11410dac8/podcast/rss；发布时间2026-09-16T15:23:17Z。');
INSERT INTO "sources" VALUES('ic8_jingtian','景甜资料','https://www.1905.com/mdb/star/1177/','外部核对资料','1905电影网',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_wangjianlin','王健林简介','https://www.wanda.cn/about/chairman/','外部核对资料','万达集团',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_yuzhengsheng','俞正声当选全国政协主席','https://www.bjtzb.gov.cn/wwwroot/sdtyzx/publish/article/218/10835.shtml','外部核对资料','北京统战部',NULL,'2013-03-11','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_zhangjun_funde','企业领导：张峻','https://www.funde-ins.com/jtgk/qyld/493273.shtml','外部核对资料','富德保险控股',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jingjunhai','景俊海同志简历','https://jl.people.com.cn/n2/2020/1125/c349771-34437202.html','外部核对资料','人民网',NULL,'2020-11-25','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiaqinglin','贾庆林简历','https://www.cppcc.gov.cn/2011/09/22/ARTI1316659825496963.shtml','外部核对资料','全国政协',NULL,'2011-09-22','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_luzheng','路征作品表','https://m.1905.com/m/star/workslist/3027570/','外部核对资料','1905电影网',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiazhiguo_shaanxi','陕西省委第四巡视组组长贾治国','https://meixian.qinfeng.gov.cn/info/1015/3577.htm','外部核对资料','眉县纪委监委',NULL,'2021-02-23','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiafeng_shaanxi','陕西省商务厅党组书记贾锋出席会议','https://xatb.mofcom.gov.cn/tpjj/art/2024/art_e89eb4ea08a446b2b859e697fc18b5b8.html','外部核对资料','商务部驻西安特派员办事处',NULL,'2024-01-12','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiazhibang','国家林业局局长贾治邦活动','https://www.gov.cn/gzdt/2010-06/08/content_1623416.htm','外部核对资料','中国政府网',NULL,'2010-06-08','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_lijianguo','李建国简历','https://npc.people.com.cn/n/2013/0318/c15257-20820773.html','外部核对资料','人民网',NULL,'2013-03-18','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_liumingkang','刘明康履历','https://www.cppcc.gov.cn/zxww/2017/03/09/ARTI1489025406355333.shtml','外部核对资料','全国政协',NULL,'2017-03-09','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_wangxinyu_wanda','万达股权调查（纽约时报转载）','https://chinadigitaltimes.net/chinese/390766.html','外部核对资料','中国数字时代／纽约时报',NULL,'2015-04-28','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_wenruchun','Who’s Who in China Leaks','https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/','外部核对资料','ICIJ',NULL,'2014-01-22','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_dengjiagui','Who’s Who in China Leaks','https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/','外部核对资料','ICIJ',NULL,'2014-01-22','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_qiqiaoqiao','Who’s Who in China Leaks','https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/','外部核对资料','ICIJ',NULL,'2014-01-22','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_gaohucheng','高虎城履历','https://gaohucheng.mofcom.gov.cn/article/resume/','外部核对资料','商务部',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_caifuchao','蔡赴朝简历','https://politics.people.com.cn/n/2013/0320/c351134-20853672.html','外部核对资料','人民网',NULL,'2013-03-20','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_tiening','中国文联领导：铁凝','https://o.cflac.org.cn/zgwl/wlld/TieNing/','外部核对资料','中国文联',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiafalin','医联体签约活动：原沧州市委常委、宣传部长贾发林','https://zyj.beijing.gov.cn/sy/dwjl/202504/t20250428_4076492.html','外部核对资料','北京市中医药管理局',NULL,'2025-04-28','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_guoshoubao','郭寿宝捐赠社区物资','https://news.sina.com.cn/c/p/2014-01-22/010929310582.shtml','外部核对资料','华商报／新浪',NULL,'2014-01-22','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_niechenxi','聂辰席简历','https://cpc.people.com.cn/GB/64162/123659/123782/7359502.html','外部核对资料','人民网',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_wanda2016','万达并购美国传奇影业签约','https://www.wanda.cn/mobile/2016/news_0112/1184.html','外部核对资料','万达集团',NULL,'2016-01-12','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_penalty','景甜违法广告代言行政处罚通报','https://www.samr.gov.cn/xw/df/art/2023/art_2bdd1110d6be480ba2df733047dceeea.html','外部核对资料','国家市场监督管理总局／广州市市场监管局',NULL,'2022-05-28','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_gala2018','2018央视春晚节目表','https://zh.wikipedia.org/wiki/2018年中国中央电视台春节联欢晚会','外部核对资料','维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_gala2019','2019春晚《我们都是追梦人》','https://m.news.cctv.com/2019/02/04/ARTIcxFbzjmAFnKnGzClWIjX190204.shtml','外部核对资料','央视网',NULL,'2019-02-04','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_baihua2019','中国文联2019百花迎春专题','https://www.cflac.org.cn/wywzt/2019/2019bhyc/','外部核对资料','中国文联',NULL,'2019-01-17','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_breakup','景甜工作人员确认与张继科分手','https://news.sina.com.cn/c/2019-06-09/doc-ihvhiqay4413629.shtml','外部核对资料','新京报／新浪',NULL,'2019-06-09','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_zhanguo','《战国》演职员资料','https://zh.wikipedia.org/wiki/战国_(电影)','外部核对资料','维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_guo_film','景甜身后的郭寿宝与陕西影视资本','https://www.sohu.com/a/328176708_347578','外部核对资料','贞观／搜狐',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jiafeng2019','陕西省政府人事任免','https://renshi.people.com.cn/n1/2019/0917/c139617-31356595.html','外部核对资料','人民网',NULL,'2019-09-17','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_nyt_wanda','纽约时报万达股权调查及无干预证据说明','https://chinadigitaltimes.net/chinese/390766.html','外部核对资料','中国数字时代／纽约时报',NULL,'2015-04-28','2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_jia_family','李伯潭家庭关系资料','https://zh.wikipedia.org/wiki/李伯潭','外部核对资料','维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','只支持本库引用的具体公开身份、履历或事件，不证明其他私人关系、传闻或因果。');
INSERT INTO "sources" VALUES('ic8_xiyuanping','习远平公开身份核对','https://zh.wikipedia.org/wiki/%E4%B9%A0%E8%BF%9C%E5%B9%B3','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_wangsicong','王思聪公开身份核对','https://zh.wikipedia.org/wiki/%E7%8E%8B%E6%80%9D%E8%81%AA','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_wangzhaoguo','王兆国公开身份核对','https://zh.wikipedia.org/wiki/%E7%8E%8B%E5%85%86%E5%9B%BD','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_yexuanlian','叶选廉公开身份核对','https://zh.wikipedia.org/wiki/%E5%8F%B6%E9%80%89%E5%BB%89','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zengqinghuai','曾庆淮公开身份核对','https://zh.wikipedia.org/wiki/%E6%9B%BE%E5%BA%86%E6%B7%AE','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_liruishan','李瑞山公开身份核对','https://zh.wikipedia.org/wiki/%E6%9D%8E%E7%91%9E%E5%B1%B1','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_huoshilian','霍士廉公开身份核对','https://zh.wikipedia.org/wiki/%E9%9C%8D%E5%A3%AB%E5%BB%89','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zhangboxing','张勃兴公开身份核对','https://zh.wikipedia.org/wiki/%E5%BC%A0%E5%8B%83%E5%85%B4','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_pengzhen','彭真公开身份核对','https://zh.wikipedia.org/wiki/%E5%BD%AD%E7%9C%9F','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_xizhongxun','习仲勋公开身份核对','https://zh.wikipedia.org/wiki/%E4%B9%A0%E4%BB%B2%E5%8B%8B','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_jiangzemin','江泽民公开身份核对','https://zh.wikipedia.org/wiki/%E6%B1%9F%E6%B3%BD%E6%B0%91','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_chenxitong','陈希同公开身份核对','https://zh.wikipedia.org/wiki/%E9%99%88%E5%B8%8C%E5%90%8C','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_libotan','李伯潭公开身份核对','https://zh.wikipedia.org/wiki/%E6%9D%8E%E4%BC%AF%E6%BD%AD','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_jiaqiang','贾蔷公开身份核对','https://zh.wikipedia.org/wiki/李伯潭','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_boxilai','薄熙来公开身份核对','https://zh.wikipedia.org/wiki/%E8%96%84%E7%86%99%E6%9D%A5','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_dengpufang','邓朴方公开身份核对','https://zh.wikipedia.org/wiki/%E9%82%93%E6%9C%B4%E6%96%B9','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_sunchunlan','孙春兰公开身份核对','https://zh.wikipedia.org/wiki/%E5%AD%99%E6%98%A5%E5%85%B0','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_chenhao_yunnan','陈豪公开身份核对','https://zh.wikipedia.org/wiki/陳豪_(1954年)','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_liyifeng','李易峰公开身份核对','https://zh.wikipedia.org/wiki/%E6%9D%8E%E6%98%93%E5%B3%B0','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_jiangshuying','江疏影公开身份核对','https://zh.wikipedia.org/wiki/%E6%B1%9F%E7%96%8F%E5%BD%B1','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_qinlan','秦岚公开身份核对','https://zh.wikipedia.org/wiki/%E7%A7%A6%E5%B2%9A','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zhangjike','张继科公开身份核对','https://zh.wikipedia.org/wiki/%E5%BC%A0%E7%BB%A7%E7%A7%91','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_lizhanshu','栗战书公开身份核对','https://zh.wikipedia.org/wiki/%E6%A0%97%E6%88%98%E4%B9%A6','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zhaowei','赵薇公开身份核对','https://zh.wikipedia.org/wiki/%E8%B5%B5%E8%96%87','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_liuye','刘烨公开身份核对','https://en.wikipedia.org/wiki/Liu_Ye_(actor)','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zhangfengyi','张丰毅公开身份核对','https://zh.wikipedia.org/wiki/%E5%BC%A0%E4%B8%B0%E6%AF%85','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_herundong','何润东公开身份核对','https://zh.wikipedia.org/wiki/%E4%BD%95%E6%B6%A6%E4%B8%9C','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_sunhonglei','孙红雷公开身份核对','https://zh.wikipedia.org/wiki/%E5%AD%99%E7%BA%A2%E9%9B%B7','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_wuzhenyu','吴镇宇公开身份核对','https://zh.wikipedia.org/wiki/%E5%90%B4%E9%95%87%E5%AE%87','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_kimheesun','金喜善公开身份核对','https://zh.wikipedia.org/wiki/%E9%87%91%E5%96%9C%E5%96%84','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_jiangwu','姜武公开身份核对','https://zh.wikipedia.org/wiki/%E5%A7%9C%E6%AD%A6','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_linkeqing','林克庆公开身份核对','https://zh.wikipedia.org/wiki/%E6%9E%97%E5%85%8B%E5%BA%86','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_zhengshuang','郑爽公开身份核对','https://zh.wikipedia.org/wiki/%E9%83%91%E7%88%BD','公开身份资料','公开人物资料／维基百科',NULL,NULL,'2026-09-23T00:17:15-07:00','按职业、机构、地区消歧；未核字段留空。该页只用于身份及注明的履历，不证实视频政治与私生活传闻。');
INSERT INTO "sources" VALUES('ic8_beautyboss','《我的美女老板》演职员表','https://m.1905.com/m/film/starlist/354156.shtml','公开核对资料','1905电影网',NULL,NULL,'2026-09-23T00:22:10-07:00','仅支持职业、任职或作品关联，不支持私人政治因果。');
INSERT INTO "sources" VALUES('ic8_epic','《一个女人的史诗》演员表','https://www.tvmao.com/drama/a1hXLw%3D%3D/actors','公开核对资料','电视猫',NULL,NULL,'2026-09-23T00:22:10-07:00','仅支持职业、任职或作品关联，不支持私人政治因果。');
INSERT INTO "sources" VALUES('ic8_sunzi','《孙子大传》作品与演员','https://zh.wikipedia.org/wiki/孙子大传','公开核对资料','维基百科',NULL,NULL,'2026-09-23T00:22:10-07:00','仅支持职业、任职或作品关联，不支持私人政治因果。');
INSERT INTO "sources" VALUES('ic8_lin_official','林克庆官方简历','https://www.gdszx.gov.cn/zxgk/zxld/liq/','公开核对资料','广东政协网',NULL,NULL,'2026-09-23T00:22:10-07:00','仅支持职业、任职或作品关联，不支持私人政治因果。');
INSERT INTO "sources" VALUES('ic8_sun_official','孙春兰简历','https://cpc.people.com.cn/n1/2017/1025/c414940-29608815.html','公开核对资料','人民网',NULL,NULL,'2026-09-23T00:22:10-07:00','仅支持职业、任职或作品关联，不支持私人政治因果。');
INSERT INTO "sources" VALUES('family_qixin_2018','习近平和他的父母','https://politics.people.com.cn/n1/2018/0220/c1001-29826529.html','公开身份与亲属资料','人民网',NULL,'2018-02-20','2026-09-23T00:32:45-07:00','检索可读正文摘录明确母亲齐心、父亲习仲勋和母亲的小儿子习远平；不支持未具名人物或其他传闻。');
INSERT INTO "sources" VALUES('family_qixin_2015','习远平：重温历史 面向未来','https://theory.people.com.cn/n/2015/0727/c40531-27367024.html','具名本人回忆','人民网',NULL,'2015-07-27','2026-09-23T00:32:45-07:00','习远平以母亲齐心、父亲习仲勋称谓叙述，支持家庭身份，不推定关系起始日期。');
CREATE TABLE unresolved_mentions (
 id TEXT PRIMARY KEY,
 source_id TEXT NOT NULL REFERENCES sources(id),
 phrase TEXT NOT NULL,
 locator TEXT,
 reason TEXT NOT NULL,
 resolved_person_id TEXT REFERENCES people(id),
 updated_at TEXT NOT NULL
);
INSERT INTO "unresolved_mentions" VALUES('u_v2_manus','video_UwwbGnDF5WA','Manus的创始人','00:49–00:53','未具名且可能涉及多位创始人；不擅自匹配具体人，更不将被限制出境的说法写成个人事实。',NULL,'2026-09-22T18:03:37-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_0','video_iUo_HMNIf54','一位律师','00:40–00:44','只有称谓，无唯一身份线索；不绑定配合调查说法。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_1','video_iUo_HMNIf54','一位观众账号','01:56–01:57','无法核实真实姓名。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_2','video_iUo_HMNIf54','一位打赏观众账号','03:41','无法核实真实姓名。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_3','video_iUo_HMNIf54','一位提问观众账号','06:14–06:30','无法核实真实姓名和职业。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_4','video_iUo_HMNIf54','一位提问观众账号','11:51–12:08','无法核实真实姓名。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_5','video_iUo_HMNIf54','一位被称为老高的创作者','15:15–15:17','无法仅凭称呼唯一匹配公开身份。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_6','video_iUo_HMNIf54','云南省长','03:12–03:13','视频未具名；不靠上传日推定身份。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_7','video_iUo_HMNIf54','湖州市市长','05:40–05:42','视频未具名；不擅自配人。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_8','video_iUo_HMNIf54','一家咨询机构','03:14–03:18','是机构称谓，不是人名。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_9','video_iUo_HMNIf54','一位未具名代号人物','13:41–13:43','主播明确否认与刘浩存相同。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v3_10','video_iUo_HMNIf54','何享健的未具名领导关系','01:07–01:12','节目未点名具体人，不能补造关系边。',NULL,'2026-09-22T22:18:22-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_0','yt_oG93w6k-1DY','许家印父母','01:46–02:01','未具名；不猜父亲革命经历',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_1','yt_oG93w6k-1DY','当地拖拉机司机','02:01–02:18','未具名',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_2','yt_oG93w6k-1DY','远房亲戚','02:27–02:39','未具名，地点未知',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_3','yt_oG93w6k-1DY','许家印配偶','04:46–05:28','本段未具名，婚姻与资产主张待核实',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_4','yt_oG93w6k-1DY','中达老板','08:13–09:06','未具名，不靠公司名称猜个人',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_5','yt_oG93w6k-1DY','担保老乡','11:10–11:33','未具名',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_6','yt_oG93w6k-1DY','双方总经理','18:01–18:45','未具名，合照和交易设想需另查',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_7','yt_oG93w6k-1DY','引入牌友圈的介绍人','20:40–21:00','未具名',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_v4_8','yt_oG93w6k-1DY','温家宝配偶与郑裕彤助理','23:33–23:50','未具名，代持指控待核实',NULL,'2026-09-22T23:37:42-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_0','yt_iC8a1SW78PE','路征母亲（姓名与身份待核）','08:31–12:48（章节定位，非逐句）','节目给出姓名音节，但尚无公开资料把具体姓名、驻京办职务与母子关系连在一起；不将同音字固化为真实姓名。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_1','yt_iC8a1SW78PE','路征父亲、外公、大舅、舅母、表嫂','08:31–12:48（章节定位，非逐句）','均未具名；父母、亲属及任职说法独立待核。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_2','yt_iC8a1SW78PE','周某某（模特）','12:48–16:55（章节定位，非逐句）','匿名称谓；不凭“跳水名模”标签猜测具体人物。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_3','yt_iC8a1SW78PE','某国际女星及其母亲','12:48–16:55（章节定位，非逐句）','没有具名；不把二次解读的候选姓名当成节目原意。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_4','yt_iC8a1SW78PE','S先生／匿名债权人','24:40–27:44（章节定位，非逐句）','身份未获可核原始裁判文书支持，不反推实名。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_5','yt_iC8a1SW78PE','路征配偶、景甜被指涉及的孩子','21:43–24:40（章节定位，非逐句）','未具名且亲子、婚姻主张无独立证明，不建立未成年人或配偶节点。',NULL,'2026-09-23T00:17:15-07:00');
INSERT INTO "unresolved_mentions" VALUES('u_ic8_6','yt_iC8a1SW78PE','江泽民夫妇中的妻子','08:31–12:48（章节定位，非逐句）','仅称夫妇，没有单独具名；本期不以外部推断扩展无实质事件的配偶档案。',NULL,'2026-09-23T00:17:15-07:00');
CREATE TABLE video_analyses (source_id TEXT PRIMARY KEY REFERENCES sources(id),video_id TEXT NOT NULL UNIQUE,title TEXT NOT NULL,summary TEXT NOT NULL,duration_seconds INTEGER NOT NULL,markdown_filename TEXT NOT NULL,markdown_text TEXT NOT NULL,created_at TEXT NOT NULL, locator_precision TEXT NOT NULL DEFAULT 'segment', new_person_ids_json TEXT NOT NULL DEFAULT '[]', ingest_note TEXT NOT NULL DEFAULT '');
INSERT INTO "video_analyses" VALUES('yt_oG93w6k-1DY','oG93w6k-1DY','许家印凭什么值得佩服？以点带面、以面压点与香港商界往事','围绕许家印的早年经历、经营方式、2008年融资、香港牌友圈与温家宏相关主张；56段逐项区分转述、评价、推测和未核实指控。',1550,'oG93w6k-1DY.md','# 许家印凭什么值得佩服？以点带面、以面压点与香港商界往事

- 视频：[鲁社长智库 · 原视频](https://www.youtube.com/watch?v=oG93w6k-1DY)；页面完整标题：鲁社长：许家印凭什么值得佩服？｜首度公开的高阶成功学“以点带面，以面压点” ｜香港大佬的香艳往事。
- 上传：2026-09-20（YouTube 展开简介核对）；原节目录制日期未知。时长25:50，字幕覆盖00:00–25:43；末尾无新增字幕。
- 本文为逐段原创概述和研究索引，不是原字幕。先保存本 Markdown，后写入 SQLite，再生成网页。
- 以下“主播说法”只证明节目这样说过，不代表所述事件已经证实。**时间码是视频播放位置，不是事件发生日期**。简介章节存在明显错位，以实际字幕位置为准。

## 文字关系摘要

本期以许家印为中心，串联早年经历、房地产经营、2008年融资困境与香港商界往来。核心关系线索为：许家印—宁高宁的会面转述，许家印—王石的求援与冲突解释，许家印—郑裕彤／刘銮雄／张松桥的牌友圈及融资故事，张松桥—肖建华的交易指控，以及温家宏—温家宝的亲属说法和温家宏—许家印／郑裕彤的持股及引荐推测。主播另自述早年与孙宏斌交往。

王石—郁亮可核对为同一企业的主席接任关系。李嘉诚主要作为商业模式对照，政策语境中的温家宝并不因此与许家印自动连线。刘銮雄与李嘉欣、关之琳的过往关系和私密传闻分开记录；不将传闻变成事实。

## 全部姓名核对表

|规范姓名|统一分类|身份核对与限制|核对来源|视频位置|
|---|---|---|---|---|
|许家印|商业|恒大创办人；舞阳钢铁、武汉钢铁学院经历匹配|[资料](https://www.cspgp.org.cn/gcrw/201902/t20190212_137080.html)|00:00、00:34、01:23、01:46、02:01、02:18、02:27、02:40、03:05、03:18、04:16、04:46、05:29、05:46、06:29、06:54、07:18、07:56、08:13、09:07、10:06、10:57、11:10、11:34、11:46、11:59、12:22、12:58、13:10、13:39、14:34、15:32、15:40、16:22、17:24、17:33、18:01、18:46、20:40、21:01、21:35、22:18、22:52、23:05、23:20、23:51、24:00、24:16|
|刘銮雄|商业|香港商人；华人置业资料中的刘氏家族|[资料](https://www.chineseestates.com/SiteElements/CEHL_Website/Documents/News/Press%20release_UK_R2_SC.pdf)|00:00、19:39、19:54、20:10、20:40、21:01|
|李嘉欣|演员主持人|演员 Michelle Lee；与同音姓名区分|[资料](https://www.1905.com/mdb/star/366/)|00:00、19:39|
|关之琳|演员主持人|演员 Rosamund Kwan；公开艺名，原名关家慧|[资料](https://www.1905.com/mdb/star/392/details/)|00:00、19:39、19:54|
|宁高宁|商业|曾任中国中化党组书记、董事长|[资料](https://www.sinochem.com/zhjt/xwzx/jtdt/2024/10/I1294309057259110400.html)|04:16|
|李嘉诚|商业|长江集团创办人、李嘉诚基金会创办人|[资料](https://www.lksf.org/our-founder/?lang=hk)|13:10、14:49、18:46、20:10|
|王石|商业|万科创始人，原董事会主席|[资料](https://www.vanke.com/about/chairman)|13:39、14:25、17:24、17:33、18:01|
|郁亮|商业|万科2017年接任董事会主席；采用已核对写法|[资料](https://companies.caixin.com/2017-06-30/101108256.html)|14:25|
|孙宏斌|商业|融创创办人、董事会主席，口述老孙指此人|[资料](https://www.sunac.com.cn/mobile/about.aspx?type=6)|15:23|
|郑裕彤|商业|新世界发展、周大福创办人；不把荣誉博士当学历|[资料](https://www.nwd.com.hk/zh-hant/content/新世界發展主席鄭裕彤博士獲特區政府頒發大紫荊勳章)|18:46、20:40、21:01、21:35、23:05、23:33、23:51、24:16|
|张松桥|商业|中渝置地张松桥；重庆李嘉诚为公开绰号|[资料](https://www.ccland.com.hk/tc/CorporateInformation.php)|18:46、19:15、20:40、21:01|
|肖建华|商业|明天控股相关商人；与同名诉讼当事人区分|[资料](https://www.cls.cn/detail/1105240)|19:15|
|温家宏|商业|姓名与历史公司公告匹配；家族及持股叙事仍需分项核对|[资料](https://m.cj.sina.cn/page/aHR0cDovL2ZpbmFuY2Uuc2luYS5jb20uY24vc3RvY2svY29tcGFueS9zei8wMDA1MDIvMjQvMzEuc2h0bWw?from=redirect)|23:20、23:33、23:51、24:00|
|温家宝|政治|既有人物：国务院原总理；本期复核政策语境，非同名者|[资料](https://www.gov.cn/flfg/2008-03/16/content_921899.htm)|22:18、23:20、23:33|
|鲁社长|媒体|主播公开频道名，真实法定姓名未确认，继续沿用稳定ID|[资料](https://www.youtube.com/watch?v=oG93w6k-1DY)|00:34、14:49、15:23|

## 逐段人物、事件与微观线索

### 00:00–00:34 · 开场预告

[跳到 00:00](https://www.youtube.com/watch?v=oG93w6k-1DY&t=0s) · 人物：许家印、刘銮雄、李嘉欣、关之琳 · 类型：预告与传闻

开场预告许家印的成功路径、经营方式以及刘銮雄与女演员的往事。内容在后段重复；涉及关之琳的私密传闻不作为事实事件。

### 00:34–01:23 · 主播对许家印的评价

[跳到 00:34](https://www.youtube.com/watch?v=oG93w6k-1DY&t=34s) · 人物：许家印、鲁社长 · 类型：公开评价

鲁社长认为研究许家印要同时看商业和政治路径，不能用最终失败否定全部经历；将他列入自己最愿意交往的商人前三名，评价其讲义气、肯花钱、值得交朋友。这是意愿和评价，并未声称二人已经是朋友。

### 01:23–01:46 · 性格与成败的解释

[跳到 01:23](https://www.youtube.com/watch?v=oG93w6k-1DY&t=83s) · 人物：许家印 · 类型：主播分析

主播把许家印的聪明、上进和经营人际关系的能力，解释为其成功的重要原因；“一定会成功”属于判断，不是可验证的人生规律。

### 01:46–02:01 · 早年家庭

[跳到 01:46](https://www.youtube.com/watch?v=oG93w6k-1DY&t=106s) · 人物：许家印 · 类型：主播说法

主播称许家印母亲早逝、幼时生活贫困，有“吃百家饭”的经历；对父亲是否老红军使用猜测语气。父母未具名，不替父亲确认军队经历。

### 02:01–02:18 · 向拖拉机司机学技术

[跳到 02:01](https://www.youtube.com/watch?v=oG93w6k-1DY&t=121s) · 人物：许家印 · 类型：主播说法

主播称许家印年少时反复向当地司机示好，希望学习驾驶拖拉机，以获得走出农村的机会。司机未具名，未给出具体年份。

### 02:18–02:27 · 劳动与争取机会

[跳到 02:18](https://www.youtube.com/watch?v=oG93w6k-1DY&t=138s) · 人物：许家印 · 类型：主播分析

主播提及许家印掏粪劳动，并把动机解释为争取进步、入党或工作机会。劳动叙述与动机推测分开，未据此创建入党事件。

### 02:27–02:39 · 求助远房亲戚

[跳到 02:27](https://www.youtube.com/watch?v=oG93w6k-1DY&t=147s) · 人物：许家印 · 类型：主播说法

主播称许家印曾给城市里的远房亲戚写信求助找工作，但没有回音。亲戚身份、城市和时间均不明。

### 02:40–03:03 · 两次高考与入学

[跳到 02:40](https://www.youtube.com/watch?v=oG93w6k-1DY&t=160s) · 人物：许家印 · 类型：主播说法

主播称许家印连续两年参加高考，最终进入武汉钢铁学院。院校规范为武汉钢铁学院（今武汉科技大学）；外部资料支持其于1982年毕业，具体两次考试情节仍单独保留核实状态。

### 03:05–03:17 · 没有高考的假设

[跳到 03:05](https://www.youtube.com/watch?v=oG93w6k-1DY&t=185s) · 人物：许家印 · 类型：反事实推演

主播设想即使没有恢复高考，许家印也会成为村长或有能力的地方人物。这不是任职经历，不能写入村干部履历。

### 03:18–04:14 · 成功经验与风险意识

[跳到 03:18](https://www.youtube.com/watch?v=oG93w6k-1DY&t=198s) · 人物：许家印 · 类型：主播分析

主播认为持续成功强化了许家印的自信与野心，由国内首富向世界首富想象扩张，缺乏对失败的预期。此段是心理和经营动机分析，不建立事实状态。

### 04:16–04:46 · 与宁高宁讨论农业扶贫

[跳到 04:16](https://www.youtube.com/watch?v=oG93w6k-1DY&t=256s) · 人物：许家印、宁高宁 · 类型：转述会面

主播转述宁高宁的说法：恒大危机爆发前许家印仍谈及约1000亿元农业扶贫计划。主播对距危机“一周还是一个月”并不确定；会面时间、金额和原始采访待核实。

### 04:46–05:28 · 信托、婚姻与资产处置说法

[跳到 04:46](https://www.youtube.com/watch?v=oG93w6k-1DY&t=286s) · 人物：许家印 · 类型：待核实指控

主播称许家印在危机后才安排家族信托、所谓技术性离婚及配偶出售资产，并提及大额资金，数字不确定。没有提供法律文件；配偶未具名，不据此认定离婚时间、资产转移或违法行为。

### 05:29–05:45 · 碧桂园的对比

[跳到 05:29](https://www.youtube.com/watch?v=oG93w6k-1DY&t=329s) · 人物：许家印 · 类型：公司背景评论

主播比较碧桂园危机前的百亿元级基金会捐赠，并在口述中从信托改为捐赠。没有点名相关执行人，不补出人物节点；金额、性质与时间待另查公告。

### 05:46–06:28 · 对行业财务的泛化批评

[跳到 05:46](https://www.youtube.com/watch?v=oG93w6k-1DY&t=346s) · 人物：许家印 · 类型：待核实指控

主播泛称恒大、碧桂园、万科等企业的财务问题，并反对只在失败后进行道德审判。未提供逐家公司证据，不能将泛化评论转为这些公司的违法结论。

### 06:29–06:53 · 舞阳钢铁履历与校园职务

[跳到 06:29](https://www.youtube.com/watch?v=oG93w6k-1DY&t=389s) · 人物：许家印 · 类型：主播说法

主播明确说许家印在舞阳钢铁厂任职，并称其曾为优秀员工、学生会主席及正处级干部。公开资料可支持舞阳钢铁车间主任经历；学生会职务及行政级别尚未独立核实。

### 06:54–07:17 · 安全考核的轶事

[跳到 06:54](https://www.youtube.com/watch?v=oG93w6k-1DY&t=414s) · 人物：许家印 · 类型：主播说法

主播举出通过头部倾斜角度判断员工是否睡觉的管理细节，并称规则沿用至今。官方宣传资料提及“150度考核法”，但当前是否仍实施未核实。

### 07:18–07:55 · 离开钢厂的不同解释

[跳到 07:18](https://www.youtube.com/watch?v=oG93w6k-1DY&t=438s) · 人物：许家印 · 类型：待核实指控

主播不接受单纯因不满待遇而离职的叙事，称许家印因与员工私分奖金受处分，升迁受阻后南下深圳。处分文件、奖金处理方式和因果关系均未取得。

### 07:56–08:12 · 深圳求职简历

[跳到 07:56](https://www.youtube.com/watch?v=oG93w6k-1DY&t=476s) · 人物：许家印 · 类型：主播说法

主播称许家印求职时先准备二十多页简历，后来缩到两页，以说明从国企转向市场的不适应。具体页数与求职过程未独立核实。

### 08:13–09:06 · 中达、广州项目与创业动机

[跳到 08:13](https://www.youtube.com/watch?v=oG93w6k-1DY&t=493s) · 人物：许家印 · 类型：主播分析

主播称许家印为中达老板在广州开发楼盘赚得大笔收益，质疑其因3000元工资未涨到一两万元而离职的常见故事；认为他辞职前已注册企业，早有创业安排。老板未具名，工资数字和注册先后均待核实。

### 09:07–10:06 · 早期房地产机会

[跳到 09:07](https://www.youtube.com/watch?v=oG93w6k-1DY&t=547s) · 人物：许家印 · 类型：经营分析

主播以1990年代广州商品房试点、1998年住房改革为背景，解释许家印愿冒风险的获利模式。1993—1994年附近的叙事不能替代恒大1996年创办时间。

### 10:06–10:55 · 海珠农药厂地块

[跳到 10:06](https://www.youtube.com/watch?v=oG93w6k-1DY&t=606s) · 人物：许家印 · 类型：主播说法

主播称许家印看中广州海珠一块农药厂用地，土地受污染、国企不愿接手，地价约1500万至2000万元。没有地块合同或环境资料，污染状况与价格尚未核实。

### 10:57–11:09 · 分期支付土地款

[跳到 10:57](https://www.youtube.com/watch?v=oG93w6k-1DY&t=657s) · 人物：许家印 · 类型：主播说法

主播称土地款谈成三期支付，首期约500万元。属于创业融资故事的一部分，不将口述概数作为合同金额。

### 11:10–11:33 · 老乡担保与贷款

[跳到 11:10](https://www.youtube.com/watch?v=oG93w6k-1DY&t=670s) · 人物：许家印 · 类型：主播说法

主播称一位老乡提供担保，加上地块形成融资条件，借到600万元，其中约500万元付地价、100万元留作周转。老乡和金融机构均未具名。

### 11:34–11:45 · 换土处理的说法

[跳到 11:34](https://www.youtube.com/watch?v=oG93w6k-1DY&t=694s) · 人物：许家印 · 类型：待核实说法

主播称挖走污染土并换土解决了地块问题。未取得环境检测或修复验收材料，不能据此判断地块已安全。

### 11:46–11:58 · 先建售楼处预售

[跳到 11:46](https://www.youtube.com/watch?v=oG93w6k-1DY&t=706s) · 人物：许家印 · 类型：主播说法

主播称项目先建大门和售楼处、进行预售，再以回款建设。项目名称和监管许可未在本段说明。

### 11:59–12:21 · 小户型、价格和销售数字

[跳到 11:59](https://www.youtube.com/watch?v=oG93w6k-1DY&t=719s) · 人物：许家印 · 类型：主播说法

主播给出售价每平方米2800元、周边约3500元，小户型在一两天卖出约300套、回款约8000万元的说法。对售完所需时间有迟疑，各项数字均待原始资料核对。

### 12:22–12:57 · 高周转经营逻辑

[跳到 12:22](https://www.youtube.com/watch?v=oG93w6k-1DY&t=742s) · 人物：许家印 · 类型：经营分析

主播将预售回款支付工程和后续地价、低价拿地及低毛利快速周转，概括为许家印做大的方法。这是商业模式解释，不能直接推导具体利润率。

### 12:58–13:10 · 周转率比喻

[跳到 12:58](https://www.youtube.com/watch?v=oG93w6k-1DY&t=778s) · 人物：许家印 · 类型：示例计算

主播用每天1%周转的夸张简化例子说明速度重要，并类比胖东来；不是恒大的实际年化收益数据，也没有点名胖东来的具体人物。

### 13:10–13:39 · 李嘉诚的地产模式

[跳到 13:10](https://www.youtube.com/watch?v=oG93w6k-1DY&t=790s) · 人物：李嘉诚、许家印 · 类型：经营比较

主播把李嘉诚概括为低价囤地、长期等待升值，将其与许家印的快速开发模式比较。比较两人的策略不等于证明二人有人际联系。

### 13:39–14:24 · 万科的产品与服务路线

[跳到 13:39](https://www.youtube.com/watch?v=oG93w6k-1DY&t=819s) · 人物：王石、许家印 · 类型：经营分析

主播认为万科强调产品质量、物业服务、管理和较慢开发节奏，称其较少依赖官场关系，并提到早期百亿元销售规模。属于经营评价，销售年份和政商关系概括需单独核实。

### 14:25–14:34 · 王石与郁亮的经营风格

[跳到 14:25](https://www.youtube.com/watch?v=oG93w6k-1DY&t=865s) · 人物：王石、郁亮 · 类型：经营比较

主播比较王石时期的较慢节奏与郁亮上任后的加速。规范姓名采用郁亮；董事会主席接任发生于2017年，不能与其更早担任总裁混淆。

### 14:34–14:48 · 外围地块与三四线城市

[跳到 14:34](https://www.youtube.com/watch?v=oG93w6k-1DY&t=874s) · 人物：许家印 · 类型：经营分析

主播将恒大、碧桂园在外围及三四线城市的扩张与高周转联系起来。此处又说到高利润率，与前段低毛利叙述存在口述不一致，保留而不替主播消除矛盾。

### 14:49–15:22 · 对李嘉诚的价值评价

[跳到 14:49](https://www.youtube.com/watch?v=oG93w6k-1DY&t=889s) · 人物：李嘉诚、鲁社长 · 类型：公开评价

主播认为不应以好人坏人或是否做慈善简单评判商人，肯定李嘉诚按市场逻辑经营的能力。这是公开评论，不推导鲁社长与李嘉诚有私交。

### 15:23–15:30 · 主播自述与孙宏斌交往

[跳到 15:23](https://www.youtube.com/watch?v=oG93w6k-1DY&t=923s) · 人物：鲁社长、孙宏斌 · 类型：亲历自述

鲁社长称早年与孙宏斌很熟、常一起喝酒，时间在对方尚未做大之前。视频未给年份；作为单方自述关系，未独立证实、不打亲疏分。

### 15:32–15:38 · 段落小结

[跳到 15:32](https://www.youtube.com/watch?v=oG93w6k-1DY&t=932s) · 人物：许家印 · 类型：节目衔接

主播结束发家经历部分，并感谢观众。观众致谢不新增人物；没有新的实质关系事件。

### 15:40–16:21 · 2008年上市与对赌压力

[跳到 15:40](https://www.youtube.com/watch?v=oG93w6k-1DY&t=940s) · 人物：许家印 · 类型：主播说法

主播称恒大危机来自上市受阻与投资者对赌约定，并举500亿、300亿元的估值例子说明回购压力。例子不是恒大真实估值，不能照抄为财务事实。

### 16:22–17:23 · 从区域扩张到全国及现金压力

[跳到 16:22](https://www.youtube.com/watch?v=oG93w6k-1DY&t=982s) · 人物：许家印 · 类型：主播说法

主播称恒大借助融资在多地买地，2008年金融危机致上市失败，面临回购和利息压力，土地难以立即变现。各项融资合同和具体到期日未在节目展示。

### 17:24–17:32 · 向王石求援的说法

[跳到 17:24](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1044s) · 人物：许家印、王石 · 类型：主播说法

主播称许家印在2008年寻求万科帮助而王石未予回应。缺少当事人直接记录，作为待核实求助关系；不据此确认长期敌对。

### 17:33–18:00 · 宝万之争中的入股与动机

[跳到 17:33](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1053s) · 人物：许家印、王石 · 类型：主播推测

主播称恒大在宝万之争中入股万科成为第二大股东，并将此解释为许家印对王石的报复。交易与动机分开，报复属于推测，不能自动产生负好感度。

### 18:01–18:45 · 与宝能谈交易的设想

[跳到 18:01](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1081s) · 人物：许家印、王石 · 类型：混合叙述与反事实

主播称宝能面临融资压力、双方总经理曾合照谈判；又模拟许家印收购报价及其有可能成为第一大股东的情景，称最终受政治因素制约。模拟对话并非原话，相关总经理未具名。

### 18:46–19:14 · 香港牌友圈与张松桥

[跳到 18:46](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1126s) · 人物：许家印、李嘉诚、郑裕彤、张松桥 · 类型：圈层转述

主播谈及香港商界“大D会”、郑裕彤及有“重庆李嘉诚”之称的张松桥，并以金庸人物裘千仞比喻张的商界地位。李嘉诚在此处是绰号参照，裘千仞是虚构角色，都不因此新增关系。

### 19:15–19:38 · 张松桥与肖建华的南山人寿故事

[跳到 19:15](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1155s) · 人物：张松桥、肖建华 · 类型：待核实指控

主播称张松桥与肖建华的明天系利用香港上市公司参与台湾南山人寿收购，并指张借消息推动股价、退出获利近千亿元。未说明准确币种、公司、交易日期，也未给监管结论；不作为操纵市场的事实认定。

### 19:39–19:53 · 刘銮雄与两位演员

[跳到 19:39](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1179s) · 人物：刘銮雄、李嘉欣、关之琳 · 类型：私人关系转述

主播介绍刘銮雄的市场操作风格，并提及他与李嘉欣、关之琳的过往感情关系。本次关系记录限于主播转述，未补造交往日期或亲密程度。

### 19:54–20:09 · 关之琳私密传闻

[跳到 19:54](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1194s) · 人物：刘銮雄、关之琳 · 类型：有争议传闻

主播重复所谓高尔夫球及就医传闻，未给证据；刘銮雄曾公开否认相关传闻。这里只保存节目提及与反证线索，不将性暴力、就医或私生活细节列为已经发生的事实。

### 20:10–20:39 · 所谓商界前台的解释

[跳到 20:10](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1210s) · 人物：刘銮雄、李嘉诚 · 类型：待核实指控

主播把刘銮雄描述成替其他香港富商处理不便公开业务的前台，并以李嘉诚作对比。没有具体委托关系或交易凭证，不据此给两人建立犯罪同盟关系。

### 20:40–21:00 · 进入郑裕彤等人的牌友圈

[跳到 20:40](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1240s) · 人物：许家印、郑裕彤、张松桥、刘銮雄 · 类型：圈层转述

主播称许家印经引荐参加郑裕彤、张松桥、刘銮雄的聚会；先说每月多次，随后改为每周。引荐者未具名，频率不确定；归档为待核实社交圈描述。

### 21:01–21:34 · 现金结算赌资的故事

[跳到 21:01](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1261s) · 人物：许家印、郑裕彤、张松桥、刘銮雄 · 类型：市场传闻

主播称许家印携现金打牌、及时付清输款，不立即开口求助，以此建立信任；输掉约1000万至2000万港元，历时先说多年又改为数月。23:05后主播说明这类叙事是市场流传版本。

### 21:35–22:16 · 郑裕彤投资与信用支持

[跳到 21:35](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1295s) · 人物：许家印、郑裕彤 · 类型：主播说法

主播称郑裕彤带头引入约5亿美元资金，并通过新世界合作帮助恒大获得信用，缓解2008年危机。需区分投资集团总额与郑裕彤个人出资；本期未提供协议证明。

### 22:18–22:50 · 刺激政策与2009年上市

[跳到 22:18](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1338s) · 人物：许家印、温家宝 · 类型：政策背景

主播以温家宝任内四万亿元刺激政策、2009年房地产反弹及恒大香港上市解释许家印财富上升。政策背景本身不是温家宝与许家印有私人交往的证据。

### 22:52–23:03 · 事业高峰的判断

[跳到 22:52](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1372s) · 人物：许家印 · 类型：主播评价

主播把2017至2018年前后视为许家印的高峰。属于阶段评价，不转化为正式岗位、职务或资产金额。

### 23:05–23:19 · 主播说明故事来源

[跳到 23:05](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1385s) · 人物：许家印、郑裕彤 · 类型：来源限定

主播将牌局获救叙事明确称为市场上流传的故事，并认为投资决定不会只取决于仗义或交情。这一限定同时适用于前面的牌局与援助动机描述。

### 23:20–23:32 · 温家宏身份与持股说法

[跳到 23:20](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1400s) · 人物：温家宏、温家宝、许家印 · 类型：待核实持股主张

主播称温家宏是温家宝的弟弟、恒大的第二大股东并持有巨额股份。公开历史公告中确有温家宏董事记录，但证券代码000502的历史上市主体不能自动等同于2009年香港上市恒大；第二大股东和具体比例未核实。

### 23:33–23:50 · 郑、温两家的往来与代持说法

[跳到 23:33](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1413s) · 人物：郑裕彤、温家宝、温家宏 · 类型：待核实指控

主播称郑裕彤与温家宝家族关系密切，并称温家宝配偶的平安保险股份由郑的一位助理代持。配偶及助理未具名，未取得代持协议或登记资料；不把对家族的说法写成温家宝本人的已证实交易。

### 23:51–23:58 · 所谓求援电话

[跳到 23:51](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1431s) · 人物：温家宏、郑裕彤、许家印 · 类型：主播推测

主播断言温家宏应曾打电话促成郑裕彤援助许家印，但未声称亲历或提供通话证据。这一段只作为“推测的引荐”保存，时间未知，不作为已发生通话事件。

### 24:00–24:15 · 上市后套现的说法

[跳到 24:00](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1440s) · 人物：温家宏、许家印 · 类型：待核实指控

主播称温家宏是许家印之外的主要上市获利者，套现几十亿、接近但不到100亿港元。未取得持股与减持凭证，金额与获利排序均未核实。

### 24:16–25:43 · 关系拓展的方法论

[跳到 24:16](https://www.youtube.com/watch?v=oG93w6k-1DY&t=1456s) · 人物：许家印、郑裕彤 · 类型：方法论评论

主播总结：通过一个人扩展接触面，再通过多重条件和自己的实际行动促成一个人的决定。此为成功学解释，不额外创建人际关系或事实事件。

## 匿名、非人物及未纳入项

|称谓|时间|处理|
|---|---|---|
|许家印父母|01:46–02:01|未具名；不猜父亲革命经历|
|当地拖拉机司机|02:01–02:18|未具名|
|远房亲戚|02:27–02:39|未具名，地点未知|
|许家印配偶|04:46–05:28|本段未具名，婚姻与资产主张待核实|
|中达老板|08:13–09:06|未具名，不靠公司名称猜个人|
|担保老乡|11:10–11:33|未具名|
|双方总经理|18:01–18:45|未具名，合照和交易设想需另查|
|引入牌友圈的介绍人|20:40–21:00|未具名|
|温家宝配偶与郑裕彤助理|23:33–23:50|未具名，代持指控待核实|

裘千仞（19:12附近）是虚构人物比喻，不建实名节点。中达、万科、宝能、明天系、南山人寿、新世界、周大福、恒大、碧桂园、胖东来是机构／品牌，不能凭名称补出未点名的负责人。致谢观众不建人物；简介中的通用标签（如习近平、王小洪、江泽民）不等于正文提及。推荐栏与评论区均不纳入。

## 需要继续核实与反证

- 温家宏：董事身份、温家宝亲属身份、不同恒大法律主体的持股、2009年IPO获利、引荐电话，必须逐项核对。历史公告仅支持所列主体及董事任命，不能证明本片的全部金融说法。
- 郑裕彤投资：本片所说5亿美元不能全额归为个人投资；打牌输款、建立信任与投资原因属于市场故事。
- 关之琳传闻：[刘銮雄公开回应的媒体报道](https://www.zaobao.com.sg/entertainment/story20230107-1351091)记录了其否认。原始记者会仍待补充；因此标记为有争议，不建立性暴力或就医事实。
- 许家印离职处分、资金与婚姻安排，张松桥与肖建华的操纵股价指控，以及温家族股份代持指控，均缺少本片提供的原始证据。
- 所有主播自述交往和动机分析保留来源，不量化好感度。未知事件日期留空；视频上传时间不充当事件时间。

## 收录顺序

1. 完整读取25分50秒视频可得字幕并核对元信息；逐段建立上述摘要及规范姓名表。
2. 先保存本文件，再运行本期迁移，将每段的标题、摘要、秒数、人物关联和核实状态写入 SQLite。
3. 网页仅从 SQLite 导出逐段索引和 Markdown 下载，后续修订须同步到数据库与本文件。
','2026-09-22T23:37:42-07:00','segment','["p_xujiayin", "p_liuluanxiong", "p_lijiaxin", "p_guanzhilin", "p_ninggaoning", "p_lijiacheng", "p_wangshi", "p_yuliang", "p_sunhongbin", "p_zhengyutong", "p_zhangsongqiao", "p_xiaojianhua", "p_wenjiahong"]','');
INSERT INTO "video_analyses" VALUES('yt_iC8a1SW78PE','iC8a1SW78PE','景甜、路征与万达：幕后关系假说及公开资料核对','本期讨论景甜、路征、王健林及陕西、福建、北京、河北政治人物。主播修正先前关于习远平的猜想，提出路征家族网络解释，并明确承认是猜测。已补充可核职务、演出、公开交往及日期反证。定位为 YouTube 章节范围，尚非逐句校时。',1664,'iC8a1SW78PE_人名与关系.md','# 景甜、路征与万达：幕后关系假说及公开资料核对

- 视频：[观看本期](https://www.youtube.com/watch?v=iC8a1SW78PE)；视频 ID：`iC8a1SW78PE`。
- 上传者：政经鲁社长；YouTube 页面显示首播 2026-09-15（本地时区）。同题播客 RSS 发布时间为 2026-09-16T15:23:17Z；不以此代替录制时间。
- 视频播放器时长 27:44；找到的同题播客音频约 26:32。YouTube 字幕接口未提供可读取字幕，本次用播客音频完整转写后阅读，并与原视频标题、简介、章节核对。替代音频是否存在删节尚不能排除。
- **定位精度：章节范围。** 下列时间为原 YouTube 简介中的章节起止，不是 ASR 原始秒数；同一章节的多个细节共用回看入口。不得把播客秒数直接迁移为视频逐句时间。
- 报道时间、发生时间、收录时间分开；收录：2026-09-23T00:12:11-07:00。

## 关系总览

本期讨论景甜、路征、王健林及陕西、福建、北京、河北政治人物。主播修正先前关于习远平的猜想，提出路征家族网络解释，并明确承认是猜测。已补充可核职务、演出、公开交往及日期反证。定位为 YouTube 章节范围，尚非逐句校时。

- 可核职业网络：电影作品的制作／演出合作；公开晚会表演合作。
- 可核公开交往：景甜与张继科曾公开恋情并公布分手。公开日期不等同于实际交往起止。
- 本期新假说：路征→匿名母亲／陕西亲属→贾庆林→金融及文化主管→万达／景甜。这条链多数环节未独立证实，不是已经查明的权力输送。
- 景甜与习远平、叶选廉、曾庆淮、景俊海的所谓幕后关系，只作为被列举／被质疑的候选说法，不画成已知亲密关系。

## 全部姓名核对表

| 规范姓名 | 分类 | 本次 | 核实身份（不证明传闻） | 时间入口 | 外部来源 |
|---|---|---|---|---|---|
| 景甜 | 演员主持人 | 新增 | 演员，北京电影学院表演系本科毕业；本期中心人物 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s)、[05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s)、[16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s)、[18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s)、[21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s)、[24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://www.1905.com/mdb/star/1177/) |
| 习远平 | 其他名人 | 新增 | 习仲勋之子、习近平之弟，曾任国际节能环保协会会长 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s)、[07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) | [身份来源](https://zh.wikipedia.org/wiki/%E4%B9%A0%E8%BF%9C%E5%B9%B3) |
| 王健林 | 商业 | 新增 | 万达集团董事长 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s)、[05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s)、[16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s)、[21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://www.wanda.cn/about/chairman/) |
| 俞正声 | 政治 | 新增 | 曾任全国政协主席、上海市委书记 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) | [身份来源](https://www.bjtzb.gov.cn/wwwroot/sdtyzx/publish/article/218/10835.shtml) |
| 张峻 | 商业 | 新增 | 富德集团、富德保险控股负责人；按机构消歧 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) | [身份来源](https://www.funde-ins.com/jtgk/qyld/493273.shtml) |
| 景俊海 | 政治 | 新增 | 曾任陕西省委宣传部长、吉林省委书记 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s)、[07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) | [身份来源](https://jl.people.com.cn/n2/2020/1125/c349771-34437202.html) |
| 王思聪 | 商业 | 新增 | 普思投资创办人，王健林之子 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E7%8E%8B%E6%80%9D%E8%81%AA) |
| 贾庆林 | 政治 | 新增 | 曾任全国政协主席、北京市委书记、福建省委书记 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s)、[16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s)、[18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s)、[24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://www.cppcc.gov.cn/2011/09/22/ARTI1316659825496963.shtml) |
| 王兆国 | 政治 | 新增 | 曾任全国人大常委会副委员长、全国总工会主席 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E7%8E%8B%E5%85%86%E5%9B%BD) |
| 路征 | 商业 | 新增 | 影视出品人、制片人，1905电影网有作品条目；家族说法未独立证实 | [00:00](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s)、[07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s)、[08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s)、[16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s)、[18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s)、[21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s)、[24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://m.1905.com/m/star/workslist/3027570/) |
| 叶选廉 | 商业 | 新增 | 企业经营者，叶剑英之子 | [07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%8F%B6%E9%80%89%E5%BB%89) |
| 曾庆淮 | 政治 | 新增 | 曾任文化部特别巡视员、驻香港特派员 | [07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%9B%BE%E5%BA%86%E6%B7%AE) |
| 李瑞山 | 政治 | 新增 | 曾任陕西省委第一书记、陕西省革命委员会主任 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%9D%8E%E7%91%9E%E5%B1%B1) |
| 霍士廉 | 政治 | 新增 | 曾任陕西省委书记、农业部部长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E9%9C%8D%E5%A3%AB%E5%BB%89) |
| 贾治邦 | 政治 | 新增 | 曾任陕西省省长、国家林业局局长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://www.gov.cn/gzdt/2010-06/08/content_1623416.htm) |
| 张勃兴 | 政治 | 新增 | 曾任陕西省省长、省委书记 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%BC%A0%E5%8B%83%E5%85%B4) |
| 彭真 | 政治 | 新增 | 曾任全国人大常委会委员长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%BD%AD%E7%9C%9F) |
| 习仲勋 | 政治 | 新增 | 曾任国务院副总理、全国人大常委会副委员长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E4%B9%A0%E4%BB%B2%E5%8B%8B) |
| 李建国 | 政治 | 新增 | 曾任全国人大常委会副委员长、陕西省委书记 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://npc.people.com.cn/n/2013/0318/c15257-20820773.html) |
| 贾治国 | 政治 | 新增 | 陕西省委第四巡视组原组长；不与河北宗教人士等同名者混同 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://meixian.qinfeng.gov.cn/info/1015/3577.htm) |
| 贾锋 | 政治 | 新增 | 陕西省商务厅党组书记（2024年资料）；曾任陕西省政府副秘书长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://xatb.mofcom.gov.cn/tpjj/art/2024/art_e89eb4ea08a446b2b859e697fc18b5b8.html) |
| 江泽民 | 政治 | 新增 | 曾任中共中央总书记、国家主席、中央军委主席 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%B1%9F%E6%B3%BD%E6%B0%91) |
| 陈希同 | 政治 | 新增 | 曾任北京市委书记、北京市市长 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/%E9%99%88%E5%B8%8C%E5%90%8C) |
| 李伯潭 | 商业 | 新增 | 北京昭德置业董事长，曾任贵州茅台独立董事 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%9D%8E%E4%BC%AF%E6%BD%AD) |
| 贾蔷 | 其他名人 | 新增 | 贾庆林之女、李伯潭之妻；职业资料待补充 | [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) | [身份来源](https://zh.wikipedia.org/wiki/李伯潭) |
| 薄熙来 | 政治 | 新增 | 曾任大连市长、辽宁省长、商务部部长、重庆市委书记 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E8%96%84%E7%86%99%E6%9D%A5) |
| 邓朴方 | 政治 | 新增 | 曾任全国政协副主席、中国残联主席 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E9%82%93%E6%9C%B4%E6%96%B9) |
| 刘明康 | 政治 | 新增 | 原中国银监会主席，曾在福建任职 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://www.cppcc.gov.cn/zxww/2017/03/09/ARTI1489025406355333.shtml) |
| 王新宇 | 商业 | 新增 | 纽约时报万达股权调查所述商人、王兆国之子；不与网球运动员同名者混同 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://chinadigitaltimes.net/chinese/390766.html) |
| 温如春 | 商业 | 新增 | 商界人士，温家宝之女 | [05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s)、[12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) |
| 邓家贵 | 商业 | 新增 | 商人，齐桥桥之夫 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) |
| 齐桥桥 | 商业 | 新增 | 商界人士，习近平之姐；由节目“大姐”称谓结合公开关系定位 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) |
| 孙春兰 | 政治 | 新增 | 曾任国务院副总理、全国总工会党组书记 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%AD%99%E6%98%A5%E5%85%B0) |
| 陈豪 | 政治 | 新增 | 曾任云南省委书记、全国总工会副主席；不是香港演员陈豪 | [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) | [身份来源](https://en.wikipedia.org/wiki/Chen_Hao_(politician)) |
| 高虎城 | 政治 | 新增 | 曾任商务部部长，巴黎第七大学社会学博士 | [16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) | [身份来源](https://gaohucheng.mofcom.gov.cn/article/resume/) |
| 蔡赴朝 | 政治 | 新增 | 曾任国家新闻出版广电总局局长、北京市委宣传部长 | [16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) | [身份来源](https://politics.people.com.cn/n/2013/0320/c351134-20853672.html) |
| 李易峰 | 演员主持人 | 新增 | 中国内地演员、歌手 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%9D%8E%E6%98%93%E5%B3%B0) |
| 江疏影 | 演员主持人 | 新增 | 中国内地演员 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%B1%9F%E7%96%8F%E5%BD%B1) |
| 秦岚 | 演员主持人 | 新增 | 中国内地演员、歌手 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://zh.wikipedia.org/wiki/%E7%A7%A6%E5%B2%9A) |
| 张继科 | 其他名人 | 新增 | 乒乓球运动员、奥运冠军 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s)、[24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%BC%A0%E7%BB%A7%E7%A7%91) |
| 聂辰席 | 政治 | 新增 | 曾任国家广播电视总局局长 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://cpc.people.com.cn/GB/64162/123659/123782/7359502.html) |
| 铁凝 | 政治 | 新增 | 作家、中国文联主席、第十四届全国人大常委会副委员长；按最高已收录公职归政治 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://o.cflac.org.cn/zgwl/wlld/TieNing/) |
| 栗战书 | 政治 | 新增 | 曾任全国人大常委会委员长 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%A0%97%E6%88%98%E4%B9%A6) |
| 贾发林 | 政治 | 新增 | 曾任沧州市委常委、宣传部部长；公开官方材料可确认姓名和地方任职 | [18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) | [身份来源](https://zyj.beijing.gov.cn/sy/dwjl/202504/t20250428_4076492.html) |
| 赵薇 | 演员主持人 | 新增 | 演员、导演 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E8%B5%B5%E8%96%87) |
| 刘烨 | 演员主持人 | 新增 | 中国内地演员；不是同名艺术家 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://en.wikipedia.org/wiki/Liu_Ye_(actor)) |
| 张丰毅 | 演员主持人 | 新增 | 中国内地演员 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%BC%A0%E4%B8%B0%E6%AF%85) |
| 何润东 | 演员主持人 | 新增 | 演员、歌手、导演 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E4%BD%95%E6%B6%A6%E4%B8%9C) |
| 郭寿宝 | 商业 | 新增 | 西安索宝实业集团董事长，《战国》监制 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://news.sina.com.cn/c/p/2014-01-22/010929310582.shtml) |
| 孙红雷 | 演员主持人 | 新增 | 中国内地演员 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%AD%99%E7%BA%A2%E9%9B%B7) |
| 吴镇宇 | 演员主持人 | 新增 | 香港演员 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%90%B4%E9%95%87%E5%AE%87) |
| 金喜善 | 演员主持人 | 新增 | 韩国演员；属于节目具名演员，不是外国国家元首 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E9%87%91%E5%96%9C%E5%96%84) |
| 姜武 | 演员主持人 | 新增 | 中国内地演员 | [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) | [身份来源](https://zh.wikipedia.org/wiki/%E5%A7%9C%E6%AD%A6) |
| 林克庆 | 政治 | 新增 | 曾任广州市委书记，广东省政协主席 | [24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://zh.wikipedia.org/wiki/%E6%9E%97%E5%85%8B%E5%BA%86) |
| 郑爽 | 演员主持人 | 新增 | 1991年出生的演员，节目末尾用作类比；不与1966年出生的同名演员混同 | [24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) | [身份来源](https://zh.wikipedia.org/wiki/%E9%83%91%E7%88%BD) |
| 习近平 | 政治 | 沿用已有 ID | 已有档案核对；本期不另建人物 | 00:00、08:31、12:48 | 既有 sources / identity_checks |
| 孙宇晨 | 商业 | 沿用已有 ID | 已有档案核对；本期不另建人物 | 00:00、24:40 | 既有 sources / identity_checks |
| 温家宝 | 政治 | 沿用已有 ID | 已有档案核对；本期不另建人物 | 05:28、12:48 | 既有 sources / identity_checks |
| 鲁社长 | 媒体 | 沿用已有 ID | 已有档案核对；本期不另建人物 | 00:00、24:40 | 既有 sources / identity_checks |

说明：陈豪按云南政界身份消歧，王新宇按万达调查中的商人消歧；齐桥桥为公开可核的亲属称谓定位。张峻、贾锋等按机构官方姓名归一，不保存 ASR 错字作为别名。景甜公开页面出生年份存在差异，本次不补生日字段。

## 分段事件、关系与细节

### 01. 本期修正什么
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：鲁社长、孙宇晨、景甜、习远平
类型：主播推测；状态：主播说法待核实。

主播以孙宇晨近期发布内容引出景甜背景，说明上一期的排除法只是开放假说；批评二次传播把猜测说成定论。本期尝试新的解释，不等于已查明幕后人物。

### 02. 2017年万达危机的反事实
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：王健林、习近平、俞正声、习远平、景甜
类型：主播推测；状态：主播说法待核实。

主播将抽贷、出售文旅资产与所谓误解联系，称王健林经俞正声协调；反问若习远平真是景甜靠山，为何仍需付出巨大代价。这些私下协调、误解原因和救助链未有独立证据。

### 03. 张峻与北京文化
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：张峻、习远平、景甜
类型：主播推测；状态：主播说法待核实。

主播称习远平与张峻关系密切，并提及生命人寿2014年出资13.6亿元及北京文化转向影视；举《心花路放》《解救吾先生》《我不是潘金莲》《战狼2》《二代妖精》，用景甜未参与来质疑旧假说。姓名按富德官网核为张峻；金额、关系与选角因果待核。

核对：[企业领导：张峻](https://www.funde-ins.com/jtgk/qyld/493273.shtml)。

### 04. 春晚时间为何是2018和2019
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：景甜、习远平
类型：主播推测；状态：主播说法待核实。

主播认为如果有足够强的央视关系，景甜本可更早上春晚；未早登台不能单独证明或否定私人关系。公开演出与所谓幕后安排分开。

### 05. 陕西国资、景俊海和中影
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：景甜、景俊海
类型：主播推测；状态：主播说法待核实。

主播称早期支持主要来自曲江地方文化公司；对比景俊海2012—2015年在陕西宣传系统任职时的《大秦帝国》《东方帝王谷》《王大花的革命生涯》《白鹿原》等项目，称景甜未出演。其履历可核，未参与某片不能证明不存在支持。

核对：[景俊海同志简历](https://jl.people.com.cn/n2/2020/1125/c349771-34437202.html)。

### 06. 三部中影相关电影
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：景甜、路征
类型：主播推测；状态：主播说法待核实。

主播分别讨论《越来越好之村晚》的客串、《警察故事2013》的发行合作、《特殊身份》的联合投资，推论国资支持有限；本库不把作品发行、投资与演员选角混为一项私人关系。

核对：[景甜资料](https://www.1905.com/mdb/star/1177/)。

### 07. 旧答案被降为候选解释
[回看章节 00:00–05:28](https://www.youtube.com/watch?v=iC8a1SW78PE&t=0s) · 精度：章节范围

人物：习远平、景甜
类型：主播推测；状态：主播说法待核实。

主播把习远平形容为解释范围的上限，认为另一个影响力较小的人也可能解释现象。这是推理框架变化；不新增景甜与习远平的恋爱或资助事实边。

### 08. 五项条件：陕西资源与万达
[回看章节 05:28–07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s) · 精度：章节范围

人物：景甜、王健林、王思聪
类型：主播推测；状态：主播说法待核实。

主播提出新假说须同时解释：陕西民企和曲江国企资金、万达支持、王思聪被要求避谈景甜。所谓封口令和政策资源交换未证实。

### 09. 五项条件：既有股东与演艺时间线
[回看章节 05:28–07:06](https://www.youtube.com/watch?v=iC8a1SW78PE&t=328s) · 精度：章节范围

人物：景甜、温家宝、温如春、贾庆林、李伯潭、王兆国、王新宇
类型：主播推测；状态：主播说法待核实。

主播把领导人亲属与万达投资联系，用其政治资源作比较，并列出2013年起合作、2016年支持最强、2018年关系结束等节点。投资主体和自然人本人须分开；所谓分手年份仍属假说。

核对：[纽约时报万达股权调查及无干预证据说明](https://chinadigitaltimes.net/chinese/390766.html)。

### 10. 候选人名单不等于关系名单
[回看章节 07:06–08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) · 精度：章节范围

人物：景甜、路征、叶选廉、曾庆淮、景俊海、习远平
类型：传闻列举；状态：主播说法待核实。

主播列出社会上流传的五个候选人，称只有路征有可追查的公司和制片联系。其余人作为节目提及收录，不因列入候选名单而创建亲密关系。

### 11. 路征的制作身份与代持猜想
[回看章节 07:06–08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=426s) · 精度：章节范围

人物：路征、景甜
类型：主播推测；状态：主播说法待核实。

主播称路征曾是星光灿烂股东及法定代表人、多部作品制片人，同时质疑其很少露面、资产资料难查；由此引出代持人的猜想。1905可核制作人身份；股权、法定代表人变更和代持不能由制作人条目证明。

核对：[路征作品表](https://m.1905.com/m/star/workslist/3027570/)。

### 12. 未具名大舅与两位陕西领导
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：路征、李瑞山、霍士廉
类型：家族转述；状态：主播说法待核实。

主播称路征父亲普通、外公是西北局老干部、大舅给李瑞山和霍士廉任警卫秘书。外公、大舅及父亲均未具名，不能用任何同姓人物补位；亲属与秘书经历待证。

### 13. 贾治邦与张勃兴
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：路征、贾治邦、张勃兴
类型：家族转述；状态：主播说法待核实。

主播称贾治邦是路征二舅、做过张勃兴秘书，后任陕西省长、国家林业局长。公开任职身份与路征家族、秘书关系分别判断；后两项仅有节目说法。

核对：[国家林业局局长贾治邦活动](https://www.gov.cn/gzdt/2010-06/08/content_1623416.htm)。

### 14. 张勃兴与彭真、习仲勋
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：张勃兴、彭真、习仲勋
类型：关系转述；状态：主播说法待核实。

主播称张勃兴与彭真有亲属联系、与习仲勋家族多往来。亲属类型、往来年月和实际活动均不详，暂记为主播关系主张，不补造家谱。

### 15. 陕北圈层评价
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：贾治邦、李建国
类型：主播评价；状态：主播说法待核实。

主播评价贾治邦重乡情、宽于待人，称连竞争者也服气、李建国要礼让；据此描述所谓陕北圈层地位。性格评价、地位和礼让不作客观亲疏分数。

### 16. 贾治国、贾锋与匿名亲属
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：路征、贾治国、贾锋
类型：家族转述；状态：主播说法待核实。

主播称贾治国是三舅并在陕西法院、巡视系统工作，称贾锋是表哥；另称舅母在陕西银监系统、表嫂在高校管人事。官方资料可定位巡视组组长贾治国及商务厅党组书记贾锋；2024年厅长另有其人，不能写成贾锋任厅长。亲属链未核实。

核对：[陕西省委第四巡视组组长贾治国](https://meixian.qinfeng.gov.cn/info/1015/3577.htm)；[陕西省商务厅党组书记贾锋出席会议](https://xatb.mofcom.gov.cn/tpjj/art/2024/art_e89eb4ea08a446b2b859e697fc18b5b8.html)；[陕西省政府人事任免](https://renshi.people.com.cn/n1/2019/0917/c139617-31356595.html)。

### 17. 母亲线索尚不能实名建档
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：路征、贾庆林
类型：身份待确认；状态：主播说法待核实。

主播给出路征母亲姓名音节并称曾任陕西驻京办副主任，能接触中央领导。本次没有找到足以将该姓名、职务和路征母亲三者对应的公开来源；进入待确认清单，不配照片、不补父母节点。

### 18. 贾庆林与江泽民的交往轶事
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：贾庆林、江泽民
类型：轶事转述；状态：主播说法待核实。

主播讲述两人在机械工业系统做同事、邻居，贾庆林帮助搬米和蜂窝煤的故事，并将后续升迁归于私人关系。官方履历支持部分任职节点，不支持搬运轶事或提拔因果。

核对：[贾庆林简历](https://www.cppcc.gov.cn/2011/09/22/ARTI1316659825496963.shtml)。

### 19. 从福建到北京及政协
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：贾庆林、陈希同、江泽民
类型：任职与因果混合；状态：主播说法待核实。

主播串联贾庆林1985年赴福建、其后任省长及书记、调北京、十六大后入常委和主持政协，称与陈希同落马及江泽民支持有关。履历与私人操作分栏记录，不能把前后发生直接当成因果。

核对：[贾庆林简历](https://www.cppcc.gov.cn/2011/09/22/ARTI1316659825496963.shtml)。

### 20. 贾庆林与习近平的福建交集
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：贾庆林、习近平、江泽民
类型：关系推断；状态：主播说法待核实。

主播称贾庆林在福建长期领导习近平，帮助其晋升并引入江泽民视野。任职重叠可查，私人引荐与具体提拔主张未证实；“约11年”不直接作为整段直接上下级时间。

### 21. 拟制亲属与协调能力
[回看章节 08:31–12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) · 精度：章节范围

人物：路征、贾庆林、李伯潭、贾蔷
类型：关系推断；状态：主播说法待核实。

主播明确称路征母亲与贾庆林没有血缘，却被当作妹妹，进而推测全国性协调能力；又比较李伯潭经妻子贾蔷协调与母亲直接请托的便利。因母亲身份未核，不构造已证实干亲关系，也不据此认定任何人代持。

核对：[李伯潭家庭关系资料](https://zh.wikipedia.org/wiki/李伯潭)。

### 22. 代理、煤矿与影视兴趣
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：路征
类型：经营经历转述；状态：主播说法待核实。

主播称路征先做爱普生区域代理、后获陕西煤矿、随着煤价上涨积累财富，再转向影视圈。这些具体资产、合同、采矿权和收益没有公开文件支持。

### 23. 匿名模特的私交传闻
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：路征
类型：匿名传闻；状态：主播说法待核实。

节目仅以周某某指称一名模特并暗示私交；没有可靠实名，不由“跳水”或行业标签反推姓名，不把网上候选人配进图谱。

### 24. 万达迁京与政商关系解释
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：王健林、薄熙来、邓朴方
类型：动机推测；状态：主播说法待核实。

主播从2008年万达总部迁京解释其寻找全国性资源的动机，称结束与薄熙来的合作、与邓朴方合作不足。公开报道曾载王健林否认与薄熙来关系良好；本库保留反向说法，不认定依附关系。

核对：[纽约时报万达股权调查及无干预证据说明](https://chinadigitaltimes.net/chinese/390766.html)。

### 25. 贾庆林与王健林头衔
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：王健林、贾庆林、路征
类型：主播推测；状态：主播说法待核实。

主播称路征母亲引荐王健林认识贾庆林，并帮其成为政协常委、工商联副主席及落地西安两处万达项目。王健林公开履历有相关职务；引荐、干预与项目交换没有因此获得证明。

核对：[王健林简介](https://www.wanda.cn/about/chairman/)。

### 26. 刘明康与银行授信
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：刘明康、贾庆林、王健林
类型：主播推测；状态：主播说法待核实。

主播称刘明康在福建任职时与贾庆林有工作关系，又称王健林经引荐得到其支持并获全国银行授信。福建任职与银监会主席身份可核；授信决策主体、金额、私下协调原因未核。

核对：[刘明康履历](https://www.cppcc.gov.cn/zxww/2017/03/09/ARTI1489025406355333.shtml)。

### 27. 49%持股和代持主张
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：路征、王健林
类型：持股主张；状态：主播说法待核实。

主播声称路征持万达陕西公司49%股份、也持集团股份，且用代持解释工商中查不到，另提其办公室在北京万达广场楼上。未指出完整公司名称、年份、代持文件和持股链，只存待核主张。

### 28. 地产商与关系户的概括
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：路征、王健林
类型：行业评论；状态：主播说法待核实。

主播用地方关系、土地和授信解释地产合作，提及世纪金源外围的合展集团、中国华力及匿名国际女星母亲，并插入政府主导经济的议论。组织不作为人物；匿名女星及母亲不按网友猜测实名化。

### 29. 万达股东中的家属和商业伙伴
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：王新宇、王兆国、温如春、温家宝、邓家贵、习近平、李伯潭、贾庆林
类型：持股主张与外部核对；状态：主播说法待核实。

主播将四组家属称为权贵股东。纽约时报调查可核部分投资链，但温如春相关项涉及商业伙伴，李伯潭涉及关联公司，不能一概简写成本人直接持股，更不能证明父辈干预交易。

核对：[纽约时报万达股权调查及无干预证据说明](https://chinadigitaltimes.net/chinese/390766.html)。

### 30. 地方影响力的排序
[回看章节 12:48–16:55](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) · 精度：章节范围

人物：王新宇、王兆国、孙春兰、陈豪、温如春、齐桥桥、习仲勋、李伯潭、贾庆林、王健林
类型：主播评价；状态：主播说法待核实。

主播认为王兆国家族主要影响孙春兰、陈豪，温如春能力有限、习近平姐姐依靠父辈旧交、李伯潭仍需谨慎；据此抬高匿名母亲的协调能力。全部属于影响力评价，不作事实等级或好感度。

### 31. 传奇影业收购与出演
[回看章节 16:55–18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) · 精度：章节范围

人物：王健林、景甜
类型：作品与时间核对；状态：主播说法待核实。

主播以2015—2016年万达投入加大及《长城》《金刚：骷髅岛》《环太平洋：雷霆再起》出演解释关系。官方签约公告为2016-01-12；叙事后段将收购写到2015年，需纠正。不同影片角色分量也不宜都称女主角。

核对：[万达并购美国传奇影业签约](https://www.wanda.cn/mobile/2016/news_0112/1184.html)。

### 32. 高虎城与审批推测
[回看章节 16:55–18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) · 精度：章节范围

人物：高虎城、贾庆林、王健林、景甜
类型：主播推测；状态：主播说法待核实。

主播由高虎城早年外贸及机械进出口工作背景，推测尊重贾庆林可帮助并购审批。公开履历不证明某案干预；反垄断审查与境外投资审批也不能不加区分。

核对：[高虎城履历](https://gaohucheng.mofcom.gov.cn/article/resume/)。

### 33. 蔡赴朝与影视审查推测
[回看章节 16:55–18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) · 精度：章节范围

人物：蔡赴朝、贾庆林、景甜、王健林
类型：主播推测；状态：主播说法待核实。

主播将蔡赴朝在北京办公厅、宣传系统的经历概括为贾庆林秘书与提拔，再推测对万达影视审查有利。官方职务可核，私人推荐、影片放行的因果待核。

核对：[蔡赴朝简历](https://politics.people.com.cn/n/2013/0320/c351134-20853672.html)。

### 34. 陕西布局的另一解释
[回看章节 16:55–18:05](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1015s) · 精度：章节范围

人物：路征、王健林、景甜
类型：主播推测；状态：主播说法待核实。

主播认为2016年万达从西安扩展到陕西其他地区，更需要路征家族协调，因而增加景甜资源；未取得项目决策与角色安排之间的证明。

### 35. 2018和2019央视春晚
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：景甜、李易峰、江疏影、秦岚
类型：公开演出；状态：公开证据支持。

景甜在2018年春晚与李易峰、江疏影演唱《赞赞新时代》，2019年与秦岚、江疏影等演唱《我们都是追梦人》。可建立同节目表演合作，不能据此推导私人联盟。

核对：[2018央视春晚节目表](https://zh.wikipedia.org/wiki/2018年中国中央电视台春节联欢晚会)；[2019春晚《我们都是追梦人》](https://m.news.cctv.com/2019/02/04/ARTIcxFbzjmAFnKnGzClWIjX190204.shtml)。

### 36. 文联春晚并非只出现一次
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：景甜、铁凝
类型：公开活动与推测；状态：主播说法待核实。

主播强调景甜2018年主持文联活动及跨两个系统的难度。外部补充：中国文联2019专题也明确列其为主持人；“只有一次文联春晚”不是完整履历。该事实不证明铁凝个人安排。

核对：[中国文联2019百花迎春专题](https://www.cflac.org.cn/wywzt/2019/2019bhyc/)。

### 37. 公开恋情与更早传闻
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：景甜、张继科、路征
类型：公开交往与传闻；状态：主播说法待核实。

主播称2017年11月普吉岛同游且旧关系尚未结束；该旅行及重叠关系未核。已公开证据可支持2018年3月28日公开恋情、2019年6月9日公布分手；公开时间不是实际开始或结束的精确日期。

核对：[景甜工作人员确认与张继科分手](https://news.sina.com.cn/c/2019-06-09/doc-ihvhiqay4413629.shtml)。

### 38. 微博和纹身被用作感情推断
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：景甜、张继科
类型：媒体传闻；状态：主播说法待核实。

主播援引2018年8月一则微博、互动减少、2019年初分手及去除纹身的媒体传闻，推测感情已转差。社交平台迹象不能直接填为实际分手日期。

### 39. 春晚邀约与所谓最后帮助
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：景甜、张继科、路征
类型：主播推测；状态：主播说法待核实。

主播以2018年秋的节目策划窗口，推测感情变化使原资助者愿最后帮助一次。策划窗口、知情程度和资助者决定没有独立来源；不制造2018年新的恋爱或金钱事件。

### 40. 聂辰席与铁凝的职务
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：聂辰席、铁凝
类型：任职背景；状态：主播说法待核实。

主播列两人在河北的经历、聂辰席2012年进入广电系统，以及铁凝1996年省作协、2006年中国作协、2016年中国文联的任职。官方资料支持相关职业身份；同省背景不自动构成派系。

核对：[聂辰席简历](https://cpc.people.com.cn/GB/64162/123659/123782/7359502.html)；[中国文联领导：铁凝](https://o.cflac.org.cn/zgwl/wlld/TieNing/)。

### 41. 栗战书、贾庆林和提拔论
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：栗战书、贾庆林、聂辰席、铁凝、贾发林
类型：主播推测；状态：主播说法待核实。

主播将两位文化主管的早期晋升归于贾庆林、后期晋升归于栗战书，并以贾发林在沧州工作解释贾庆林在河北的影响。履历、籍贯、亲属说法均不能独立证明提拔行为；亲属链另列待核。

### 42. 关系链被用于解释上春晚
[回看章节 18:05–21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1085s) · 精度：章节范围

人物：路征、贾庆林、聂辰席、铁凝、景甜
类型：主播推测；状态：主播说法待核实。

主播用母亲与贾庆林、贾庆林与文化主管的关系推导景甜获照顾。多环节各自未核实，不能连乘为已证实的权力输送。

### 43. “公司登记就是线索”的叙述
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜
类型：主播推测；状态：主播说法待核实。

主播认为路征可能已经足以解释五个现象，不必另找更高级别人物；公司出现制作人或股东并不能证明全部私人背景。

### 44. 早期相识、求学与家庭传闻
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜
类型：未证实私生活叙事；状态：主播说法待核实。

主播将相识放在2004年，讲述年龄差、已有婚姻、公司设立、2007年入学及未经证实的生育、子女性别与长辈偏好。相识、婚姻、亲子主张无独立证据，不创建配偶或孩子档案。1905支持北影2007级本科经历，不能证明被他人安排入学。

核对：[景甜资料](https://www.1905.com/mdb/star/1177/)。

### 45. 《一个女人的史诗》
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜、赵薇、刘烨
类型：作品转述；状态：主播说法待核实。

主播称2008年路征投资该电视剧，赵薇、刘烨与景甜合作，并把阵容解释为捧新人；合作作品背景与“谁为谁作陪”的动机不同。

### 46. 《孙子大传》与《我的美女老板》
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜、张丰毅、何润东
类型：作品转述；状态：主播说法待核实。

主播称2009年投资《孙子大传》由张丰毅搭档，2010年路征担任《我的美女老板》出品人、总制片人，由何润东与景甜饰演情侣。角色关系不等于现实亲密关系。

核对：[路征作品表](https://m.1905.com/m/star/workslist/3027570/)。

### 47. 《战国》投资与演员
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜、郭寿宝、孙红雷、吴镇宇、金喜善、姜武
类型：作品与金额转述；状态：主播说法待核实。

主播称郭寿宝和地方国企参与，提及1.5亿元成本、约8000万元票房、后续合计近4亿元投入，并将演员阵容归于高片酬。演职员身份有公开资料；各投资金额、片酬和动机仍须项目文件，不能说郭寿宝个人承担全部。

核对：[《战国》演职员资料](https://zh.wikipedia.org/wiki/战国_(电影))；[景甜身后的郭寿宝与陕西影视资本](https://www.sohu.com/a/328176708_347578)。

### 48. 王健林邀请入股与国际片推演
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：王健林、王思聪、路征、景甜
类型：主播推测；状态：主播说法待核实。

主播将入股、母亲协助并购、国际片选角和所谓封口令串成报答链；收购年份在此口述为2015年，与官方2016年签约公告不同。整条报答因果未证实。

核对：[万达并购美国传奇影业签约](https://www.wanda.cn/mobile/2016/news_0112/1184.html)。

### 49. 2017年后关系与公司退出
[回看章节 21:43–24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) · 精度：章节范围

人物：路征、景甜
类型：关系结束推测；状态：主播说法待核实。

主播称2017年下半年关系出现裂痕，母亲仍安排春晚，其后路征退出公司、官微停更。未核实工商变更日，停更也不能证明已经解除私人关系。

### 50. 资源变化的价值判断
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：景甜、路征
类型：主播评价；状态：主播说法待核实。

主播把后续作品以网剧为主、缺少顶级院线资源解释为失去照顾，对合作演员等级作贬评。本库把它保存为评论，不据此给演员评级。

### 51. 匿名债权人与敲诈说法
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：景甜、张继科
类型：司法相关转述；状态：主播说法待核实。

主播把事件放在2019年底，提及匿名S先生、1700万元债务、私密材料敲诈和警方抓捕。此次未获得可核验的判决全文或警方通报对应这些细节；匿名人不实名化，不把节目叙述认定为张继科犯罪事实。

### 52. 2021年《司藤》
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：景甜、路征
类型：作品评价；状态：主播说法待核实。

主播称《司藤》在2021年春走红，提到9000万元成本并感慨投入大小不决定效果。播出年与此前制作时间不可混写；金额及路征是否出资未独立核实。

### 53. 广告处罚日期与所谓保护失灵
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：景甜、林克庆、贾庆林
类型：事实纠正与推测；状态：有争议。

主播把处罚放在2021年底，进而猜测景甜无法再借用关系，并称林克庆属于贾庆林网络。监管公告实际在2022-05-28公布，2021年底是发现线索；罚没合计722.12万元是行政处罚，不能写成判刑。关系保护与执法动机没有得到公告支持。

核对：[景甜违法广告代言行政处罚通报](https://www.samr.gov.cn/xw/df/art/2023/art_2bdd1110d6be480ba2df733047dceeea.html)。

### 54. 孙宇晨争议和郑爽类比
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：景甜、孙宇晨、郑爽
类型：近期主张与预测；状态：主播说法待核实。

主播称2026年8月发生与孙宇晨的纠纷，担忧后续发展并以郑爽作类比。争议内容、发生日期及未来后果此次未独立核实；两位演员被类比不构成关系。

### 55. 结尾的证据边界
[回看章节 24:40–27:44](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) · 精度：章节范围

人物：鲁社长、景甜、路征
类型：主播声明；状态：主播说法待核实。

主播最终再次声明以上来自猜测，欢迎其他符合其五项条件的答案，并认为可能有多个解释。该免责声明适用于幕后网络、私人家庭和因果叙事；不能用完整故事感替代逐项证据。

## 待确认项

- [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) **路征母亲（姓名与身份待核）**：节目给出姓名音节，但尚无公开资料把具体姓名、驻京办职务与母子关系连在一起；不将同音字固化为真实姓名。
- [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) **路征父亲、外公、大舅、舅母、表嫂**：均未具名；父母、亲属及任职说法独立待核。
- [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) **周某某（模特）**：匿名称谓；不凭“跳水名模”标签猜测具体人物。
- [12:48](https://www.youtube.com/watch?v=iC8a1SW78PE&t=768s) **某国际女星及其母亲**：没有具名；不把二次解读的候选姓名当成节目原意。
- [24:40](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1480s) **S先生／匿名债权人**：身份未获可核原始裁判文书支持，不反推实名。
- [21:43](https://www.youtube.com/watch?v=iC8a1SW78PE&t=1303s) **路征配偶、景甜被指涉及的孩子**：未具名且亲子、婚姻主张无独立证明，不建立未成年人或配偶节点。
- [08:31](https://www.youtube.com/watch?v=iC8a1SW78PE&t=511s) **江泽民夫妇中的妻子**：仅称夫妇，没有单独具名；本期不以外部推断扩展无实质事件的配偶档案。

## 关键纠正与没有证实的内容

1. 万达并购传奇的签约公告为 2016-01-12；不照录叙事中的2015年。
2. 景甜处罚公告为2022-05-28；2021年底是线索发现时间。行政处罚与刑事判决严格分开。
3. 官方材料称贾锋为商务厅党组书记；不照录为厅长。
4. 文联官方2019专题也有景甜主持记录；不把其履历限为一次。
5. 纽约时报调查明确没有证据证明相关政治人物干预万达交易或本人获利；不得把投资联系升级成政治交换事实。
6. 万达49%隐名股份、母亲干亲身份、私人授信、春晚安排、婚姻生育和不公开交往均未获得独立核实。
7. 不从未出演某片、微博停更或行政处罚反推“无后台”；这些是主播的推理材料。
8. 本次未知关系起止、学历和职务起止保持空值；不为时间轴填充猜想。

## 外部补充来源

- `jingtian` [景甜资料](https://www.1905.com/mdb/star/1177/) — 1905电影网；报道日期：未确认。
- `wangjianlin` [王健林简介](https://www.wanda.cn/about/chairman/) — 万达集团；报道日期：未确认。
- `yuzhengsheng` [俞正声当选全国政协主席](https://www.bjtzb.gov.cn/wwwroot/sdtyzx/publish/article/218/10835.shtml) — 北京统战部；报道日期：2013-03-11。
- `zhangjun_funde` [企业领导：张峻](https://www.funde-ins.com/jtgk/qyld/493273.shtml) — 富德保险控股；报道日期：未确认。
- `jingjunhai` [景俊海同志简历](https://jl.people.com.cn/n2/2020/1125/c349771-34437202.html) — 人民网；报道日期：2020-11-25。
- `jiaqinglin` [贾庆林简历](https://www.cppcc.gov.cn/2011/09/22/ARTI1316659825496963.shtml) — 全国政协；报道日期：2011-09-22。
- `luzheng` [路征作品表](https://m.1905.com/m/star/workslist/3027570/) — 1905电影网；报道日期：未确认。
- `jiazhiguo_shaanxi` [陕西省委第四巡视组组长贾治国](https://meixian.qinfeng.gov.cn/info/1015/3577.htm) — 眉县纪委监委；报道日期：2021-02-23。
- `jiafeng_shaanxi` [陕西省商务厅党组书记贾锋出席会议](https://xatb.mofcom.gov.cn/tpjj/art/2024/art_e89eb4ea08a446b2b859e697fc18b5b8.html) — 商务部驻西安特派员办事处；报道日期：2024-01-12。
- `jiazhibang` [国家林业局局长贾治邦活动](https://www.gov.cn/gzdt/2010-06/08/content_1623416.htm) — 中国政府网；报道日期：2010-06-08。
- `lijianguo` [李建国简历](https://npc.people.com.cn/n/2013/0318/c15257-20820773.html) — 人民网；报道日期：2013-03-18。
- `liumingkang` [刘明康履历](https://www.cppcc.gov.cn/zxww/2017/03/09/ARTI1489025406355333.shtml) — 全国政协；报道日期：2017-03-09。
- `wangxinyu_wanda` [万达股权调查（纽约时报转载）](https://chinadigitaltimes.net/chinese/390766.html) — 中国数字时代／纽约时报；报道日期：2015-04-28。
- `wenruchun` [Who’s Who in China Leaks](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) — ICIJ；报道日期：2014-01-22。
- `dengjiagui` [Who’s Who in China Leaks](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) — ICIJ；报道日期：2014-01-22。
- `qiqiaoqiao` [Who’s Who in China Leaks](https://www.icij.org/inside-icij/2014/01/whos-who-china-leaks/) — ICIJ；报道日期：2014-01-22。
- `gaohucheng` [高虎城履历](https://gaohucheng.mofcom.gov.cn/article/resume/) — 商务部；报道日期：未确认。
- `caifuchao` [蔡赴朝简历](https://politics.people.com.cn/n/2013/0320/c351134-20853672.html) — 人民网；报道日期：2013-03-20。
- `tiening` [中国文联领导：铁凝](https://o.cflac.org.cn/zgwl/wlld/TieNing/) — 中国文联；报道日期：未确认。
- `jiafalin` [医联体签约活动：原沧州市委常委、宣传部长贾发林](https://zyj.beijing.gov.cn/sy/dwjl/202504/t20250428_4076492.html) — 北京市中医药管理局；报道日期：2025-04-28。
- `guoshoubao` [郭寿宝捐赠社区物资](https://news.sina.com.cn/c/p/2014-01-22/010929310582.shtml) — 华商报／新浪；报道日期：2014-01-22。
- `niechenxi` [聂辰席简历](https://cpc.people.com.cn/GB/64162/123659/123782/7359502.html) — 人民网；报道日期：未确认。
- `wanda2016` [万达并购美国传奇影业签约](https://www.wanda.cn/mobile/2016/news_0112/1184.html) — 万达集团；报道日期：2016-01-12。
- `penalty` [景甜违法广告代言行政处罚通报](https://www.samr.gov.cn/xw/df/art/2023/art_2bdd1110d6be480ba2df733047dceeea.html) — 国家市场监督管理总局／广州市市场监管局；报道日期：2022-05-28。
- `gala2018` [2018央视春晚节目表](https://zh.wikipedia.org/wiki/2018年中国中央电视台春节联欢晚会) — 维基百科；报道日期：未确认。
- `gala2019` [2019春晚《我们都是追梦人》](https://m.news.cctv.com/2019/02/04/ARTIcxFbzjmAFnKnGzClWIjX190204.shtml) — 央视网；报道日期：2019-02-04。
- `baihua2019` [中国文联2019百花迎春专题](https://www.cflac.org.cn/wywzt/2019/2019bhyc/) — 中国文联；报道日期：2019-01-17。
- `breakup` [景甜工作人员确认与张继科分手](https://news.sina.com.cn/c/2019-06-09/doc-ihvhiqay4413629.shtml) — 新京报／新浪；报道日期：2019-06-09。
- `zhanguo` [《战国》演职员资料](https://zh.wikipedia.org/wiki/战国_(电影)) — 维基百科；报道日期：未确认。
- `guo_film` [景甜身后的郭寿宝与陕西影视资本](https://www.sohu.com/a/328176708_347578) — 贞观／搜狐；报道日期：未确认。
- `jiafeng2019` [陕西省政府人事任免](https://renshi.people.com.cn/n1/2019/0917/c139617-31356595.html) — 人民网；报道日期：2019-09-17。
- `nyt_wanda` [纽约时报万达股权调查及无干预证据说明](https://chinadigitaltimes.net/chinese/390766.html) — 中国数字时代／纽约时报；报道日期：2015-04-28。
- `jia_family` [李伯潭家庭关系资料](https://zh.wikipedia.org/wiki/李伯潭) — 维基百科；报道日期：未确认。

## 处理记录

先保存本文件与结构化原创摘要，再由数据库导入脚本增量写入。全文转写只作为临时分析材料，不进入项目发布包。
本次新增 55 人；本期索引 59 个已核实姓名（含主播与既有人物）；55 条分段细节。

## 进一步交叉核对（入库前追加）

- [《我的美女老板》官方演职员表](https://m.1905.com/m/film/starlist/354156.shtml)核实景甜、何润东与制作人路征的职业合作；2010为影片年份，不冒充拍摄起止日期。
- [《一个女人的史诗》演职员表](https://www.tvmao.com/drama/a1hXLw%3D%3D/actors)及[作品资料](https://zh.wikipedia.org/wiki/一个女人的史诗)支持演员合作；2009是播出年，节目所说2008为投资／制作叙事，不互相替代。
- [《孙子大传》作品资料](https://zh.wikipedia.org/wiki/孙子大传)支持张丰毅与景甜合作；2009投资说法与2011首播记录分开。
- [林克庆官方简介](https://www.gdszx.gov.cn/zxgk/zxld/liq/)支持广东省政协主席身份，不支持节目所述政治亲信关系。
- [孙春兰简历](https://cpc.people.com.cn/n1/2017/1025/c414940-29608815.html)和[陈豪公开履历](https://zh.wikipedia.org/wiki/陳豪_(1954年))用于职业消歧，不能据共同工会背景推导提拔。
','2026-09-23T00:17:15-07:00','chapter','["p_jingtian", "p_xiyuanping", "p_wangjianlin", "p_yuzhengsheng", "p_zhangjun_funde", "p_jingjunhai", "p_wangsicong", "p_jiaqinglin", "p_wangzhaoguo", "p_luzheng", "p_yexuanlian", "p_zengqinghuai", "p_liruishan", "p_huoshilian", "p_jiazhibang", "p_zhangboxing", "p_pengzhen", "p_xizhongxun", "p_lijianguo", "p_jiazhiguo_shaanxi", "p_jiafeng_shaanxi", "p_jiangzemin", "p_chenxitong", "p_libotan", "p_jiaqiang", "p_boxilai", "p_dengpufang", "p_liumingkang", "p_wangxinyu_wanda", "p_wenruchun", "p_dengjiagui", "p_qiqiaoqiao", "p_sunchunlan", "p_chenhao_yunnan", "p_gaohucheng", "p_caifuchao", "p_liyifeng", "p_jiangshuying", "p_qinlan", "p_zhangjike", "p_niechenxi", "p_tiening", "p_lizhanshu", "p_jiafalin", "p_zhaowei", "p_liuye", "p_zhangfengyi", "p_herundong", "p_guoshoubao", "p_sunhonglei", "p_wuzhenyu", "p_kimheesun", "p_jiangwu", "p_linkeqing", "p_zhengshuang"]','无可读YouTube字幕；分析同题播客音频，尚不能排除删节。下列链接定位到原视频章节范围，未逐句校时。');
CREATE TABLE video_segments (id TEXT PRIMARY KEY,source_id TEXT NOT NULL REFERENCES sources(id),start_seconds INTEGER NOT NULL CHECK(start_seconds>=0),end_seconds INTEGER NOT NULL CHECK(end_seconds>=start_seconds),title TEXT NOT NULL,summary TEXT NOT NULL,claim_type TEXT NOT NULL,verification TEXT NOT NULL,recorded_at TEXT NOT NULL);
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_01','yt_oG93w6k-1DY',0,34,'开场预告','开场预告许家印的成功路径、经营方式以及刘銮雄与女演员的往事。内容在后段重复；涉及关之琳的私密传闻不作为事实事件。','预告与传闻','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_02','yt_oG93w6k-1DY',34,83,'主播对许家印的评价','鲁社长认为研究许家印要同时看商业和政治路径，不能用最终失败否定全部经历；将他列入自己最愿意交往的商人前三名，评价其讲义气、肯花钱、值得交朋友。这是意愿和评价，并未声称二人已经是朋友。','公开评价','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_03','yt_oG93w6k-1DY',83,106,'性格与成败的解释','主播把许家印的聪明、上进和经营人际关系的能力，解释为其成功的重要原因；“一定会成功”属于判断，不是可验证的人生规律。','主播分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_04','yt_oG93w6k-1DY',106,121,'早年家庭','主播称许家印母亲早逝、幼时生活贫困，有“吃百家饭”的经历；对父亲是否老红军使用猜测语气。父母未具名，不替父亲确认军队经历。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_05','yt_oG93w6k-1DY',121,138,'向拖拉机司机学技术','主播称许家印年少时反复向当地司机示好，希望学习驾驶拖拉机，以获得走出农村的机会。司机未具名，未给出具体年份。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_06','yt_oG93w6k-1DY',138,147,'劳动与争取机会','主播提及许家印掏粪劳动，并把动机解释为争取进步、入党或工作机会。劳动叙述与动机推测分开，未据此创建入党事件。','主播分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_07','yt_oG93w6k-1DY',147,159,'求助远房亲戚','主播称许家印曾给城市里的远房亲戚写信求助找工作，但没有回音。亲戚身份、城市和时间均不明。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_08','yt_oG93w6k-1DY',160,183,'两次高考与入学','主播称许家印连续两年参加高考，最终进入武汉钢铁学院。院校规范为武汉钢铁学院（今武汉科技大学）；外部资料支持其于1982年毕业，具体两次考试情节仍单独保留核实状态。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_09','yt_oG93w6k-1DY',185,197,'没有高考的假设','主播设想即使没有恢复高考，许家印也会成为村长或有能力的地方人物。这不是任职经历，不能写入村干部履历。','反事实推演','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_10','yt_oG93w6k-1DY',198,254,'成功经验与风险意识','主播认为持续成功强化了许家印的自信与野心，由国内首富向世界首富想象扩张，缺乏对失败的预期。此段是心理和经营动机分析，不建立事实状态。','主播分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_11','yt_oG93w6k-1DY',256,286,'与宁高宁讨论农业扶贫','主播转述宁高宁的说法：恒大危机爆发前许家印仍谈及约1000亿元农业扶贫计划。主播对距危机“一周还是一个月”并不确定；会面时间、金额和原始采访待核实。','转述会面','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_12','yt_oG93w6k-1DY',286,328,'信托、婚姻与资产处置说法','主播称许家印在危机后才安排家族信托、所谓技术性离婚及配偶出售资产，并提及大额资金，数字不确定。没有提供法律文件；配偶未具名，不据此认定离婚时间、资产转移或违法行为。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_13','yt_oG93w6k-1DY',329,345,'碧桂园的对比','主播比较碧桂园危机前的百亿元级基金会捐赠，并在口述中从信托改为捐赠。没有点名相关执行人，不补出人物节点；金额、性质与时间待另查公告。','公司背景评论','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_14','yt_oG93w6k-1DY',346,388,'对行业财务的泛化批评','主播泛称恒大、碧桂园、万科等企业的财务问题，并反对只在失败后进行道德审判。未提供逐家公司证据，不能将泛化评论转为这些公司的违法结论。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_15','yt_oG93w6k-1DY',389,413,'舞阳钢铁履历与校园职务','主播明确说许家印在舞阳钢铁厂任职，并称其曾为优秀员工、学生会主席及正处级干部。公开资料可支持舞阳钢铁车间主任经历；学生会职务及行政级别尚未独立核实。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_16','yt_oG93w6k-1DY',414,437,'安全考核的轶事','主播举出通过头部倾斜角度判断员工是否睡觉的管理细节，并称规则沿用至今。官方宣传资料提及“150度考核法”，但当前是否仍实施未核实。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_17','yt_oG93w6k-1DY',438,475,'离开钢厂的不同解释','主播不接受单纯因不满待遇而离职的叙事，称许家印因与员工私分奖金受处分，升迁受阻后南下深圳。处分文件、奖金处理方式和因果关系均未取得。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_18','yt_oG93w6k-1DY',476,492,'深圳求职简历','主播称许家印求职时先准备二十多页简历，后来缩到两页，以说明从国企转向市场的不适应。具体页数与求职过程未独立核实。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_19','yt_oG93w6k-1DY',493,546,'中达、广州项目与创业动机','主播称许家印为中达老板在广州开发楼盘赚得大笔收益，质疑其因3000元工资未涨到一两万元而离职的常见故事；认为他辞职前已注册企业，早有创业安排。老板未具名，工资数字和注册先后均待核实。','主播分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_20','yt_oG93w6k-1DY',547,606,'早期房地产机会','主播以1990年代广州商品房试点、1998年住房改革为背景，解释许家印愿冒风险的获利模式。1993—1994年附近的叙事不能替代恒大1996年创办时间。','经营分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_21','yt_oG93w6k-1DY',606,655,'海珠农药厂地块','主播称许家印看中广州海珠一块农药厂用地，土地受污染、国企不愿接手，地价约1500万至2000万元。没有地块合同或环境资料，污染状况与价格尚未核实。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_22','yt_oG93w6k-1DY',657,669,'分期支付土地款','主播称土地款谈成三期支付，首期约500万元。属于创业融资故事的一部分，不将口述概数作为合同金额。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_23','yt_oG93w6k-1DY',670,693,'老乡担保与贷款','主播称一位老乡提供担保，加上地块形成融资条件，借到600万元，其中约500万元付地价、100万元留作周转。老乡和金融机构均未具名。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_24','yt_oG93w6k-1DY',694,705,'换土处理的说法','主播称挖走污染土并换土解决了地块问题。未取得环境检测或修复验收材料，不能据此判断地块已安全。','待核实说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_25','yt_oG93w6k-1DY',706,718,'先建售楼处预售','主播称项目先建大门和售楼处、进行预售，再以回款建设。项目名称和监管许可未在本段说明。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_26','yt_oG93w6k-1DY',719,741,'小户型、价格和销售数字','主播给出售价每平方米2800元、周边约3500元，小户型在一两天卖出约300套、回款约8000万元的说法。对售完所需时间有迟疑，各项数字均待原始资料核对。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_27','yt_oG93w6k-1DY',742,777,'高周转经营逻辑','主播将预售回款支付工程和后续地价、低价拿地及低毛利快速周转，概括为许家印做大的方法。这是商业模式解释，不能直接推导具体利润率。','经营分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_28','yt_oG93w6k-1DY',778,790,'周转率比喻','主播用每天1%周转的夸张简化例子说明速度重要，并类比胖东来；不是恒大的实际年化收益数据，也没有点名胖东来的具体人物。','示例计算','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_29','yt_oG93w6k-1DY',790,819,'李嘉诚的地产模式','主播把李嘉诚概括为低价囤地、长期等待升值，将其与许家印的快速开发模式比较。比较两人的策略不等于证明二人有人际联系。','经营比较','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_30','yt_oG93w6k-1DY',819,864,'万科的产品与服务路线','主播认为万科强调产品质量、物业服务、管理和较慢开发节奏，称其较少依赖官场关系，并提到早期百亿元销售规模。属于经营评价，销售年份和政商关系概括需单独核实。','经营分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_31','yt_oG93w6k-1DY',865,874,'王石与郁亮的经营风格','主播比较王石时期的较慢节奏与郁亮上任后的加速。规范姓名采用郁亮；董事会主席接任发生于2017年，不能与其更早担任总裁混淆。','经营比较','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_32','yt_oG93w6k-1DY',874,888,'外围地块与三四线城市','主播将恒大、碧桂园在外围及三四线城市的扩张与高周转联系起来。此处又说到高利润率，与前段低毛利叙述存在口述不一致，保留而不替主播消除矛盾。','经营分析','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_33','yt_oG93w6k-1DY',889,922,'对李嘉诚的价值评价','主播认为不应以好人坏人或是否做慈善简单评判商人，肯定李嘉诚按市场逻辑经营的能力。这是公开评论，不推导鲁社长与李嘉诚有私交。','公开评价','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_34','yt_oG93w6k-1DY',923,930,'主播自述与孙宏斌交往','鲁社长称早年与孙宏斌很熟、常一起喝酒，时间在对方尚未做大之前。视频未给年份；作为单方自述关系，未独立证实、不打亲疏分。','亲历自述','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_35','yt_oG93w6k-1DY',932,938,'段落小结','主播结束发家经历部分，并感谢观众。观众致谢不新增人物；没有新的实质关系事件。','节目衔接','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_36','yt_oG93w6k-1DY',940,981,'2008年上市与对赌压力','主播称恒大危机来自上市受阻与投资者对赌约定，并举500亿、300亿元的估值例子说明回购压力。例子不是恒大真实估值，不能照抄为财务事实。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_37','yt_oG93w6k-1DY',982,1043,'从区域扩张到全国及现金压力','主播称恒大借助融资在多地买地，2008年金融危机致上市失败，面临回购和利息压力，土地难以立即变现。各项融资合同和具体到期日未在节目展示。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_38','yt_oG93w6k-1DY',1044,1052,'向王石求援的说法','主播称许家印在2008年寻求万科帮助而王石未予回应。缺少当事人直接记录，作为待核实求助关系；不据此确认长期敌对。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_39','yt_oG93w6k-1DY',1053,1080,'宝万之争中的入股与动机','主播称恒大在宝万之争中入股万科成为第二大股东，并将此解释为许家印对王石的报复。交易与动机分开，报复属于推测，不能自动产生负好感度。','主播推测','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_40','yt_oG93w6k-1DY',1081,1125,'与宝能谈交易的设想','主播称宝能面临融资压力、双方总经理曾合照谈判；又模拟许家印收购报价及其有可能成为第一大股东的情景，称最终受政治因素制约。模拟对话并非原话，相关总经理未具名。','混合叙述与反事实','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_41','yt_oG93w6k-1DY',1126,1154,'香港牌友圈与张松桥','主播谈及香港商界“大D会”、郑裕彤及有“重庆李嘉诚”之称的张松桥，并以金庸人物裘千仞比喻张的商界地位。李嘉诚在此处是绰号参照，裘千仞是虚构角色，都不因此新增关系。','圈层转述','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_42','yt_oG93w6k-1DY',1155,1178,'张松桥与肖建华的南山人寿故事','主播称张松桥与肖建华的明天系利用香港上市公司参与台湾南山人寿收购，并指张借消息推动股价、退出获利近千亿元。未说明准确币种、公司、交易日期，也未给监管结论；不作为操纵市场的事实认定。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_43','yt_oG93w6k-1DY',1179,1193,'刘銮雄与两位演员','主播介绍刘銮雄的市场操作风格，并提及他与李嘉欣、关之琳的过往感情关系。本次关系记录限于主播转述，未补造交往日期或亲密程度。','私人关系转述','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_44','yt_oG93w6k-1DY',1194,1209,'关之琳私密传闻','主播重复所谓高尔夫球及就医传闻，未给证据；刘銮雄曾公开否认相关传闻。这里只保存节目提及与反证线索，不将性暴力、就医或私生活细节列为已经发生的事实。','有争议传闻','有争议','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_45','yt_oG93w6k-1DY',1210,1239,'所谓商界前台的解释','主播把刘銮雄描述成替其他香港富商处理不便公开业务的前台，并以李嘉诚作对比。没有具体委托关系或交易凭证，不据此给两人建立犯罪同盟关系。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_46','yt_oG93w6k-1DY',1240,1260,'进入郑裕彤等人的牌友圈','主播称许家印经引荐参加郑裕彤、张松桥、刘銮雄的聚会；先说每月多次，随后改为每周。引荐者未具名，频率不确定；归档为待核实社交圈描述。','圈层转述','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_47','yt_oG93w6k-1DY',1261,1294,'现金结算赌资的故事','主播称许家印携现金打牌、及时付清输款，不立即开口求助，以此建立信任；输掉约1000万至2000万港元，历时先说多年又改为数月。23:05后主播说明这类叙事是市场流传版本。','市场传闻','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_48','yt_oG93w6k-1DY',1295,1336,'郑裕彤投资与信用支持','主播称郑裕彤带头引入约5亿美元资金，并通过新世界合作帮助恒大获得信用，缓解2008年危机。需区分投资集团总额与郑裕彤个人出资；本期未提供协议证明。','主播说法','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_49','yt_oG93w6k-1DY',1338,1370,'刺激政策与2009年上市','主播以温家宝任内四万亿元刺激政策、2009年房地产反弹及恒大香港上市解释许家印财富上升。政策背景本身不是温家宝与许家印有私人交往的证据。','政策背景','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_50','yt_oG93w6k-1DY',1372,1383,'事业高峰的判断','主播把2017至2018年前后视为许家印的高峰。属于阶段评价，不转化为正式岗位、职务或资产金额。','主播评价','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_51','yt_oG93w6k-1DY',1385,1399,'主播说明故事来源','主播将牌局获救叙事明确称为市场上流传的故事，并认为投资决定不会只取决于仗义或交情。这一限定同时适用于前面的牌局与援助动机描述。','来源限定','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_52','yt_oG93w6k-1DY',1400,1412,'温家宏身份与持股说法','主播称温家宏是温家宝的弟弟、恒大的第二大股东并持有巨额股份。公开历史公告中确有温家宏董事记录，但证券代码000502的历史上市主体不能自动等同于2009年香港上市恒大；第二大股东和具体比例未核实。','待核实持股主张','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_53','yt_oG93w6k-1DY',1413,1430,'郑、温两家的往来与代持说法','主播称郑裕彤与温家宝家族关系密切，并称温家宝配偶的平安保险股份由郑的一位助理代持。配偶及助理未具名，未取得代持协议或登记资料；不把对家族的说法写成温家宝本人的已证实交易。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_54','yt_oG93w6k-1DY',1431,1438,'所谓求援电话','主播断言温家宏应曾打电话促成郑裕彤援助许家印，但未声称亲历或提供通话证据。这一段只作为“推测的引荐”保存，时间未知，不作为已发生通话事件。','主播推测','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_55','yt_oG93w6k-1DY',1440,1455,'上市后套现的说法','主播称温家宏是许家印之外的主要上市获利者，套现几十亿、接近但不到100亿港元。未取得持股与减持凭证，金额与获利排序均未核实。','待核实指控','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('seg_oG93w6k-1DY_56','yt_oG93w6k-1DY',1456,1543,'关系拓展的方法论','主播总结：通过一个人扩展接触面，再通过多重条件和自己的实际行动促成一个人的决定。此为成功学解释，不额外创建人际关系或事实事件。','方法论评论','主播内容，细节待核实','2026-09-22T23:37:42-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_001','yt_iC8a1SW78PE',0,328,'本期修正什么','主播以孙宇晨近期发布内容引出景甜背景，说明上一期的排除法只是开放假说；批评二次传播把猜测说成定论。本期尝试新的解释，不等于已查明幕后人物。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_002','yt_iC8a1SW78PE',0,328,'2017年万达危机的反事实','主播将抽贷、出售文旅资产与所谓误解联系，称王健林经俞正声协调；反问若习远平真是景甜靠山，为何仍需付出巨大代价。这些私下协调、误解原因和救助链未有独立证据。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_003','yt_iC8a1SW78PE',0,328,'张峻与北京文化','主播称习远平与张峻关系密切，并提及生命人寿2014年出资13.6亿元及北京文化转向影视；举《心花路放》《解救吾先生》《我不是潘金莲》《战狼2》《二代妖精》，用景甜未参与来质疑旧假说。姓名按富德官网核为张峻；金额、关系与选角因果待核。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_004','yt_iC8a1SW78PE',0,328,'春晚时间为何是2018和2019','主播认为如果有足够强的央视关系，景甜本可更早上春晚；未早登台不能单独证明或否定私人关系。公开演出与所谓幕后安排分开。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_005','yt_iC8a1SW78PE',0,328,'陕西国资、景俊海和中影','主播称早期支持主要来自曲江地方文化公司；对比景俊海2012—2015年在陕西宣传系统任职时的《大秦帝国》《东方帝王谷》《王大花的革命生涯》《白鹿原》等项目，称景甜未出演。其履历可核，未参与某片不能证明不存在支持。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_006','yt_iC8a1SW78PE',0,328,'三部中影相关电影','主播分别讨论《越来越好之村晚》的客串、《警察故事2013》的发行合作、《特殊身份》的联合投资，推论国资支持有限；本库不把作品发行、投资与演员选角混为一项私人关系。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_007','yt_iC8a1SW78PE',0,328,'旧答案被降为候选解释','主播把习远平形容为解释范围的上限，认为另一个影响力较小的人也可能解释现象。这是推理框架变化；不新增景甜与习远平的恋爱或资助事实边。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_008','yt_iC8a1SW78PE',328,426,'五项条件：陕西资源与万达','主播提出新假说须同时解释：陕西民企和曲江国企资金、万达支持、王思聪被要求避谈景甜。所谓封口令和政策资源交换未证实。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_009','yt_iC8a1SW78PE',328,426,'五项条件：既有股东与演艺时间线','主播把领导人亲属与万达投资联系，用其政治资源作比较，并列出2013年起合作、2016年支持最强、2018年关系结束等节点。投资主体和自然人本人须分开；所谓分手年份仍属假说。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_010','yt_iC8a1SW78PE',426,511,'候选人名单不等于关系名单','主播列出社会上流传的五个候选人，称只有路征有可追查的公司和制片联系。其余人作为节目提及收录，不因列入候选名单而创建亲密关系。','传闻列举','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_011','yt_iC8a1SW78PE',426,511,'路征的制作身份与代持猜想','主播称路征曾是星光灿烂股东及法定代表人、多部作品制片人，同时质疑其很少露面、资产资料难查；由此引出代持人的猜想。1905可核制作人身份；股权、法定代表人变更和代持不能由制作人条目证明。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_012','yt_iC8a1SW78PE',511,768,'未具名大舅与两位陕西领导','主播称路征父亲普通、外公是西北局老干部、大舅给李瑞山和霍士廉任警卫秘书。外公、大舅及父亲均未具名，不能用任何同姓人物补位；亲属与秘书经历待证。','家族转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_013','yt_iC8a1SW78PE',511,768,'贾治邦与张勃兴','主播称贾治邦是路征二舅、做过张勃兴秘书，后任陕西省长、国家林业局长。公开任职身份与路征家族、秘书关系分别判断；后两项仅有节目说法。','家族转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_014','yt_iC8a1SW78PE',511,768,'张勃兴与彭真、习仲勋','主播称张勃兴与彭真有亲属联系、与习仲勋家族多往来。亲属类型、往来年月和实际活动均不详，暂记为主播关系主张，不补造家谱。','关系转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_015','yt_iC8a1SW78PE',511,768,'陕北圈层评价','主播评价贾治邦重乡情、宽于待人，称连竞争者也服气、李建国要礼让；据此描述所谓陕北圈层地位。性格评价、地位和礼让不作客观亲疏分数。','主播评价','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_016','yt_iC8a1SW78PE',511,768,'贾治国、贾锋与匿名亲属','主播称贾治国是三舅并在陕西法院、巡视系统工作，称贾锋是表哥；另称舅母在陕西银监系统、表嫂在高校管人事。官方资料可定位巡视组组长贾治国及商务厅党组书记贾锋；2024年厅长另有其人，不能写成贾锋任厅长。亲属链未核实。','家族转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_017','yt_iC8a1SW78PE',511,768,'母亲线索尚不能实名建档','主播给出路征母亲姓名音节并称曾任陕西驻京办副主任，能接触中央领导。本次没有找到足以将该姓名、职务和路征母亲三者对应的公开来源；进入待确认清单，不配照片、不补父母节点。','身份待确认','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_018','yt_iC8a1SW78PE',511,768,'贾庆林与江泽民的交往轶事','主播讲述两人在机械工业系统做同事、邻居，贾庆林帮助搬米和蜂窝煤的故事，并将后续升迁归于私人关系。官方履历支持部分任职节点，不支持搬运轶事或提拔因果。','轶事转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_019','yt_iC8a1SW78PE',511,768,'从福建到北京及政协','主播串联贾庆林1985年赴福建、其后任省长及书记、调北京、十六大后入常委和主持政协，称与陈希同落马及江泽民支持有关。履历与私人操作分栏记录，不能把前后发生直接当成因果。','任职与因果混合','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_020','yt_iC8a1SW78PE',511,768,'贾庆林与习近平的福建交集','主播称贾庆林在福建长期领导习近平，帮助其晋升并引入江泽民视野。任职重叠可查，私人引荐与具体提拔主张未证实；“约11年”不直接作为整段直接上下级时间。','关系推断','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_021','yt_iC8a1SW78PE',511,768,'拟制亲属与协调能力','主播明确称路征母亲与贾庆林没有血缘，却被当作妹妹，进而推测全国性协调能力；又比较李伯潭经妻子贾蔷协调与母亲直接请托的便利。因母亲身份未核，不构造已证实干亲关系，也不据此认定任何人代持。','关系推断','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_022','yt_iC8a1SW78PE',768,1015,'代理、煤矿与影视兴趣','主播称路征先做爱普生区域代理、后获陕西煤矿、随着煤价上涨积累财富，再转向影视圈。这些具体资产、合同、采矿权和收益没有公开文件支持。','经营经历转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_023','yt_iC8a1SW78PE',768,1015,'匿名模特的私交传闻','节目仅以周某某指称一名模特并暗示私交；没有可靠实名，不由“跳水”或行业标签反推姓名，不把网上候选人配进图谱。','匿名传闻','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_024','yt_iC8a1SW78PE',768,1015,'万达迁京与政商关系解释','主播从2008年万达总部迁京解释其寻找全国性资源的动机，称结束与薄熙来的合作、与邓朴方合作不足。公开报道曾载王健林否认与薄熙来关系良好；本库保留反向说法，不认定依附关系。','动机推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_025','yt_iC8a1SW78PE',768,1015,'贾庆林与王健林头衔','主播称路征母亲引荐王健林认识贾庆林，并帮其成为政协常委、工商联副主席及落地西安两处万达项目。王健林公开履历有相关职务；引荐、干预与项目交换没有因此获得证明。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_026','yt_iC8a1SW78PE',768,1015,'刘明康与银行授信','主播称刘明康在福建任职时与贾庆林有工作关系，又称王健林经引荐得到其支持并获全国银行授信。福建任职与银监会主席身份可核；授信决策主体、金额、私下协调原因未核。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_027','yt_iC8a1SW78PE',768,1015,'49%持股和代持主张','主播声称路征持万达陕西公司49%股份、也持集团股份，且用代持解释工商中查不到，另提其办公室在北京万达广场楼上。未指出完整公司名称、年份、代持文件和持股链，只存待核主张。','持股主张','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_028','yt_iC8a1SW78PE',768,1015,'地产商与关系户的概括','主播用地方关系、土地和授信解释地产合作，提及世纪金源外围的合展集团、中国华力及匿名国际女星母亲，并插入政府主导经济的议论。组织不作为人物；匿名女星及母亲不按网友猜测实名化。','行业评论','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_029','yt_iC8a1SW78PE',768,1015,'万达股东中的家属和商业伙伴','主播将四组家属称为权贵股东。纽约时报调查可核部分投资链，但温如春相关项涉及商业伙伴，李伯潭涉及关联公司，不能一概简写成本人直接持股，更不能证明父辈干预交易。','持股主张与外部核对','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_030','yt_iC8a1SW78PE',768,1015,'地方影响力的排序','主播认为王兆国家族主要影响孙春兰、陈豪，温如春能力有限、习近平姐姐依靠父辈旧交、李伯潭仍需谨慎；据此抬高匿名母亲的协调能力。全部属于影响力评价，不作事实等级或好感度。','主播评价','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_031','yt_iC8a1SW78PE',1015,1085,'传奇影业收购与出演','主播以2015—2016年万达投入加大及《长城》《金刚：骷髅岛》《环太平洋：雷霆再起》出演解释关系。官方签约公告为2016-01-12；叙事后段将收购写到2015年，需纠正。不同影片角色分量也不宜都称女主角。','作品与时间核对','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_032','yt_iC8a1SW78PE',1015,1085,'高虎城与审批推测','主播由高虎城早年外贸及机械进出口工作背景，推测尊重贾庆林可帮助并购审批。公开履历不证明某案干预；反垄断审查与境外投资审批也不能不加区分。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_033','yt_iC8a1SW78PE',1015,1085,'蔡赴朝与影视审查推测','主播将蔡赴朝在北京办公厅、宣传系统的经历概括为贾庆林秘书与提拔，再推测对万达影视审查有利。官方职务可核，私人推荐、影片放行的因果待核。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_034','yt_iC8a1SW78PE',1015,1085,'陕西布局的另一解释','主播认为2016年万达从西安扩展到陕西其他地区，更需要路征家族协调，因而增加景甜资源；未取得项目决策与角色安排之间的证明。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_035','yt_iC8a1SW78PE',1085,1303,'2018和2019央视春晚','景甜在2018年春晚与李易峰、江疏影演唱《赞赞新时代》，2019年与秦岚、江疏影等演唱《我们都是追梦人》。可建立同节目表演合作，不能据此推导私人联盟。','公开演出','公开证据支持','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_036','yt_iC8a1SW78PE',1085,1303,'文联春晚并非只出现一次','主播强调景甜2018年主持文联活动及跨两个系统的难度。外部补充：中国文联2019专题也明确列其为主持人；“只有一次文联春晚”不是完整履历。该事实不证明铁凝个人安排。','公开活动与推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_037','yt_iC8a1SW78PE',1085,1303,'公开恋情与更早传闻','主播称2017年11月普吉岛同游且旧关系尚未结束；该旅行及重叠关系未核。已公开证据可支持2018年3月28日公开恋情、2019年6月9日公布分手；公开时间不是实际开始或结束的精确日期。','公开交往与传闻','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_038','yt_iC8a1SW78PE',1085,1303,'微博和纹身被用作感情推断','主播援引2018年8月一则微博、互动减少、2019年初分手及去除纹身的媒体传闻，推测感情已转差。社交平台迹象不能直接填为实际分手日期。','媒体传闻','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_039','yt_iC8a1SW78PE',1085,1303,'春晚邀约与所谓最后帮助','主播以2018年秋的节目策划窗口，推测感情变化使原资助者愿最后帮助一次。策划窗口、知情程度和资助者决定没有独立来源；不制造2018年新的恋爱或金钱事件。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_040','yt_iC8a1SW78PE',1085,1303,'聂辰席与铁凝的职务','主播列两人在河北的经历、聂辰席2012年进入广电系统，以及铁凝1996年省作协、2006年中国作协、2016年中国文联的任职。官方资料支持相关职业身份；同省背景不自动构成派系。','任职背景','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_041','yt_iC8a1SW78PE',1085,1303,'栗战书、贾庆林和提拔论','主播将两位文化主管的早期晋升归于贾庆林、后期晋升归于栗战书，并以贾发林在沧州工作解释贾庆林在河北的影响。履历、籍贯、亲属说法均不能独立证明提拔行为；亲属链另列待核。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_042','yt_iC8a1SW78PE',1085,1303,'关系链被用于解释上春晚','主播用母亲与贾庆林、贾庆林与文化主管的关系推导景甜获照顾。多环节各自未核实，不能连乘为已证实的权力输送。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_043','yt_iC8a1SW78PE',1303,1480,'“公司登记就是线索”的叙述','主播认为路征可能已经足以解释五个现象，不必另找更高级别人物；公司出现制作人或股东并不能证明全部私人背景。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_044','yt_iC8a1SW78PE',1303,1480,'早期相识、求学与家庭传闻','主播将相识放在2004年，讲述年龄差、已有婚姻、公司设立、2007年入学及未经证实的生育、子女性别与长辈偏好。相识、婚姻、亲子主张无独立证据，不创建配偶或孩子档案。1905支持北影2007级本科经历，不能证明被他人安排入学。','未证实私生活叙事','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_045','yt_iC8a1SW78PE',1303,1480,'《一个女人的史诗》','主播称2008年路征投资该电视剧，赵薇、刘烨与景甜合作，并把阵容解释为捧新人；合作作品背景与“谁为谁作陪”的动机不同。','作品转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_046','yt_iC8a1SW78PE',1303,1480,'《孙子大传》与《我的美女老板》','主播称2009年投资《孙子大传》由张丰毅搭档，2010年路征担任《我的美女老板》出品人、总制片人，由何润东与景甜饰演情侣。角色关系不等于现实亲密关系。','作品转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_047','yt_iC8a1SW78PE',1303,1480,'《战国》投资与演员','主播称郭寿宝和地方国企参与，提及1.5亿元成本、约8000万元票房、后续合计近4亿元投入，并将演员阵容归于高片酬。演职员身份有公开资料；各投资金额、片酬和动机仍须项目文件，不能说郭寿宝个人承担全部。','作品与金额转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_048','yt_iC8a1SW78PE',1303,1480,'王健林邀请入股与国际片推演','主播将入股、母亲协助并购、国际片选角和所谓封口令串成报答链；收购年份在此口述为2015年，与官方2016年签约公告不同。整条报答因果未证实。','主播推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_049','yt_iC8a1SW78PE',1303,1480,'2017年后关系与公司退出','主播称2017年下半年关系出现裂痕，母亲仍安排春晚，其后路征退出公司、官微停更。未核实工商变更日，停更也不能证明已经解除私人关系。','关系结束推测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_050','yt_iC8a1SW78PE',1480,1664,'资源变化的价值判断','主播把后续作品以网剧为主、缺少顶级院线资源解释为失去照顾，对合作演员等级作贬评。本库把它保存为评论，不据此给演员评级。','主播评价','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_051','yt_iC8a1SW78PE',1480,1664,'匿名债权人与敲诈说法','主播把事件放在2019年底，提及匿名S先生、1700万元债务、私密材料敲诈和警方抓捕。此次未获得可核验的判决全文或警方通报对应这些细节；匿名人不实名化，不把节目叙述认定为张继科犯罪事实。','司法相关转述','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_052','yt_iC8a1SW78PE',1480,1664,'2021年《司藤》','主播称《司藤》在2021年春走红，提到9000万元成本并感慨投入大小不决定效果。播出年与此前制作时间不可混写；金额及路征是否出资未独立核实。','作品评价','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_053','yt_iC8a1SW78PE',1480,1664,'广告处罚日期与所谓保护失灵','主播把处罚放在2021年底，进而猜测景甜无法再借用关系，并称林克庆属于贾庆林网络。监管公告实际在2022-05-28公布，2021年底是发现线索；罚没合计722.12万元是行政处罚，不能写成判刑。关系保护与执法动机没有得到公告支持。','事实纠正与推测','有争议','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_054','yt_iC8a1SW78PE',1480,1664,'孙宇晨争议和郑爽类比','主播称2026年8月发生与孙宇晨的纠纷，担忧后续发展并以郑爽作类比。争议内容、发生日期及未来后果此次未独立核实；两位演员被类比不构成关系。','近期主张与预测','主播说法待核实','2026-09-23T00:17:15-07:00');
INSERT INTO "video_segments" VALUES('ic8_seg_055','yt_iC8a1SW78PE',1480,1664,'结尾的证据边界','主播最终再次声明以上来自猜测，欢迎其他符合其五项条件的答案，并认为可能有多个解释。该免责声明适用于幕后网络、私人家庭和因果叙事；不能用完整故事感替代逐项证据。','主播声明','主播说法待核实','2026-09-23T00:17:15-07:00');
CREATE INDEX appointments_by_person ON appointments(person_id,start_date);
CREATE INDEX relations_by_a ON relationships(person_a_id);
CREATE INDEX relations_by_b ON relationships(person_b_id);
CREATE INDEX evidence_by_relation ON relationship_evidence(relationship_id);
CREATE INDEX memberships_by_person ON faction_memberships(person_id);
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
CREATE INDEX events_person_time ON person_events(person_id,event_date);
CREATE INDEX periods_relation_time ON relationship_periods(relationship_id,valid_from,valid_to);
CREATE INDEX segments_source_time ON video_segments(source_id,start_seconds);
CREATE INDEX segments_person ON segment_people(person_id);
CREATE TRIGGER category_guard_insert BEFORE INSERT ON people WHEN NEW.category NOT IN ('政治','军事','商业','媒体','学者','演员主持人','其他名人') BEGIN SELECT RAISE(ABORT,'人物分类须采用七类标准'); END;
CREATE TRIGGER category_guard_update BEFORE UPDATE ON people WHEN NEW.category NOT IN ('政治','军事','商业','媒体','学者','演员主持人','其他名人') BEGIN SELECT RAISE(ABORT,'人物分类须采用七类标准'); END;
COMMIT;
PRAGMA user_version=7;
