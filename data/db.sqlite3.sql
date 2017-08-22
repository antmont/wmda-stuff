BEGIN TRANSACTION;
CREATE TABLE "wmdadict_wmdaform" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "form_code" varchar(10) NOT NULL UNIQUE, "description" varchar(200) NOT NULL);
INSERT INTO `wmdadict_wmdaform` VALUES (1,'CB30','Cord blood unit request');
CREATE TABLE "wmdadict_formfields" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "form_field_name" varchar(200) NOT NULL, "wmda_form_id" integer NOT NULL REFERENCES "wmdadict_wmdaform" ("id"), "dict_field_id" integer NOT NULL REFERENCES "wmdadict_dictionaryfield" ("id"));
CREATE TABLE "wmdadict_emdismessage" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL UNIQUE, "description" varchar(200) NOT NULL);
INSERT INTO `wmdadict_emdismessage` VALUES (1,'ADMIN','Administer CBU inventory');
INSERT INTO `wmdadict_emdismessage` VALUES (2,'ALM_REQ','Request an alternative match list for a patient');
INSERT INTO `wmdadict_emdismessage` VALUES (3,'ALM_RES','Alternative match list result');
INSERT INTO `wmdadict_emdismessage` VALUES (4,'CBR_REQ','Cord blood unit report request');
INSERT INTO `wmdadict_emdismessage` VALUES (5,'CBU_DIFF','Full CBU inventory message');
INSERT INTO `wmdadict_emdismessage` VALUES (6,'CBU_FULL','Differential CBU inventory message');
INSERT INTO `wmdadict_emdismessage` VALUES (7,'DONOR_CB','Match list');
INSERT INTO `wmdadict_emdismessage` VALUES (8,'IDM_REQ','Infectious disease marker request');
INSERT INTO `wmdadict_emdismessage` VALUES (9,'IDM_RES','Result of infectious disease marker request');
INSERT INTO `wmdadict_emdismessage` VALUES (10,'MARR_STAT','Donor workup status');
INSERT INTO `wmdadict_emdismessage` VALUES (11,'MATCH_SUM','Summary of match run');
INSERT INTO `wmdadict_emdismessage` VALUES (12,'MSG_ACK','Message acknowledgement');
INSERT INTO `wmdadict_emdismessage` VALUES (13,'MSG_DEN','Message denial');
INSERT INTO `wmdadict_emdismessage` VALUES (14,'NEW_ADD','Address to broadcast');
INSERT INTO `wmdadict_emdismessage` VALUES (15,'NO_RES','Service can not be performed');
INSERT INTO `wmdadict_emdismessage` VALUES (16,'PAT_STAT','Change patient status');
INSERT INTO `wmdadict_emdismessage` VALUES (17,'PAT_UPD','Patient registration and update');
INSERT INTO `wmdadict_emdismessage` VALUES (18,'PHEN_LIST','Phenotype list');
INSERT INTO `wmdadict_emdismessage` VALUES (19,'REQ_CAN','Cancellation of a request');
INSERT INTO `wmdadict_emdismessage` VALUES (20,'RES_REM','Result reminder');
INSERT INTO `wmdadict_emdismessage` VALUES (21,'RSV_NOT','CBU implicit reservation notification');
INSERT INTO `wmdadict_emdismessage` VALUES (22,'RSV_REQ','Donor reservation request');
INSERT INTO `wmdadict_emdismessage` VALUES (23,'RSV_RES','Result of donor reservation');
INSERT INTO `wmdadict_emdismessage` VALUES (24,'SMP_ARR','Date suggested for arrival of sample');
INSERT INTO `wmdadict_emdismessage` VALUES (25,'SMP_INFO','Donor information in the context of sample requests');
INSERT INTO `wmdadict_emdismessage` VALUES (26,'SMP_REQ','Sample request');
INSERT INTO `wmdadict_emdismessage` VALUES (27,'SMP_RES','Result of sample testing');
INSERT INTO `wmdadict_emdismessage` VALUES (28,'TXT_MSG','Text message');
INSERT INTO `wmdadict_emdismessage` VALUES (29,'TYP_REQ','Typing request');
INSERT INTO `wmdadict_emdismessage` VALUES (30,'TYP_RES','Result of typing');
INSERT INTO `wmdadict_emdismessage` VALUES (31,'WARNING','Warning message');
INSERT INTO `wmdadict_emdismessage` VALUES (32,'WOR_REQ','Workup request');
CREATE TABLE "wmdadict_emdisfield_emdis_messages" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "emdisfield_id" integer NOT NULL REFERENCES "wmdadict_emdisfield" ("id"), "emdismessage_id" integer NOT NULL REFERENCES "wmdadict_emdismessage" ("id"));
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1,18,1);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (2,351,1);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (3,202,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (4,203,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (5,207,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (6,398,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (7,399,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (8,400,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (9,5,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (10,8,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (11,43,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (12,46,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (13,93,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (14,96,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (15,100,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (16,103,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (17,143,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (18,146,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (19,149,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (20,152,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (21,199,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (22,318,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (23,319,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (24,320,2);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (25,1,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (26,4,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (27,7,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (28,11,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (29,39,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (30,42,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (31,45,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (32,54,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (33,57,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (34,60,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (35,63,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (36,68,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (37,72,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (38,74,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (39,78,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (40,84,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (41,92,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (42,95,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (43,97,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (44,99,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (45,102,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (46,105,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (47,108,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (48,112,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (49,115,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (50,118,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (51,121,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (52,124,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (53,127,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (54,130,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (55,133,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (56,136,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (57,139,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (58,142,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (59,145,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (60,148,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (61,151,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (62,154,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (63,157,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (64,160,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (65,163,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (66,166,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (67,169,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (68,172,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (69,175,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (70,193,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (71,202,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (72,203,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (73,206,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (74,207,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (75,216,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (76,218,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (77,220,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (78,222,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (79,224,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (80,226,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (81,228,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (82,230,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (83,232,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (84,234,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (85,236,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (86,238,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (87,240,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (88,242,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (89,244,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (90,246,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (91,248,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (92,250,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (93,308,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (94,310,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (95,339,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (96,344,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (97,345,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (98,346,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (99,347,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (100,360,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (101,397,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (102,398,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (103,399,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (104,400,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (105,412,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (106,415,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (107,417,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (108,419,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (109,425,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (110,431,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (111,441,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (112,199,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (113,2,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (114,66,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (115,86,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (116,324,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (117,340,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (118,439,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (119,440,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (120,187,3);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (121,17,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (122,187,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (123,408,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (124,173,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (125,181,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (126,202,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (127,203,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (128,207,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (129,399,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (130,400,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (131,206,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (132,398,4);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (133,2,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (134,3,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (135,6,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (136,9,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (137,22,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (138,23,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (139,24,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (140,30,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (141,33,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (142,35,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (143,38,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (144,41,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (145,44,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (146,47,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (147,48,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (148,49,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (149,50,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (150,51,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (151,52,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (152,53,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (153,56,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (154,59,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (155,62,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (156,66,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (157,67,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (158,71,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (159,75,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (160,76,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (161,86,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (162,91,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (163,94,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (164,98,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (165,101,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (166,104,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (167,107,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (168,110,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (169,111,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (170,114,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (171,117,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (172,120,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (173,123,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (174,126,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (175,129,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (176,132,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (177,135,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (178,138,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (179,141,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (180,144,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (181,147,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (182,150,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (183,153,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (184,156,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (185,159,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (186,162,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (187,165,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (188,168,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (189,171,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (190,174,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (191,183,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (192,184,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (193,185,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (194,189,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (195,191,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (196,192,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (197,194,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (198,196,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (199,197,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (200,200,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (201,205,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (202,215,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (203,217,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (204,219,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (205,221,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (206,223,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (207,225,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (208,227,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (209,229,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (210,231,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (211,233,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (212,235,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (213,237,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (214,239,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (215,241,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (216,243,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (217,245,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (218,247,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (219,249,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (220,253,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (221,257,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (222,258,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (223,259,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (224,260,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (225,261,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (226,262,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (227,263,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (228,264,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (229,265,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (230,266,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (231,267,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (232,268,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (233,269,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (234,270,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (235,271,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (236,272,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (237,273,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (238,274,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (239,275,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (240,276,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (241,277,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (242,278,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (243,279,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (244,280,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (245,281,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (246,282,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (247,283,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (248,284,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (249,285,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (250,286,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (251,287,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (252,288,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (253,289,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (254,290,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (255,291,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (256,292,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (257,293,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (258,294,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (259,295,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (260,296,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (261,297,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (262,298,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (263,299,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (264,300,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (265,301,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (266,302,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (267,303,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (268,304,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (269,305,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (270,306,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (271,307,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (272,309,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (273,311,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (274,312,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (275,313,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (276,324,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (277,340,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (278,350,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (279,353,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (280,359,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (281,362,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (282,363,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (283,364,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (284,365,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (285,396,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (286,410,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (287,411,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (288,414,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (289,416,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (290,418,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (291,420,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (292,424,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (293,430,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (294,433,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (295,434,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (296,435,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (297,436,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (298,439,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (299,440,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (300,443,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (301,187,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (302,407,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (303,39,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (304,202,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (305,203,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (306,207,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (307,360,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (308,399,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (309,400,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (310,199,5);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (311,2,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (312,3,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (313,6,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (314,9,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (315,22,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (316,23,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (317,24,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (318,30,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (319,33,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (320,35,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (321,38,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (322,41,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (323,44,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (324,47,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (325,48,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (326,49,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (327,50,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (328,51,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (329,52,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (330,53,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (331,56,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (332,59,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (333,62,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (334,66,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (335,67,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (336,71,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (337,75,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (338,76,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (339,86,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (340,91,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (341,94,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (342,98,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (343,101,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (344,104,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (345,107,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (346,110,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (347,111,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (348,114,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (349,117,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (350,120,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (351,123,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (352,126,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (353,129,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (354,132,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (355,135,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (356,138,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (357,141,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (358,144,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (359,147,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (360,150,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (361,153,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (362,156,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (363,159,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (364,162,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (365,165,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (366,168,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (367,171,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (368,174,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (369,183,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (370,184,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (371,185,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (372,189,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (373,191,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (374,192,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (375,194,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (376,196,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (377,197,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (378,200,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (379,205,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (380,215,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (381,217,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (382,219,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (383,221,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (384,223,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (385,225,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (386,227,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (387,229,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (388,231,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (389,233,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (390,235,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (391,237,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (392,239,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (393,241,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (394,243,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (395,245,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (396,247,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (397,249,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (398,253,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (399,257,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (400,258,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (401,259,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (402,260,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (403,261,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (404,262,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (405,263,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (406,264,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (407,265,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (408,266,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (409,267,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (410,268,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (411,269,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (412,270,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (413,271,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (414,272,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (415,273,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (416,274,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (417,275,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (418,276,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (419,277,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (420,278,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (421,279,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (422,280,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (423,281,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (424,282,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (425,283,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (426,284,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (427,285,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (428,286,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (429,287,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (430,288,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (431,289,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (432,290,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (433,291,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (434,292,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (435,293,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (436,294,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (437,295,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (438,296,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (439,297,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (440,298,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (441,299,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (442,300,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (443,301,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (444,302,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (445,303,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (446,304,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (447,305,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (448,306,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (449,307,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (450,309,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (451,311,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (452,312,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (453,313,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (454,324,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (455,340,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (456,350,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (457,353,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (458,359,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (459,362,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (460,363,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (461,364,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (462,365,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (463,396,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (464,410,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (465,411,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (466,414,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (467,416,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (468,418,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (469,420,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (470,424,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (471,430,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (472,433,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (473,434,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (474,435,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (475,436,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (476,439,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (477,440,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (478,443,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (479,39,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (480,360,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (481,187,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (482,407,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (483,202,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (484,203,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (485,207,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (486,399,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (487,400,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (488,199,6);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (489,1,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (490,4,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (491,7,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (492,11,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (493,39,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (494,42,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (495,45,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (496,54,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (497,57,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (498,60,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (499,63,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (500,68,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (501,72,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (502,74,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (503,78,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (504,84,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (505,92,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (506,95,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (507,97,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (508,99,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (509,102,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (510,105,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (511,108,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (512,112,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (513,115,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (514,118,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (515,121,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (516,124,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (517,127,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (518,130,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (519,133,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (520,136,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (521,139,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (522,142,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (523,145,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (524,148,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (525,151,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (526,154,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (527,157,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (528,160,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (529,163,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (530,166,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (531,169,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (532,172,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (533,175,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (534,193,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (535,206,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (536,216,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (537,218,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (538,220,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (539,222,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (540,224,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (541,226,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (542,228,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (543,230,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (544,232,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (545,234,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (546,236,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (547,238,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (548,240,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (549,242,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (550,244,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (551,246,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (552,248,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (553,250,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (554,308,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (555,310,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (556,339,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (557,344,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (558,345,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (559,346,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (560,347,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (561,360,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (562,397,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (563,412,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (564,415,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (565,417,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (566,419,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (567,425,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (568,431,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (569,441,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (570,187,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (571,2,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (572,66,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (573,86,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (574,324,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (575,340,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (576,439,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (577,440,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (578,199,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (579,202,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (580,203,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (581,207,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (582,399,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (583,400,7);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (584,254,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (585,212,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (586,403,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (587,17,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (588,401,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (589,202,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (590,203,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (591,207,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (592,399,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (593,400,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (594,206,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (595,398,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (596,187,8);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (597,180,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (598,25,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (599,31,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (600,32,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (601,34,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (602,36,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (603,190,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (604,195,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (605,198,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (606,254,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (607,426,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (608,193,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (609,346,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (610,347,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (611,441,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (612,172,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (613,425,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (614,72,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (615,74,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (616,401,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (617,202,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (618,203,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (619,207,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (620,399,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (621,400,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (622,206,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (623,398,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (624,187,9);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (625,40,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (626,70,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (627,82,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (628,177,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (629,178,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (630,208,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (631,255,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (632,354,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (633,355,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (634,356,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (635,361,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (636,428,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (637,437,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (638,438,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (639,202,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (640,203,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (641,207,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (642,399,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (643,400,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (644,401,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (645,206,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (646,398,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (647,187,10);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (648,421,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (649,422,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (650,423,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (651,316,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (652,202,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (653,203,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (654,207,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (655,399,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (656,400,11);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (657,16,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (658,17,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (659,202,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (660,203,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (661,399,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (662,400,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (663,401,12);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (664,326,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (665,349,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (666,207,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (667,202,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (668,203,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (669,399,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (670,400,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (671,401,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (672,206,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (673,398,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (674,187,13);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (675,15,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (676,19,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (677,20,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (678,21,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (679,69,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (680,85,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (681,173,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (682,181,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (683,210,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (684,214,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (685,357,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (686,358,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (687,445,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (688,202,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (689,203,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (690,399,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (691,400,14);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (692,391,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (693,404,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (694,207,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (695,401,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (696,202,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (697,203,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (698,399,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (699,400,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (700,206,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (701,398,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (702,187,15);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (703,343,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (704,348,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (705,392,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (706,207,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (707,202,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (708,203,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (709,399,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (710,400,16);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (711,5,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (712,8,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (713,12,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (714,43,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (715,46,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (716,55,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (717,58,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (718,61,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (719,73,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (720,87,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (721,88,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (722,89,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (723,90,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (724,93,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (725,96,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (726,100,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (727,103,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (728,106,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (729,109,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (730,113,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (731,116,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (732,119,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (733,122,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (734,125,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (735,128,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (736,131,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (737,134,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (738,137,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (739,140,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (740,143,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (741,146,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (742,149,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (743,152,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (744,155,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (745,158,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (746,161,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (747,164,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (748,167,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (749,170,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (750,176,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (751,182,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (752,186,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (753,199,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (754,252,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (755,314,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (756,315,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (757,317,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (758,318,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (759,319,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (760,320,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (761,352,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (762,413,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (763,442,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (764,207,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (765,202,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (766,203,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (767,399,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (768,400,17);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (769,201,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (770,316,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (771,4,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (772,7,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (773,42,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (774,45,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (775,57,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (776,60,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (777,92,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (778,95,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (779,99,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (780,102,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (781,105,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (782,108,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (783,112,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (784,115,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (785,118,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (786,121,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (787,124,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (788,127,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (789,130,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (790,133,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (791,136,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (792,139,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (793,142,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (794,145,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (795,148,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (796,151,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (797,154,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (798,157,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (799,160,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (800,163,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (801,166,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (802,169,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (803,431,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (804,199,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (805,207,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (806,202,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (807,203,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (808,399,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (809,400,18);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (810,393,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (811,404,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (812,401,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (813,206,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (814,398,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (815,207,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (816,202,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (817,203,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (818,399,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (819,400,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (820,187,19);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (821,405,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (822,179,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (823,403,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (824,401,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (825,206,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (826,207,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (827,398,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (828,202,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (829,203,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (830,399,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (831,400,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (832,187,20);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (833,205,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (834,179,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (835,187,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (836,207,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (837,401,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (838,202,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (839,203,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (840,399,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (841,400,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (842,398,21);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (843,179,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (844,403,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (845,17,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (846,401,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (847,206,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (848,398,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (849,187,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (850,207,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (851,202,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (852,203,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (853,399,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (854,400,22);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (855,83,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (856,179,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (857,401,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (858,206,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (859,398,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (860,187,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (861,207,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (862,202,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (863,203,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (864,399,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (865,400,23);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (866,37,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (867,77,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (868,251,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (869,407,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (870,17,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (871,401,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (872,206,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (873,398,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (874,187,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (875,207,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (876,202,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (877,203,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (878,399,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (879,400,24);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (880,209,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (881,402,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (882,398,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (883,187,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (884,206,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (885,207,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (886,202,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (887,203,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (888,399,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (889,400,25);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (890,13,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (891,213,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (892,327,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (893,330,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (894,333,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (895,336,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (896,366,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (897,369,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (898,372,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (899,375,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (900,379,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (901,380,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (902,381,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (903,382,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (904,394,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (905,395,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (906,212,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (907,403,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (908,432,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (909,17,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (910,401,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (911,206,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (912,398,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (913,187,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (914,207,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (915,202,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (916,203,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (917,399,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (918,400,26);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (919,14,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (920,25,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (921,31,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (922,32,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (923,34,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (924,36,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (925,188,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (926,190,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (927,195,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (928,198,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (929,204,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (930,322,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (931,323,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (932,426,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (933,172,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (934,425,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (935,11,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (936,72,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (937,74,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (938,4,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (939,7,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (940,42,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (941,45,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (942,57,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (943,60,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (944,92,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (945,95,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (946,99,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (947,102,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (948,105,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (949,108,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (950,112,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (951,115,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (952,118,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (953,121,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (954,124,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (955,127,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (956,130,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (957,133,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (958,136,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (959,139,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (960,142,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (961,145,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (962,148,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (963,151,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (964,154,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (965,157,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (966,160,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (967,163,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (968,166,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (969,169,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (970,401,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (971,199,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (972,206,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (973,398,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (974,187,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (975,207,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (976,202,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (977,203,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (978,399,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (979,400,27);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (980,409,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (981,429,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (982,206,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (983,187,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (984,207,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (985,202,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (986,203,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (987,399,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (988,400,28);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (989,212,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (990,401,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (991,403,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (992,406,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (993,432,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (994,17,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (995,206,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (996,398,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (997,187,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (998,207,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (999,202,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1000,203,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1001,399,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1002,400,29);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1003,401,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1004,407,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1005,11,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1006,72,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1007,74,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1008,412,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1009,4,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1010,7,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1011,42,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1012,45,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1013,57,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1014,60,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1015,92,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1016,95,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1017,99,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1018,102,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1019,105,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1020,108,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1021,112,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1022,115,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1023,118,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1024,121,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1025,124,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1026,127,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1027,130,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1028,133,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1029,136,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1030,139,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1031,142,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1032,145,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1033,148,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1034,151,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1035,154,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1036,157,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1037,160,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1038,163,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1039,166,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1040,169,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1041,206,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1042,398,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1043,199,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1044,187,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1045,207,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1046,202,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1047,203,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1048,399,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1049,400,30);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1050,326,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1051,349,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1052,401,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1053,206,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1054,398,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1055,187,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1056,207,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1057,202,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1058,203,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1059,399,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1060,400,31);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1061,26,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1062,27,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1063,28,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1064,29,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1065,64,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1066,65,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1067,79,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1068,80,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1069,81,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1070,211,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1071,256,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1072,321,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1073,325,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1074,328,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1075,329,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1076,331,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1077,332,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1078,334,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1079,335,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1080,337,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1081,338,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1082,341,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1083,342,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1084,367,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1085,368,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1086,370,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1087,371,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1088,373,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1089,374,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1090,376,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1091,377,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1092,378,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1093,383,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1094,384,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1095,385,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1096,386,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1097,387,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1098,388,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1099,389,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1100,390,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1101,427,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1102,444,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1103,90,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1104,213,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1105,212,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1106,403,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1107,17,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1108,401,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1109,206,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1110,398,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1111,187,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1112,207,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1113,202,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1114,203,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1115,399,32);
INSERT INTO `wmdadict_emdisfield_emdis_messages` VALUES (1116,400,32);
CREATE TABLE "wmdadict_emdisfield" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "field_code" varchar(50) NOT NULL UNIQUE, "field_description" varchar(200) NOT NULL, "field_type" varchar(10) NOT NULL, "field_rule" text NOT NULL, "dict_field_id" integer NOT NULL REFERENCES "wmdadict_dictionaryfield" ("id"));
INSERT INTO `wmdadict_emdisfield` VALUES (1,'CB_34PC','Collected total number of CD34+ cells','F7','Cells expressed in scientific notation; valid range 0.0E0 to 999.9E6',1);
INSERT INTO `wmdadict_emdisfield` VALUES (2,'CB_34PC_FRZN','Processed total number of CD34+ cells. Post processing and pre-cryopreservation.','F7','Cells expressed in scientific notation; valid range 0.0E0 to 999.9E6',2);
INSERT INTO `wmdadict_emdisfield` VALUES (3,'CB_A1','CBU HLA-A, 1st antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',3);
INSERT INTO `wmdadict_emdisfield` VALUES (4,'D_A1','Donor HLA-A, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',3);
INSERT INTO `wmdadict_emdisfield` VALUES (5,'P_A1','Patient HLA-A, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',3);
INSERT INTO `wmdadict_emdisfield` VALUES (6,'CB_A2','CBU HLA-A, 2nd antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',4);
INSERT INTO `wmdadict_emdisfield` VALUES (7,'D_A2','Donor HLA-A, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',4);
INSERT INTO `wmdadict_emdisfield` VALUES (8,'P_A2','Patient HLA-A, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',4);
INSERT INTO `wmdadict_emdisfield` VALUES (9,'CB_ABO','CBU blood group and optional rhesus','A3','A, B, O (letter O), AB, all optional suffixed with P, +, N or -',5);
INSERT INTO `wmdadict_emdisfield` VALUES (11,'D_ABO','Donor blood group and optional rhesus','A3','A,B,O (letter O), AB; optional suffixed with P, +, N or -',5);
INSERT INTO `wmdadict_emdisfield` VALUES (12,'P_ABO','Patient blood group and rhesus','A3','A, B, O (letter O), AB, all suffixed with P, +, N or -',5);
INSERT INTO `wmdadict_emdisfield` VALUES (13,'ACC_DAYS','Weekdays acceptable for sample reception','B7','Binary fixed length string for the 7 days in the week. Position 1 corresponds with Monday, position 7 corresponds with Sunday. Default: 1111100Example: 1110000 means acceptable days for reception are Monday, Tuesday and Wednesday, not acceptable days are Thursday, Friday, Saturday or Sunday.',7);
INSERT INTO `wmdadict_emdisfield` VALUES (14,'DON_ACCPT','Donor still of interest','A1','Y = Yes N = No',8);
INSERT INTO `wmdadict_emdisfield` VALUES (15,'ACCREDITATION','Accreditations obtained','B5','Binary fixed length string, in which each position represents an accreditation status a cord blood bank has obtained. This field is currently only allowed, if the INST_TYPE field in the NEW_ADD message is �CBB�.Position 1: NetCord-FACTPosition 2: AABB Position 3: to be defined Position 4: to be defined Position 5: to be defined',9);
INSERT INTO `wmdadict_emdisfield` VALUES (16,'ACK_DATE','Date of acknowledgement','D8','Date format YYYYMMDD',10);
INSERT INTO `wmdadict_emdisfield` VALUES (17,'ACK_ID','Acknowledgement ID','A17','Free form; see note 1 in the appendix',11);
INSERT INTO `wmdadict_emdisfield` VALUES (18,'ACTION','Administrative action','A10','�CBU_FULL� = request full inventory',12);
INSERT INTO `wmdadict_emdisfield` VALUES (19,'ADDR_1','Address Line 1','A40','Free form; see note 1 in the appendix',13);
INSERT INTO `wmdadict_emdisfield` VALUES (20,'ADDR_2','Address Line 2','A40','Free form; see note 1 in the appendix',14);
INSERT INTO `wmdadict_emdisfield` VALUES (21,'ADDR_3','Address Line 3','A40','Free form; see note 1 in the appendix',15);
INSERT INTO `wmdadict_emdisfield` VALUES (22,'CB_AL_PLA','The total number of CBU plasma aliquots available for testing. These samples may be used for infectious disease testing','N2','',16);
INSERT INTO `wmdadict_emdisfield` VALUES (23,'CB_AL_RED_BC','The total number of CBU red cell fraction aliquots available for testing. These samples may be used for infectious disease testing','N2','',17);
INSERT INTO `wmdadict_emdisfield` VALUES (24,'CB_AL_SER','Number of CBU serum aliquots available','N2','',18);
INSERT INTO `wmdadict_emdisfield` VALUES (25,'D_ALT','Donor ALT status','N3','in Units per litre (u/l)',19);
INSERT INTO `wmdadict_emdisfield` VALUES (26,'ALTER_DATE1','First alternative date for marrow collection / CBU shipment','D8','Date format YYYYMMDD',20);
INSERT INTO `wmdadict_emdisfield` VALUES (27,'ALTER_DATE2','Second alternative date for marrow collection / CBU shipment','D8','Date format YYYYMMDD',21);
INSERT INTO `wmdadict_emdisfield` VALUES (28,'ALTER_REQ_TYPE','Workup request type - alternative','A4','PBSC = Request a PBSC collectionSCD = Request the workup of a stem cell donor CBU = Request a cord blood unit',22);
INSERT INTO `wmdadict_emdisfield` VALUES (29,'ANTI_COAG','Type of anticoagulant','A10','ACD, CPD, HEPARIN',23);
INSERT INTO `wmdadict_emdisfield` VALUES (30,'CB_ANTI_HBC','CBU Hepatitis B status (antibody to hepatitis B core antigen)','A1','P = Positive N = Negative',24);
INSERT INTO `wmdadict_emdisfield` VALUES (31,'D_ANTI_HBC','Donor Hepatitis B status (antibody to hepatitis B core antigen)','A1','P = Positive N = NegativeQ = Questionable/Uncertain',24);
INSERT INTO `wmdadict_emdisfield` VALUES (32,'D_ANTI_HBS','Donor Hepatitis B status (antibody to hepatitis B surface antigen)','A1','P = Positive N = NegativeQ = Questionable/Uncertain',25);
INSERT INTO `wmdadict_emdisfield` VALUES (33,'CB_ANTI_HCV','CBU Hepatitis C status (antibody to hepatitis C virus)','A1','P = Positive N = Negative',26);
INSERT INTO `wmdadict_emdisfield` VALUES (34,'D_ANTI_HCV','Donor Hepatitis C status (antibody to hepatitis C virus)','A1','P = Positive N = NegativeQ = Questionable/Uncertain',26);
INSERT INTO `wmdadict_emdisfield` VALUES (35,'CB_ANTI_HIV_12','CBU Anti-HIV 1/2 status','A1','P = Positive N = Negative',27);
INSERT INTO `wmdadict_emdisfield` VALUES (36,'D_ANTI_HTLV','Donor Antibody to HTLV1.V2','A1','P = Positive N = NegativeQ = Questionable/Uncertain',28);
INSERT INTO `wmdadict_emdisfield` VALUES (37,'ARRV_DATE','Date arrival of requested sample','D8','Date format YYYYMMDD',29);
INSERT INTO `wmdadict_emdisfield` VALUES (38,'CB_ATT_SEG','Number of attached segments available','N2','',30);
INSERT INTO `wmdadict_emdisfield` VALUES (39,'DON_ATTR','Donor attribute','A3','Free form; see note 1 in the appendix',31);
INSERT INTO `wmdadict_emdisfield` VALUES (40,'AUTO_DATE','Date autologous units','D8','Date format YYYYMMDD',32);
INSERT INTO `wmdadict_emdisfield` VALUES (41,'CB_B1','CBU HLA-B, 1st antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',33);
INSERT INTO `wmdadict_emdisfield` VALUES (42,'D_B1','Donor HLA-B, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',33);
INSERT INTO `wmdadict_emdisfield` VALUES (43,'P_B1','Patient HLA-B, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',33);
INSERT INTO `wmdadict_emdisfield` VALUES (44,'CB_B2','CBU HLA-B, 2nd antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',34);
INSERT INTO `wmdadict_emdisfield` VALUES (45,'D_B2','Donor HLA-B, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',34);
INSERT INTO `wmdadict_emdisfield` VALUES (46,'P_B2','Patient HLA-B, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',34);
INSERT INTO `wmdadict_emdisfield` VALUES (47,'CB_BACT_CULT','Bacterial culture','A1','P = Positive N = Negative D = Not done',35);
INSERT INTO `wmdadict_emdisfield` VALUES (48,'CB_BAG_ID','The identification as it appears on the bag. If more than one bag is available, do not fill in this field.','A17','Free form; see note 1 in the appendix',36);
INSERT INTO `wmdadict_emdisfield` VALUES (49,'CB_BAGS','Number of bags for the cord blood sub units','N2','',37);
INSERT INTO `wmdadict_emdisfield` VALUES (50,'CB_BANK_DISTRIB_ID','The ID of the bank distributing the unit.  This may be different to  the manufacturer','A10','EMDIS hub code + Local Id',38);
INSERT INTO `wmdadict_emdisfield` VALUES (51,'CB_BANK_MANUF_ID','The ID of the bank that manufactured the unit','A10','EMDIS hub code + Local Id',39);
INSERT INTO `wmdadict_emdisfield` VALUES (52,'CB_BANK_MAT_ID','The identification used to identify the maternal donor','A15','Local ID',40);
INSERT INTO `wmdadict_emdisfield` VALUES (53,'CB_BIRTH_DATE','CBU Date of birth (date the infant was born)','D8','Date format: YYYYMMDD',41);
INSERT INTO `wmdadict_emdisfield` VALUES (54,'D_BIRTH_DATE','Donor date of birth','D8','Date format YYYYMMDDSince this field is a required field as of IP5, YYYY0101 should be given if the exact date of birth is unknown',42);
INSERT INTO `wmdadict_emdisfield` VALUES (55,'P_BIRTH_DATE','Patient date of birth','D8','Date format YYYYMMDD',42);
INSERT INTO `wmdadict_emdisfield` VALUES (56,'CB_C1','CBU HLA-C, 1st antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',43);
INSERT INTO `wmdadict_emdisfield` VALUES (57,'D_C1','Donor HLA-C, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',43);
INSERT INTO `wmdadict_emdisfield` VALUES (58,'P_C1','Patient HLA-C, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',43);
INSERT INTO `wmdadict_emdisfield` VALUES (59,'CB_C2','CBU HLA-C, 2nd antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',44);
INSERT INTO `wmdadict_emdisfield` VALUES (60,'D_C2','Donor HLA-C, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',44);
INSERT INTO `wmdadict_emdisfield` VALUES (61,'P_C2','Patient HLA-C, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',44);
INSERT INTO `wmdadict_emdisfield` VALUES (62,'CB_CCR5','CBU CCR5 status','A2','DD = Deletion (delta 32) - homozygousDW = Deletion (delta 32) / wildtype - heterozygousWW = Wildtype - homozygous',45);
INSERT INTO `wmdadict_emdisfield` VALUES (63,'D_CCR5','Donor CCR5 status','A2','DD = Deletion (delta 32) - homozygousDW = Deletion (delta 32) / wildtype - heterozygousWW = Wildtype - homozygous',45);
INSERT INTO `wmdadict_emdisfield` VALUES (64,'CD34PC_KG','Number of CD34+ cells per kilo for recipient','F7','Cells expressed in scientific notation',46);
INSERT INTO `wmdadict_emdisfield` VALUES (65,'CD3PC_KG','Number of CD3+ cells per kilo for recipient','F7','Cells expressed in scientific notation',47);
INSERT INTO `wmdadict_emdisfield` VALUES (66,'CB_CFU','Total CFU post processing count (post processing and pre-cryopreservation). GM method','F7','Cells expressed in scientific notation; valid range 0.0E5 to 999.9E5',48);
INSERT INTO `wmdadict_emdisfield` VALUES (67,'CB_CHAGAS','CBU Chagas status','A1','P = Positive N = Negative',49);
INSERT INTO `wmdadict_emdisfield` VALUES (68,'D_CHECKUP_DATE','Date of last medical checkup of the donor','D8','Date format YYYYMMDD',50);
INSERT INTO `wmdadict_emdisfield` VALUES (69,'CITY','City','A40','Free form; see note 1 in the appendix',51);
INSERT INTO `wmdadict_emdisfield` VALUES (70,'CLEAR_DATE','Date of final clearance before transplantation','D8','Date format YYYYMMDD',52);
INSERT INTO `wmdadict_emdisfield` VALUES (71,'CB_CMV','CBU CMV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',53);
INSERT INTO `wmdadict_emdisfield` VALUES (72,'D_CMV','Donor CMV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',53);
INSERT INTO `wmdadict_emdisfield` VALUES (73,'P_CMV','Patient CMV status','A1','P = Positive N = Negative',53);
INSERT INTO `wmdadict_emdisfield` VALUES (74,'D_CMV_DATE','Date of CMV test','D8','Date format YYYYMMDD',54);
INSERT INTO `wmdadict_emdisfield` VALUES (75,'CB_CMV_NAT','CBU CMV NAT status','A1','P = Positive N = Negative',55);
INSERT INTO `wmdadict_emdisfield` VALUES (76,'CB_COLL_DATE','CBU Collection date','D8','Date format: YYYYMMDD',56);
INSERT INTO `wmdadict_emdisfield` VALUES (77,'COLL_DATE','Donor blood collection date','D8','Date format YYYYMMDD',57);
INSERT INTO `wmdadict_emdisfield` VALUES (78,'D_COLL_TYPE','Donor collection type _ what is the donor willing to donate?','A1','M = Marrow P = PBSCB = Both',58);
INSERT INTO `wmdadict_emdisfield` VALUES (79,'COLSAM_DATE1','Date sample collection, range start','D8','Date format YYYYMMDD',59);
INSERT INTO `wmdadict_emdisfield` VALUES (80,'COLSAM_DATE2','Date sample collection, range end','D8','Date format YYYYMMDD',60);
INSERT INTO `wmdadict_emdisfield` VALUES (81,'COND_DAYS','Number of days before the agreed upon transplantation date, when the conditioning of the patient will start','N2','Number of days',61);
INSERT INTO `wmdadict_emdisfield` VALUES (82,'CONF_DATE','Date of the confirmation of the workup request','D8','Date format YYYYMMDD',62);
INSERT INTO `wmdadict_emdisfield` VALUES (83,'CONFIRM','Result of donor reservation','A1','Y = SuccessfulN = Not successful',63);
INSERT INTO `wmdadict_emdisfield` VALUES (84,'D_CONTACT_DATE','Date of last confirmed contact with the donor','D8','Date format YYYYMMDD',64);
INSERT INTO `wmdadict_emdisfield` VALUES (85,'COUNTRY','Country','A2','ISO-3166 2 character country code',65);
INSERT INTO `wmdadict_emdisfield` VALUES (86,'CB_CT_COMPLETE_ DATE','Verification typing (CT) date of the cord blood unit. Definition: CT (Confirmatory Typing) is repeat DNA typing after registration. For the CT to be completed, loci A, B, and DRB1 must all be retested and confirmed consistent with registration typing. The CT completion date is the latest date when A, B, and DRB1 are all complete. If the loci are not all tested at the same time, this date will be the date the last locus was tested.','D8','Date format YYYYMMDD',66);
INSERT INTO `wmdadict_emdisfield` VALUES (87,'P_DIAG','Patient diagnosis','A3','AML = Acute Myelogenous Leukaemia ALL = Acute Lymphoblastic Leukaemia CML = Chronic Myelogenous Leukaemia OL  = Other LeukaemiaHL  = Hodgkin''s LymphomaMDS = Myelodysplastic DisordersNHL = Non-Hodgkin''s Lymphoma PCD = Plasma Cell DisorderOM = Other Malignancy HIS = Histiocytic DisordersIEA = Inherited Erythrocyte Abnormality IIS = Inherited Immune System Disorder IMD = Inherited Metabolic DisorderIPA = Inherited Platelet Abnormality SAA = Severe Aplastic Anaemia OND = Other Non-malignant Disease',67);
INSERT INTO `wmdadict_emdisfield` VALUES (88,'P_DIAG_DATE','Date of patient diagnosis','D8','Date format YYYYMMDD',68);
INSERT INTO `wmdadict_emdisfield` VALUES (89,'P_DIAG_TEXT','Additional explanatory text describing the diagnosis of the patient for P_DIAG codes OL, OM and OND','A50','Free form; see note 1 in the appendix',69);
INSERT INTO `wmdadict_emdisfield` VALUES (90,'P_DIS_PHA','Patient disease phase','A2','PI = Primary Induction Therapy PF = Primary Induction Failure Cn = n-th Complete Remission Nn = n-th Chronic PhasePn = n-th Partial Remission Rn = n-th RelapseAP = Accelerated Phase BC = Blast CrisisAD = Advanced Disease SD = Stable DiseaseRD = Refractory Disease NA = Not Applicable(n is a 1-digit numeric value; n=0 means unknown)',70);
INSERT INTO `wmdadict_emdisfield` VALUES (91,'CB_DNA_A1','CBU DNA-A, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',71);
INSERT INTO `wmdadict_emdisfield` VALUES (92,'D_DNA_A1','Donor DNA-A, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',71);
INSERT INTO `wmdadict_emdisfield` VALUES (93,'P_DNA_A1','Patient DNA-A, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',71);
INSERT INTO `wmdadict_emdisfield` VALUES (94,'CB_DNA_A2','CBU DNA-A, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',72);
INSERT INTO `wmdadict_emdisfield` VALUES (95,'D_DNA_A2','Donor DNA-A, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',72);
INSERT INTO `wmdadict_emdisfield` VALUES (96,'P_DNA_A2','Patient DNA-A, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',72);
INSERT INTO `wmdadict_emdisfield` VALUES (97,'DNA_AVA','CBU DNA available?','A1','Y = YesN = No',73);
INSERT INTO `wmdadict_emdisfield` VALUES (98,'CB_DNA_B1','CBU DNA-B, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',74);
INSERT INTO `wmdadict_emdisfield` VALUES (99,'D_DNA_B1','Donor DNA-B, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',74);
INSERT INTO `wmdadict_emdisfield` VALUES (100,'P_DNA_B1','Patient DNA-B, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',74);
INSERT INTO `wmdadict_emdisfield` VALUES (101,'CB_DNA_B2','CBU DNA-B, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',75);
INSERT INTO `wmdadict_emdisfield` VALUES (102,'D_DNA_B2','Donor DNA-B, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',75);
INSERT INTO `wmdadict_emdisfield` VALUES (103,'P_DNA_B2','Patient DNA-B, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',75);
INSERT INTO `wmdadict_emdisfield` VALUES (104,'CB_DNA_C1','CBU DNA-C, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',76);
INSERT INTO `wmdadict_emdisfield` VALUES (105,'D_DNA_C1','Donor DNA-C, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',76);
INSERT INTO `wmdadict_emdisfield` VALUES (106,'P_DNA_C1','Patient DNA-C, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',76);
INSERT INTO `wmdadict_emdisfield` VALUES (107,'CB_DNA_C2','CBU DNA-C, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',77);
INSERT INTO `wmdadict_emdisfield` VALUES (108,'D_DNA_C2','Donor DNA-C, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',77);
INSERT INTO `wmdadict_emdisfield` VALUES (109,'P_DNA_C2','Patient DNA-C, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',77);
INSERT INTO `wmdadict_emdisfield` VALUES (110,'CB_DNA_SMPL','CBU DNA samples available','A1','Y = Yes N = No',73);
INSERT INTO `wmdadict_emdisfield` VALUES (111,'CB_DPA11','CBU DNA-DPA1, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',78);
INSERT INTO `wmdadict_emdisfield` VALUES (112,'D_DPA11','Donor DNA-DPA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',78);
INSERT INTO `wmdadict_emdisfield` VALUES (113,'P_DPA11','Patient DNA-DPA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',78);
INSERT INTO `wmdadict_emdisfield` VALUES (114,'CB_DPA12','CBU DNA-DPA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',79);
INSERT INTO `wmdadict_emdisfield` VALUES (115,'D_DPA12','Donor DNA-DPA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',79);
INSERT INTO `wmdadict_emdisfield` VALUES (116,'P_DPA12','Patient DNA-DPA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',79);
INSERT INTO `wmdadict_emdisfield` VALUES (117,'CB_DPB11','CBU DNA-DPB1, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',80);
INSERT INTO `wmdadict_emdisfield` VALUES (118,'D_DPB11','Donor DNA-DPB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',80);
INSERT INTO `wmdadict_emdisfield` VALUES (119,'P_DPB11','Patient DNA-DPB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',80);
INSERT INTO `wmdadict_emdisfield` VALUES (120,'CB_DPB12','CBU DNA-DPB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',81);
INSERT INTO `wmdadict_emdisfield` VALUES (121,'D_DPB12','Donor DNA-DPB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',81);
INSERT INTO `wmdadict_emdisfield` VALUES (122,'P_DPB12','Patient DNA-DPB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',81);
INSERT INTO `wmdadict_emdisfield` VALUES (123,'CB_DQ1','CBU HLA-DQ, 1st antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',82);
INSERT INTO `wmdadict_emdisfield` VALUES (124,'D_DQ1','Donor HLA-DQ, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',82);
INSERT INTO `wmdadict_emdisfield` VALUES (125,'P_DQ1','Patient HLA-DQ, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',82);
INSERT INTO `wmdadict_emdisfield` VALUES (126,'CB_DQ2','CBU HLA-DQ, 2nd antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',83);
INSERT INTO `wmdadict_emdisfield` VALUES (127,'D_DQ2','Donor HLA-DQ, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',83);
INSERT INTO `wmdadict_emdisfield` VALUES (128,'P_DQ2','Patient HLA-DQ, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',83);
INSERT INTO `wmdadict_emdisfield` VALUES (129,'CB_DQA11','CBU DNA-DQA1, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',84);
INSERT INTO `wmdadict_emdisfield` VALUES (130,'D_DQA11','Donor DNA-DQA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',84);
INSERT INTO `wmdadict_emdisfield` VALUES (131,'P_DQA11','Patient DNA-DQA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',84);
INSERT INTO `wmdadict_emdisfield` VALUES (132,'CB_DQA12','CBU DNA-DQA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',85);
INSERT INTO `wmdadict_emdisfield` VALUES (133,'D_DQA12','Donor DNA-DQA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',85);
INSERT INTO `wmdadict_emdisfield` VALUES (134,'P_DQA12','Patient DNA-DQA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',85);
INSERT INTO `wmdadict_emdisfield` VALUES (135,'CB_DQB11','CBU DNA-DQB1, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',86);
INSERT INTO `wmdadict_emdisfield` VALUES (136,'D_DQB11','Donor DNA-DQB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',86);
INSERT INTO `wmdadict_emdisfield` VALUES (137,'P_DQB11','Patient DNA-DQB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',86);
INSERT INTO `wmdadict_emdisfield` VALUES (138,'CB_DQB12','CBU DNA-DQB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',87);
INSERT INTO `wmdadict_emdisfield` VALUES (139,'D_DQB12','Donor DNA-DQB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',87);
INSERT INTO `wmdadict_emdisfield` VALUES (140,'P_DQB12','Patient DNA-DQB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',87);
INSERT INTO `wmdadict_emdisfield` VALUES (141,'CB_DR1','CBU HLA-DR, 1st antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',88);
INSERT INTO `wmdadict_emdisfield` VALUES (142,'D_DR1','Donor HLA-DR, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',88);
INSERT INTO `wmdadict_emdisfield` VALUES (143,'P_DR1','Patient HLA-DR, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',88);
INSERT INTO `wmdadict_emdisfield` VALUES (144,'CB_DR2','CBU HLA-DR, 2nd antigen','A5','Values according to WHO nomenclature _ see note 2 in the appendix',89);
INSERT INTO `wmdadict_emdisfield` VALUES (145,'D_DR2','Donor HLA-DR, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',89);
INSERT INTO `wmdadict_emdisfield` VALUES (146,'P_DR2','Patient HLA-DR, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix',89);
INSERT INTO `wmdadict_emdisfield` VALUES (147,'CB_DRB11','CBU DNA-DRB1, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',90);
INSERT INTO `wmdadict_emdisfield` VALUES (148,'D_DRB11','Donor DNA-DRB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',90);
INSERT INTO `wmdadict_emdisfield` VALUES (149,'P_DRB11','Patient DNA-DRB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',90);
INSERT INTO `wmdadict_emdisfield` VALUES (150,'CB_DRB12','CBU DNA-DRB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',91);
INSERT INTO `wmdadict_emdisfield` VALUES (151,'D_DRB12','Donor DNA-DRB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',91);
INSERT INTO `wmdadict_emdisfield` VALUES (152,'P_DRB12','Patient DNA-DRB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',91);
INSERT INTO `wmdadict_emdisfield` VALUES (153,'CB_DRB31','CBU DNA-DRB3, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',92);
INSERT INTO `wmdadict_emdisfield` VALUES (154,'D_DRB31','Donor DNA-DRB3, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',92);
INSERT INTO `wmdadict_emdisfield` VALUES (155,'P_DRB31','Patient DNA-DRB3, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',92);
INSERT INTO `wmdadict_emdisfield` VALUES (156,'CB_DRB32','CBU DNA-DRB3, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',93);
INSERT INTO `wmdadict_emdisfield` VALUES (157,'D_DRB32','Donor DNA-DRB3, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',93);
INSERT INTO `wmdadict_emdisfield` VALUES (158,'P_DRB32','Patient DNA-DRB3, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',93);
INSERT INTO `wmdadict_emdisfield` VALUES (159,'CB_DRB41','CBU DNA-DRB4, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',94);
INSERT INTO `wmdadict_emdisfield` VALUES (160,'D_DRB41','Donor DNA-DRB4, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',94);
INSERT INTO `wmdadict_emdisfield` VALUES (161,'P_DRB41','Patient DNA-DRB4, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',94);
INSERT INTO `wmdadict_emdisfield` VALUES (162,'CB_DRB42','CBU DNA-DRB4, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',95);
INSERT INTO `wmdadict_emdisfield` VALUES (163,'D_DRB42','Donor DNA-DRB4, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',95);
INSERT INTO `wmdadict_emdisfield` VALUES (164,'P_DRB42','Patient DNA-DRB4, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',95);
INSERT INTO `wmdadict_emdisfield` VALUES (165,'CB_DRB51','CBU DNA-DRB5, 1st allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',96);
INSERT INTO `wmdadict_emdisfield` VALUES (166,'D_DRB51','Donor DNA-DRB5, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',96);
INSERT INTO `wmdadict_emdisfield` VALUES (167,'P_DRB51','Patient DNA-DRB5, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',96);
INSERT INTO `wmdadict_emdisfield` VALUES (168,'CB_DRB52','CBU DNA-DRB5, 2nd allele','A20','Values according to WHO nomenclature _ see note 2 in the appendix',97);
INSERT INTO `wmdadict_emdisfield` VALUES (169,'D_DRB52','Donor DNA-DRB5, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',97);
INSERT INTO `wmdadict_emdisfield` VALUES (170,'P_DRB52','Patient DNA-DRB5, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix',97);
INSERT INTO `wmdadict_emdisfield` VALUES (171,'CB_EBV','CBU EBV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',98);
INSERT INTO `wmdadict_emdisfield` VALUES (172,'D_EBV','Donor EBV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiateH = IgG positive, IgM not testedO = IgG negative, IgM not tested',98);
INSERT INTO `wmdadict_emdisfield` VALUES (173,'EMAIL','Email','A60','In the format Username@Domainname (i.e. Joe@Company.nl)',99);
INSERT INTO `wmdadict_emdisfield` VALUES (174,'CB_ETHN','CBU ethnic group','A4','AFNA = African: North Africa AFSS = African: Sub-Saharan AfricaASSW = Asian: Southwest Asia (Middle East, Turkey)ASSO = Asian: Southern Asia (India, Pakistan, Bangladesh, Sri Lanka, Bhutan, Nepal)ASCE = Asian: Central Asia (Eastern Russia, Kazakhstan, Uzbekistan, Kyrgyzstan, Tajikistan)ASSE = Asian: Southeast Asia (China, Mongolia, Burma, Laos, Cambodia, Thailand, Vietnam, Taiwan)ASNE = Asian: North and Northeast Asia (Japan, North Korea, South Korea)ASOC = Asian: Oceania (Pacific Islands excluding Japan, Australia, Taiwan, Sakhalin, Aleutian Islands) CAEU = Caucasian: Mainland Europe, Greenland, Iceland,   Western RussiaCAER = Caucasian: Eastern RussiaCANA = Caucasian: North America (USA, Canada, Mexico) CAAU = Caucasian: Australia (Australia, New Zealand)HICA = Hispanic: Central America, Caribbean HISA =  Hispanic: South AmericaMX = Mixed / multipleOT = Other (e.g. Australian Aborigine) UK = UnknownNOTE: all four character codes may be abbreviated to the first two characters',100);
INSERT INTO `wmdadict_emdisfield` VALUES (175,'D_ETHN','Donor ethnic group','A4','AFNA = African: North Africa AFSS = African: Sub-Sahara AfricaASSW = Asian: Southwest Asia (Middle East, Turkey)ASSO = Asian: Southern Asia (India, Pakistan, Bangladesh, Sri Lanka, Bhutan, Nepal)ASCE = Asian: Central Asia (Eastern Russia, Kazakhstan, Uzbekistan, Kyrgyzstan, Tajikistan)ASSE = Asian: Southeast Asia (China, Mongolia, Burma, Laos, Cambodia, Thailand, Vietnam, Taiwan)ASNE = Asian: North and Northeast Asia (Japan, North Korea, South Korea)ASOC = Asian: Oceania (Pacific Islands, excluding Japan, Australia, Taiwan, Sakhalin, Aleutian Islands)CAEU = Caucasian: Mainland Europe, Greenland, Iceland, Western RussiaCAER = Caucasian: Eastern RussiaCANA = Caucasian: North America (USA, Canada, Mexico) CAAU = Caucasian: Australia (Australia, New Zealand) HICA = Hispanic: Central America, CaribbeanHISA =  Hispanic: South America MX = Mixed / multipleOT = Other (e.g. Australian Aborigine) UK = UnknownNOTE: all four character codes may be abbreviated to the first two characters (i.e. AF = African, etc.)',100);
INSERT INTO `wmdadict_emdisfield` VALUES (176,'P_ETHN','Patient ethnic group','A4','AFNA = African: North Africa AFSS = African: Sub-Saharan AfricaASSW = Asian: Southwest Asia (Middle East, Turkey)ASSO = Asian: Southern Asia (India, Pakistan, Bangladesh, Sri Lanka, Bhutan, Nepal)ASCE = Asian: Central Asia (Eastern Russia, Kazakhstan, Uzbekistan, Kyrgyzstan, Tajikistan)ASSE = Asian: Southeast Asia (China, Mongolia, Burma, Laos, Cambodia, Thailand, Vietnam, Taiwan)ASNE = Asian: North and Northeast Asia (Japan, North Korea, South Korea)ASOC = Asian: Oceania (Pacific Islands excluding Japan, Australia, Taiwan, Sakhalin, Aleutian Islands)CAEU = Caucasian: Mainland Europe, Greenland, Iceland, Western RussiaCAER = Caucasian: Eastern RussiaCANA = Caucasian: North America (USA, Canada, Mexico) CAAU = Caucasian: Australia (Australia, New Zealand) HICA = Hispanic: Central America, CaribbeanHISA =  Hispanic: South America MX = Mixed / multipleOT = Other (e.g. Australian Aborigine) UK = UnknownNOTE: all four character codes may be abbreviated to the first two characters (i.e. AF = African, etc.)',100);
INSERT INTO `wmdadict_emdisfield` VALUES (177,'EXAM_DATE','Date physical examination','D8','Date format YYYYMMDD',101);
INSERT INTO `wmdadict_emdisfield` VALUES (178,'EXAM_OK','Result physical examination','A1','Y = Yes N = No',102);
INSERT INTO `wmdadict_emdisfield` VALUES (179,'EXPI_DATE','Date expiration of reservation','D8','Date format YYYYMMDD',103);
INSERT INTO `wmdadict_emdisfield` VALUES (180,'D_EXTR_DATE','Date of sample extraction','D8','Date format YYYYMMDD',104);
INSERT INTO `wmdadict_emdisfield` VALUES (181,'FAX','Fax number','A20','�+� followed by: International Access Code + Area Code + Subscriber number, separated by hyphens (i.e. �+21-72- 5124504�).',105);
INSERT INTO `wmdadict_emdisfield` VALUES (182,'P_FNAME','Patient first name','A30','See note 1 in the appendix',106);
INSERT INTO `wmdadict_emdisfield` VALUES (183,'CB_FREEZE_DATE','CBU freezing date','D8','Date format: YYYYMMDD',107);
INSERT INTO `wmdadict_emdisfield` VALUES (184,'CB_FREEZE_METH','CBU freezing method','A1','C = Controlled Rate M = Manual',108);
INSERT INTO `wmdadict_emdisfield` VALUES (185,'CB_FUNG_CULT','Fungal culture','A1','P = Positive N = Negative D = Not done',109);
INSERT INTO `wmdadict_emdisfield` VALUES (186,'P_GRAF_ID','Grafting physician identification','A10','Unique value that represents the Transplant Centre physician of the patient',110);
INSERT INTO `wmdadict_emdisfield` VALUES (187,'GRID','Global registration identifier for donors','A19','Nineteen character identifier. The donor identifier element must follow the following rules:Only numeric and upper case alpha characters permitted (A-Z, 0-9).  Space and punctuation characters are not permitted. (It is recommended to avoid the letters O and I in the identifier to avoid confusion with the digits 0 and 1)Fixed length, 15 characters.  If the donor identifier used by the registry is less than 15 characters then it must be padded with leading zeros.Further details can be found on: https://collaboration.wmda.info/display/ITWG/GRID+Concept',111);
INSERT INTO `wmdadict_emdisfield` VALUES (188,'GVH_REAC','Graft vs. Host reactivity','N3','Percentage as a round number (i.e. 30 for 30%)',112);
INSERT INTO `wmdadict_emdisfield` VALUES (189,'CB_HBS_AG','CBU Hepatitis B status (hepatitis B surface antigen)','A1','P = Positive N = Negative',113);
INSERT INTO `wmdadict_emdisfield` VALUES (190,'D_HBS_AG','Donor Hepatitis B status (hepatitis B surface antigen)','A1','P = Positive N = NegativeQ = Questionable/Uncertain',113);
INSERT INTO `wmdadict_emdisfield` VALUES (191,'CB_HBV_NAT','CBU HBV NAT status','A1','P = Positive N = Negative',114);
INSERT INTO `wmdadict_emdisfield` VALUES (192,'CB_HCV_NAT','CBU HCV NAT status','A1','P = Positive N = Negative',115);
INSERT INTO `wmdadict_emdisfield` VALUES (193,'D_HEIGHT','Donor height','N3','In centimetres',116);
INSERT INTO `wmdadict_emdisfield` VALUES (194,'CB_HEMO_STATUS','Hemoglobinopathy screening status','A2','DN = Screening done, normal results DU = Screening done, unusual  findings NS = No screening doneCD = Can be done at time of release NC = Cannot be doneDT = Thalassemia DD =  Drepanocytosis',117);
INSERT INTO `wmdadict_emdisfield` VALUES (195,'D_HIV','Donor HIV status','A1','P = Positive N = NegativeQ = Questionable/Uncertain',118);
INSERT INTO `wmdadict_emdisfield` VALUES (196,'CB_HIV_1_NAT','CBU HIV-1 NAT status','A1','P = Positive N = Negative',119);
INSERT INTO `wmdadict_emdisfield` VALUES (197,'CB_HIV_P24','CBU HIV p24 status','A1','P = Positive N = Negative',120);
INSERT INTO `wmdadict_emdisfield` VALUES (198,'D_HIV_P24','Donor HIV p24 status','A1','P = Positive N = NegativeQ = Questionable/Uncertain',120);
INSERT INTO `wmdadict_emdisfield` VALUES (199,'HLA_NOM_VER','Major version of the HLA Nomenclature in use[1]','A7','2 = Version 2.x 3 = Version 3.x',121);
INSERT INTO `wmdadict_emdisfield` VALUES (200,'CB_HTLV','CBU HTLV status','A1','P = Positive N = Negative',28);
INSERT INTO `wmdadict_emdisfield` VALUES (201,'HUB_COUNT','Number of donors of the registry with the given HLA phenotype','N5','',122);
INSERT INTO `wmdadict_emdisfield` VALUES (202,'HUB_RCV','Registry receiving the message.','A3','EMDIS hub codes _ see [2] for assigned codes',123);
INSERT INTO `wmdadict_emdisfield` VALUES (203,'HUB_SND','Registry sending the message.','A3','EMDIS hub codes _ see [2] for assigned codes',124);
INSERT INTO `wmdadict_emdisfield` VALUES (204,'HVG_REAC','Host vs. Graft reactivity','N3','Percentage as a round number (i.e. 30 for 30%)',125);
INSERT INTO `wmdadict_emdisfield` VALUES (205,'CB_ID','The unit identification assigned by the hub. It may be the same as the local ID (CB_LOCAL_ID)','A17','EMDIS hub code + National donor identification',126);
INSERT INTO `wmdadict_emdisfield` VALUES (206,'D_ID','Donor identification','A17','EMDIS hub code + National donor identification',127);
INSERT INTO `wmdadict_emdisfield` VALUES (207,'P_ID','Patient identification','A17','EMDIS hub code + National patient identification',128);
INSERT INTO `wmdadict_emdisfield` VALUES (208,'INFO_DATE','Date information session','D8','Date format YYYYMMDD',129);
INSERT INTO `wmdadict_emdisfield` VALUES (209,'INFO_TYPE','Information type','A3','BMP = Donor only available for bone marrow donation for  personal reasonsBMM = donor only available for bone marrow donation for  medical reasonsSCP = donor only available for PBSC donation for personal  reasonsSCM = donor only available for PBSC donation for medical  reasonsABS = (absent) donor not available for a certain period of  timeMUL = MultidonationUBC = donor unavailable after blood collectionRPE = increased risk that donor is declined during physical  examinationCMV = additional information regarding CMV statusROI = donor was in a region with a higher risk of infectionMED = other medical informationOTH = other non-medical information',130);
INSERT INTO `wmdadict_emdisfield` VALUES (210,'INST_ID','Institution identification','A10','EMDIS hub code + Local Id.',131);
INSERT INTO `wmdadict_emdisfield` VALUES (211,'INST_MARR_SENT','Institution receiving the bone marrow or cord blood unit','A10','EMDIS hub code + Local Id.',132);
INSERT INTO `wmdadict_emdisfield` VALUES (212,'INST_PAY','Institution paying','A10','EMDIS hub code + Local Id.',133);
INSERT INTO `wmdadict_emdisfield` VALUES (213,'INST_SMP_SENT','Institution receiving sample (�ship-to� address)','A10','EMDIS hub code + Local Id.',132);
INSERT INTO `wmdadict_emdisfield` VALUES (214,'INST_TYPE','Institution type','A3','HUB = EMDIS HubDON = Donor centre TRA = Transplant centre HAR = Harvesting centre LAB = Typing laboratory FIN = Financial institution CBB = Cord Blood Bank',134);
INSERT INTO `wmdadict_emdisfield` VALUES (215,'CB_KIR_GL','URI to a GL-String or GL-string for absence/presence for KIR typing results.','A255','URI that refers to a GL-string registered with a GL-service or direct GL-string for absence / presence. Field is not used at the moment and should therefore always be empty.',135);
INSERT INTO `wmdadict_emdisfield` VALUES (216,'D_KIR_GL','URI to a GL-String or GL-string for absence/presence for KIR typing results.','A255','URI that refers to a GL-string registered with a GL-service or direct GL-string for absence / presence. Field is not used at the moment and should therefore always be empty.',135);
INSERT INTO `wmdadict_emdisfield` VALUES (217,'CB_KIR2DL1','CBU KIR gene 2DL1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',136);
INSERT INTO `wmdadict_emdisfield` VALUES (218,'D_KIR2DL1','Donor KIR gene 2DL1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',136);
INSERT INTO `wmdadict_emdisfield` VALUES (219,'CB_KIR2DL2','CBU KIR gene 2DL2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',137);
INSERT INTO `wmdadict_emdisfield` VALUES (220,'D_KIR2DL2','Donor KIR gene 2DL2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',137);
INSERT INTO `wmdadict_emdisfield` VALUES (221,'CB_KIR2DL3','CBU KIR gene 2DL3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',138);
INSERT INTO `wmdadict_emdisfield` VALUES (222,'D_KIR2DL3','Donor KIR gene 2DL3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',138);
INSERT INTO `wmdadict_emdisfield` VALUES (223,'CB_KIR2DL4','CBU KIR gene 2DL4','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',139);
INSERT INTO `wmdadict_emdisfield` VALUES (224,'D_KIR2DL4','Donor KIR gene 2DL4','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',139);
INSERT INTO `wmdadict_emdisfield` VALUES (225,'CB_KIR2DL5A','CBU KIR gene 2DL5A','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',140);
INSERT INTO `wmdadict_emdisfield` VALUES (226,'D_KIR2DL5A','Donor KIR gene 2DL5A','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',140);
INSERT INTO `wmdadict_emdisfield` VALUES (227,'CB_KIR2DL5B','CBU KIR gene 2DL5B','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',141);
INSERT INTO `wmdadict_emdisfield` VALUES (228,'D_KIR2DL5B','Donor KIR gene 2DL5B','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',141);
INSERT INTO `wmdadict_emdisfield` VALUES (229,'CB_KIR2DP1','CBU KIR gene 2DP1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',142);
INSERT INTO `wmdadict_emdisfield` VALUES (230,'D_KIR2DP1','Donor KIR gene 2DP1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',142);
INSERT INTO `wmdadict_emdisfield` VALUES (231,'CB_KIR2DS1','CBU KIR gene 2DS1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',143);
INSERT INTO `wmdadict_emdisfield` VALUES (232,'D_KIR2DS1','Donor KIR gene 2DS1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',143);
INSERT INTO `wmdadict_emdisfield` VALUES (233,'CB_KIR2DS2','CBU KIR gene 2DS2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',144);
INSERT INTO `wmdadict_emdisfield` VALUES (234,'D_KIR2DS2','Donor KIR gene 2DS2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',144);
INSERT INTO `wmdadict_emdisfield` VALUES (235,'CB_KIR2DS3','CBU KIR gene 2DS3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',145);
INSERT INTO `wmdadict_emdisfield` VALUES (236,'D_KIR2DS3','Donor KIR gene 2DS3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',145);
INSERT INTO `wmdadict_emdisfield` VALUES (237,'CB_KIR2DS4','CBU KIR gene 2DS4','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',146);
INSERT INTO `wmdadict_emdisfield` VALUES (238,'D_KIR2DS4','Donor KIR gene 2DS4','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',146);
INSERT INTO `wmdadict_emdisfield` VALUES (239,'CB_KIR2DS5','CBU KIR gene 2DS5','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',147);
INSERT INTO `wmdadict_emdisfield` VALUES (240,'D_KIR2DS5','Donor KIR gene 2DS5','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',147);
INSERT INTO `wmdadict_emdisfield` VALUES (241,'CB_KIR3DL1','CBU KIR gene 3DL1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',148);
INSERT INTO `wmdadict_emdisfield` VALUES (242,'D_KIR3DL1','Donor KIR gene 3DL1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',148);
INSERT INTO `wmdadict_emdisfield` VALUES (243,'CB_KIR3DL2','CBU KIR gene 3DL2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',149);
INSERT INTO `wmdadict_emdisfield` VALUES (244,'D_KIR3DL2','Donor KIR gene 3DL2','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',149);
INSERT INTO `wmdadict_emdisfield` VALUES (245,'CB_KIR3DL3','CBU KIR gene 3DL3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',150);
INSERT INTO `wmdadict_emdisfield` VALUES (246,'D_KIR3DL3','Donor KIR gene 3DL3','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',150);
INSERT INTO `wmdadict_emdisfield` VALUES (247,'CB_KIR3DP1','CBU KIR gene 3DP1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',151);
INSERT INTO `wmdadict_emdisfield` VALUES (248,'D_KIR3DP1','Donor KIR gene 3DP1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',151);
INSERT INTO `wmdadict_emdisfield` VALUES (249,'CB_KIR3DS1','CBU KIR gene 3DS1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',152);
INSERT INTO `wmdadict_emdisfield` VALUES (250,'D_KIR3DS1','Donor KIR gene 3DS1','A255','POS = Presence of KIR geneNEG = Absence of KIR gene',152);
INSERT INTO `wmdadict_emdisfield` VALUES (251,'D_LABEL_ID','Verbatim CT sample label ID','A19','Free form; see note 1 in the appendix',153);
INSERT INTO `wmdadict_emdisfield` VALUES (252,'P_LNAME','Patient last name','A30','See note 1 in the appendix',154);
INSERT INTO `wmdadict_emdisfield` VALUES (253,'CB_LOCAL_ID','The identification of the CBU locally at the cord blood bank','A17','',155);
INSERT INTO `wmdadict_emdisfield` VALUES (254,'MARKER','In the IDM_REQ message the values in this field indicates the infectious disease markers to be tested. In the IDM_RES message the values in this field reflects the infectious disease markers that were tested.','B13','Binary fixed length string in which each position represents a test to be requested:Position 1: Blood group and rhesus Position 2: CMV statusPosition 3: ToxoplasmosisPosition 4: EBV Position 5: HIV status Position 6: HIV P24Position 7: Hepatitis B surface antigenPosition 8: Antibody to Hepatitis B surface antigen Position 9: Antibody to Hepatitis B core antigen Position 10: Antibody to Hepatitis C virusPosition 11: Lues status (Treponema pallidum) Position 12: ALT statusPosition 13: Antibody to HTLV1.V2',156);
INSERT INTO `wmdadict_emdisfield` VALUES (255,'MARR_DATE','Date marrow collection','D8','Date format YYYYMMDD',157);
INSERT INTO `wmdadict_emdisfield` VALUES (256,'MARROW_TU_REQ','Number of marrow tubes requested','N2','',158);
INSERT INTO `wmdadict_emdisfield` VALUES (257,'CB_MAT_A1','Maternal HLA-A, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',159);
INSERT INTO `wmdadict_emdisfield` VALUES (258,'CB_MAT_A2','Maternal HLA-A, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',160);
INSERT INTO `wmdadict_emdisfield` VALUES (259,'CB_MAT_AL_PLA','Number of plasma maternal aliquots','N2','',161);
INSERT INTO `wmdadict_emdisfield` VALUES (260,'CB_MAT_AL_SER','Number of serum maternal aliquots','N2','',162);
INSERT INTO `wmdadict_emdisfield` VALUES (261,'CB_MAT_ANTI_HBC','Maternal Hepatitis B status (antibody to hepatitis B core antigen)','A1','P = Positive N = Negative',24);
INSERT INTO `wmdadict_emdisfield` VALUES (262,'CB_MAT_ANTI_HBS','Maternal Hepatitis B status (maternal Anti HBs)','A1','P = Positive N = Negative',163);
INSERT INTO `wmdadict_emdisfield` VALUES (263,'CB_MAT_ANTI_HCV','Maternal Hepatitis C status (antibody to hepatitis C virus)','A1','P = Positive N = Negative',26);
INSERT INTO `wmdadict_emdisfield` VALUES (264,'CB_MAT_ANTI_HIV_12','Maternal Anti-HIV 1/2 status','A1','P = Positive N = Negative',27);
INSERT INTO `wmdadict_emdisfield` VALUES (265,'CB_MAT_B1','Maternal HLA-B, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',164);
INSERT INTO `wmdadict_emdisfield` VALUES (266,'CB_MAT_B2','Maternal HLA-B, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',165);
INSERT INTO `wmdadict_emdisfield` VALUES (267,'CB_MAT_C1','Maternal HLA-C, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',166);
INSERT INTO `wmdadict_emdisfield` VALUES (268,'CB_MAT_C2','Maternal HLA-C, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',167);
INSERT INTO `wmdadict_emdisfield` VALUES (269,'CB_MAT_CHAGAS','Maternal Chagas status','A1','P = Positive N = Negative',49);
INSERT INTO `wmdadict_emdisfield` VALUES (270,'CB_MAT_CMV','Maternal CMV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',53);
INSERT INTO `wmdadict_emdisfield` VALUES (271,'CB_MAT_CMV_NAT','Maternal CMV NAT status','A1','P = Positive N = Negative',55);
INSERT INTO `wmdadict_emdisfield` VALUES (272,'CB_MAT_DNA_A1','Maternal DNA-A, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',168);
INSERT INTO `wmdadict_emdisfield` VALUES (273,'CB_MAT_DNA_A2','Maternal DNA-A, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',169);
INSERT INTO `wmdadict_emdisfield` VALUES (274,'CB_MAT_DNA_B1','Maternal DNA-B, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',170);
INSERT INTO `wmdadict_emdisfield` VALUES (275,'CB_MAT_DNA_B2','Maternal DNA-B, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',171);
INSERT INTO `wmdadict_emdisfield` VALUES (276,'CB_MAT_DNA_C1','Maternal DNA-C, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',172);
INSERT INTO `wmdadict_emdisfield` VALUES (277,'CB_MAT_DNA_C2','Maternal DNA-C, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',173);
INSERT INTO `wmdadict_emdisfield` VALUES (278,'CB_MAT_DPA11','Maternal DNA-DPA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',174);
INSERT INTO `wmdadict_emdisfield` VALUES (279,'CB_MAT_DPA12','Maternal DNA-DPA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',175);
INSERT INTO `wmdadict_emdisfield` VALUES (280,'CB_MAT_DPB11','Maternal DNA-DRB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',176);
INSERT INTO `wmdadict_emdisfield` VALUES (281,'CB_MAT_DPB12','Maternal DNA-DRB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',177);
INSERT INTO `wmdadict_emdisfield` VALUES (282,'CB_MAT_DQ1','Maternal HLA-DQ, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',178);
INSERT INTO `wmdadict_emdisfield` VALUES (283,'CB_MAT_DQ2','Maternal HLA-DQ, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',179);
INSERT INTO `wmdadict_emdisfield` VALUES (284,'CB_MAT_DQA11','Maternal DNA-DQA1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',180);
INSERT INTO `wmdadict_emdisfield` VALUES (285,'CB_MAT_DQA12','Maternal DNA-DQA1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',181);
INSERT INTO `wmdadict_emdisfield` VALUES (286,'CB_MAT_DQB11','Maternal DNA-DQB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',182);
INSERT INTO `wmdadict_emdisfield` VALUES (287,'CB_MAT_DQB12','Maternal DNA-DQB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',183);
INSERT INTO `wmdadict_emdisfield` VALUES (288,'CB_MAT_DR1','Maternal HLA-DR, 1st antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',184);
INSERT INTO `wmdadict_emdisfield` VALUES (289,'CB_MAT_DR2','Maternal HLA-DR, 2nd antigen','A5','Values according to WHO nomenclature _ see note 3 in the appendix.',185);
INSERT INTO `wmdadict_emdisfield` VALUES (290,'CB_MAT_DRB11','Maternal DNA-DRB1, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',186);
INSERT INTO `wmdadict_emdisfield` VALUES (291,'CB_MAT_DRB12','Maternal DNA-DRB1, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',187);
INSERT INTO `wmdadict_emdisfield` VALUES (292,'CB_MAT_DRB31','Maternal DNA-DRB3, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',188);
INSERT INTO `wmdadict_emdisfield` VALUES (293,'CB_MAT_DRB32','Maternal DNA-DRB3, 2st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',189);
INSERT INTO `wmdadict_emdisfield` VALUES (294,'CB_MAT_DRB41','Maternal DNA-DRB4, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',190);
INSERT INTO `wmdadict_emdisfield` VALUES (295,'CB_MAT_DRB42','Maternal DNA-DRB4, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',191);
INSERT INTO `wmdadict_emdisfield` VALUES (296,'CB_MAT_DRB51','Maternal DNA-DRB5, 1st allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',192);
INSERT INTO `wmdadict_emdisfield` VALUES (297,'CB_MAT_DRB52','Maternal DNA-DRB5, 2nd allele','A20','Values according to WHO nomenclature _ see note 3 in the appendix.',193);
INSERT INTO `wmdadict_emdisfield` VALUES (298,'CB_MAT_EBV','Maternal EBV status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',98);
INSERT INTO `wmdadict_emdisfield` VALUES (299,'CB_MAT_HBS_AG','Maternal Hepatitis B status (hepatitis B surface antigen)','A1','P = Positive N = Negative',113);
INSERT INTO `wmdadict_emdisfield` VALUES (300,'CB_MAT_HBV_NAT','Maternal HBV NAT status','A1','P = Positive N = Negative',114);
INSERT INTO `wmdadict_emdisfield` VALUES (301,'CB_MAT_HCV_NAT','Maternal HCV NAT status','A1','P = Positive N = Negative',115);
INSERT INTO `wmdadict_emdisfield` VALUES (302,'CB_MAT_HIV_1_NAT','Maternal HIV-1 NAT status','A1','P = Positive N = Negative',119);
INSERT INTO `wmdadict_emdisfield` VALUES (303,'CB_MAT_HIV_P24','Maternal HIV p24 status','A1','P = Positive N = Negative',120);
INSERT INTO `wmdadict_emdisfield` VALUES (304,'CB_MAT_HTLV','Maternal HTLV status','A1','P = Positive N = Negative',28);
INSERT INTO `wmdadict_emdisfield` VALUES (305,'CB_MAT_ID','The identification of the maternal donor as assigned by the hub. It may be the same as the local ID (CB_BANK_MAT_ID)','A15','Local ID',40);
INSERT INTO `wmdadict_emdisfield` VALUES (306,'CB_MAT_PB19_NAT','Maternal ParvoB19 NAT status','A1','P = Positive N = Negative',195);
INSERT INTO `wmdadict_emdisfield` VALUES (307,'CB_MAT_PLA_QUANT','Total quantity of maternal plasma available','R4','In millilitres; valid range 0.0 to 99.9 ml',196);
INSERT INTO `wmdadict_emdisfield` VALUES (308,'MAT_SER_AVA','Maternal serum available for CBU?','A1','Y = Yes N = No',197);
INSERT INTO `wmdadict_emdisfield` VALUES (309,'CB_MAT_SER_QUANT','Total quantity of maternal serum available','R4','In millilitres; valid range 0.0 to 99.9 ml',198);
INSERT INTO `wmdadict_emdisfield` VALUES (310,'MAT_SER_QUANT','Quantity of maternal serum for CBU','N2','In millilitres',198);
INSERT INTO `wmdadict_emdisfield` VALUES (311,'CB_MAT_SYPHILIS','Maternal Syphilis status','A1','P = Positive N = Negative',199);
INSERT INTO `wmdadict_emdisfield` VALUES (312,'CB_MAT_TOXO','Maternal Toxoplasmosis status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',200);
INSERT INTO `wmdadict_emdisfield` VALUES (313,'CB_MAT_WNV','Maternal West Nile Virus (WNV) status','A1','P = Positive N = Negative',201);
INSERT INTO `wmdadict_emdisfield` VALUES (314,'P_MATCH_AB','Matching preference for HLA-A, and -B typed adult donors','A30','See section 4.1.1 of the EMDIS Semantics',202);
INSERT INTO `wmdadict_emdisfield` VALUES (315,'P_MATCH_CB','Matching preference for cord blood units','A30','See section 4.1.1 of the EMDIS Semantics',203);
INSERT INTO `wmdadict_emdisfield` VALUES (316,'MATCH_DATE','Date phenotype list was generated','D8','Date format YYYYMMDD',204);
INSERT INTO `wmdadict_emdisfield` VALUES (317,'P_MATCH_DR','Matching preference for HLA-A, -B and -DR typed adult donors','A30','See section 4.1.1 of the EMDIS Semantics',205);
INSERT INTO `wmdadict_emdisfield` VALUES (318,'P_MAX_DON_AB','Maximum number of HLA-A, and -B typed donors','N4','Default value is 0',206);
INSERT INTO `wmdadict_emdisfield` VALUES (319,'P_MAX_DON_CB','Maximum number of cord blood units','N4','Default value is 0',207);
INSERT INTO `wmdadict_emdisfield` VALUES (320,'P_MAX_DON_DR','Maximum number of HLA-A, -B and -DR typed donors','N4','Default value is 0',208);
INSERT INTO `wmdadict_emdisfield` VALUES (321,'MIN_VOL_MARR','Estimated minimal volume of marrow','N4','In millilitres',209);
INSERT INTO `wmdadict_emdisfield` VALUES (322,'MLC_GVH','Result MLC, Graft vs. Host','A1','P = Positive N = Negative',210);
INSERT INTO `wmdadict_emdisfield` VALUES (323,'MLC_HVG','Result MLC, Host vs. Graft','A1','P = Positive N = Negative',211);
INSERT INTO `wmdadict_emdisfield` VALUES (324,'CB_MONO_NC','Collected total number of mononucleated cells','F7','Cells expressed in scientific notation; valid range 0.0E0 to 999.9E7',212);
INSERT INTO `wmdadict_emdisfield` VALUES (325,'MONO_NC_KG','Number of mononucleated cells per kg for recipient','F7','Cells expressed in scientific notation',213);
INSERT INTO `wmdadict_emdisfield` VALUES (326,'MSG_CODE','Code operation of erroneous message','A10','',214);
INSERT INTO `wmdadict_emdisfield` VALUES (327,'NBT1','Number of tubes for the first product','N2','See note 2 in the appendix',215);
INSERT INTO `wmdadict_emdisfield` VALUES (328,'NBT1_ATCOL','Number of tubes for the first product at collection','N2','See note 2 in the appendix',216);
INSERT INTO `wmdadict_emdisfield` VALUES (329,'NBT1_BEFCOL','Number of tubes for the first product before collection','N2','See note 2 in the appendix',217);
INSERT INTO `wmdadict_emdisfield` VALUES (330,'NBT2','Number of tubes for the second product','N2','See note 2 in the appendix',215);
INSERT INTO `wmdadict_emdisfield` VALUES (331,'NBT2_ATCOL','Number of tubes for the second product at collection','N2','See note 2 in the appendix',216);
INSERT INTO `wmdadict_emdisfield` VALUES (332,'NBT2_BEFCOL','Number of tubes for the second product before collection','N2','See note 2 in the appendix',217);
INSERT INTO `wmdadict_emdisfield` VALUES (333,'NBT3','Number of tubes for the third product','N2','See note 2 in the appendix',215);
INSERT INTO `wmdadict_emdisfield` VALUES (334,'NBT3_ATCOL','Number of tubes for the third product at collection','N2','See note 2 in the appendix',216);
INSERT INTO `wmdadict_emdisfield` VALUES (335,'NBT3_BEFCOL','Number of tubes for the third product before collection','N2','See note 2 in the appendix',217);
INSERT INTO `wmdadict_emdisfield` VALUES (336,'NBT4','Number of tubes for the fourth product','N2','See note 2 in the appendix',215);
INSERT INTO `wmdadict_emdisfield` VALUES (337,'NBT4_ATCOL','Number of tubes for the fourth product at collection','N2','See note 2 in the appendix',216);
INSERT INTO `wmdadict_emdisfield` VALUES (338,'NBT4_BEFCOL','Number of tubes for the fourth product before collection','N2','See note 2 in the appendix',217);
INSERT INTO `wmdadict_emdisfield` VALUES (339,'CB_NC','Collected total number of nucleated cells','F7','Cells expressed in scientific notation; valid range 0.0E0 to 999.9E7',218);
INSERT INTO `wmdadict_emdisfield` VALUES (340,'CB_NC_FRZN','Processed total number of nucleated cells (post processing and pre-cryopreservation)','F7','Cells expressed in scientific notation; valid range 0.0E0 to 999.9E7',219);
INSERT INTO `wmdadict_emdisfield` VALUES (341,'NC_KG','Number of nucleated cells per kilo for recipient','F7','Cells expressed in scientific notation',220);
INSERT INTO `wmdadict_emdisfield` VALUES (342,'NC_RESEA','Number of nucleated cells for research','F7','Cells expressed in scientific notation',221);
INSERT INTO `wmdadict_emdisfield` VALUES (343,'P_NEW_STAT','New patient state','A3','PRE = Preliminary Search ACT = ActiveSUS = Suspended STP = Stopped',222);
INSERT INTO `wmdadict_emdisfield` VALUES (344,'D_NMBR_MARR','Number of marrow donations','N1','',223);
INSERT INTO `wmdadict_emdisfield` VALUES (345,'D_NMBR_PBSC','Number of PBSC donations','N1','',223);
INSERT INTO `wmdadict_emdisfield` VALUES (346,'D_NMBR_PREG','Donor number of pregnancies','N1','',224);
INSERT INTO `wmdadict_emdisfield` VALUES (347,'D_NMBR_TRANS','Donor number of blood transfusions','N1','',225);
INSERT INTO `wmdadict_emdisfield` VALUES (348,'P_OLD_STAT','Old patient state','A3','PRE = Preliminary Search ACT = ActiveSUS = Suspended STP = Stopped',226);
INSERT INTO `wmdadict_emdisfield` VALUES (349,'ORG_DEN','Origin of denial','A20','Where the message was rejected',227);
INSERT INTO `wmdadict_emdisfield` VALUES (350,'CB_OTH_SMPL','Other type samples available (other than DNA)','A1','Y = Yes N = No',228);
INSERT INTO `wmdadict_emdisfield` VALUES (351,'PARAM','Parameter for ACTION','A50','There are currently no valid values defined; if this (optional) field is included in the ADMIN message, its value should be left blank (�� or �?�)',229);
INSERT INTO `wmdadict_emdisfield` VALUES (352,'PAT_POOL','Physical location of the patient','A2','Two character ISO country code (i.e. US, DE, IT)',230);
INSERT INTO `wmdadict_emdisfield` VALUES (353,'CB_PB19_NAT','CBU ParvoB19 NAT status','A1','P = Positive N = Negative',195);
INSERT INTO `wmdadict_emdisfield` VALUES (354,'PBSC_COLL_DATE1','First PBSC collection date','D8','YYYYMMDD',157);
INSERT INTO `wmdadict_emdisfield` VALUES (355,'PBSC_COLL_DATE2','Second PBSC collection date','D8','YYYYMMDD',157);
INSERT INTO `wmdadict_emdisfield` VALUES (356,'PBSC_GCSF_DATE','Start G-CSF date','D8','YYYYMMDD',231);
INSERT INTO `wmdadict_emdisfield` VALUES (357,'PERSON','Contact person','A40','Free form; see note 1 in the appendix',232);
INSERT INTO `wmdadict_emdisfield` VALUES (358,'PHONE','Phone number','A20','�+� followed by: International Access Code + Area Code + Subscriber number, separated by hyphens (i.e. �+21-72- 5124504�)',233);
INSERT INTO `wmdadict_emdisfield` VALUES (359,'CB_PLA_QUANT','Total quantity of CBU plasma available','R4','In millilitres; valid range 0.0 to 99.9 ml',234);
INSERT INTO `wmdadict_emdisfield` VALUES (360,'DON_POOL','Physical location of the donor','N4','ION, i.e. 6939. See [3]',235);
INSERT INTO `wmdadict_emdisfield` VALUES (361,'PRECOLL_DATE','Date arrival pre-collection','D8','Date format YYYYMMDD',236);
INSERT INTO `wmdadict_emdisfield` VALUES (362,'CB_PROC_DATE','CBU Processing start date','D8','Date format: YYYYMMDD',237);
INSERT INTO `wmdadict_emdisfield` VALUES (363,'CB_PROC_METH','Processing methods','A3','HES = Hydroxy-Ethyl-StarchDGS = Density Gradient Separation CEN = CentrifugeFIL = Filtration FIC = FICOL PER = PERCOLOTH = Other',238);
INSERT INTO `wmdadict_emdisfield` VALUES (364,'CB_PROC_METH_TYPE','Processing method type','A3','MAN = Manual SPX = SepaxOTP = Optipress II AXP = AXPOTH = Other',239);
INSERT INTO `wmdadict_emdisfield` VALUES (365,'CB_PROD_MOD','Product modifications','A3','BCE = Buffy Coat Enriched DNE = Density EnrichedPLR = Plasma Reduced (Volume reduction only)PRR = Plasma and RBC ReducedRBR = RBC Reduced (depletion) NOT = Not reducedOTH = Other',240);
INSERT INTO `wmdadict_emdisfield` VALUES (366,'PROD1','First product required','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, DNA[2], MAT_SERUM1',215);
INSERT INTO `wmdadict_emdisfield` VALUES (367,'PROD1_ATCOL','First product at collection','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED',216);
INSERT INTO `wmdadict_emdisfield` VALUES (368,'PROD1_BEFCOL','First pre-collection product','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, MAT_SERUM1',217);
INSERT INTO `wmdadict_emdisfield` VALUES (369,'PROD2','Second product required','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, DNA1, MAT_SERUM1',215);
INSERT INTO `wmdadict_emdisfield` VALUES (370,'PROD2_ATCOL','Second product at collection','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED',216);
INSERT INTO `wmdadict_emdisfield` VALUES (371,'PROD2_BEFCOL','Second pre-collection product','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, MAT_SERUM1',217);
INSERT INTO `wmdadict_emdisfield` VALUES (372,'PROD3','Third product required','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, DNA1, MAT_SERUM1',215);
INSERT INTO `wmdadict_emdisfield` VALUES (373,'PROD3_ATCOL','Third product at collection','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED',216);
INSERT INTO `wmdadict_emdisfield` VALUES (374,'PROD3_BEFCOL','Third pre-collection product','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, MAT_SERUM1',217);
INSERT INTO `wmdadict_emdisfield` VALUES (375,'PROD4','Fourth product required','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, DNA[3], MAT_SERUM1',215);
INSERT INTO `wmdadict_emdisfield` VALUES (376,'PROD4_ATCOL','Fourth product at collection','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED',216);
INSERT INTO `wmdadict_emdisfield` VALUES (377,'PROD4_BEFCOL','Fourth pre-collection product','A10','EDTA, ACD, CPD, HEPARIN, CLOTTED, MAT_SERUM1',217);
INSERT INTO `wmdadict_emdisfield` VALUES (378,'PROP_DATE','Proposed date for marrow collection / CBU shipment','D8','Date format YYYYMMDD',241);
INSERT INTO `wmdadict_emdisfield` VALUES (379,'QU1','First product quantity per tube (see also NBTx)','N4','In millilitres',215);
INSERT INTO `wmdadict_emdisfield` VALUES (380,'QU2','Second product quantity per tube (see also NBTx)','N4','In millilitres',215);
INSERT INTO `wmdadict_emdisfield` VALUES (381,'QU3','Third product quantity per tube (see also NBTx)','N4','In millilitres',215);
INSERT INTO `wmdadict_emdisfield` VALUES (382,'QU4','Fourth product quantity per tube (see also NBTx)','N4','In millilitres',215);
INSERT INTO `wmdadict_emdisfield` VALUES (383,'QUANT1_ATCOL','Quantity of first product at collection per tube (see also NBTx_ATCOL)','N4','In millilitres',216);
INSERT INTO `wmdadict_emdisfield` VALUES (384,'QUANT1_BEFCOL','Quantity of first pre-collection product per tube (see also NBTx_BEFCOL)','N4','In millilitres',217);
INSERT INTO `wmdadict_emdisfield` VALUES (385,'QUANT2_ATCOL','Quantity of second product at collection per tube (see also NBTx_ATCOL)','N4','In millilitres',216);
INSERT INTO `wmdadict_emdisfield` VALUES (386,'QUANT2_BEFCOL','Quantity of second pre-collection product per tube (see also NBTx_BEFCOL)','N4','In millilitres',217);
INSERT INTO `wmdadict_emdisfield` VALUES (387,'QUANT3_ATCOL','Quantity of third product at collection per tube (see also NBTx_ATCOL)','N4','In millilitres',216);
INSERT INTO `wmdadict_emdisfield` VALUES (388,'QUANT3_BEFCOL','Quantity of third pre-collection product per tube (see also NBTx_BEFCOL)','N4','In millilitres',217);
INSERT INTO `wmdadict_emdisfield` VALUES (389,'QUANT4_ATCOL','Quantity of fourth product at collection per tube (see also NBTx_ATCOL)','N4','In millilitres',216);
INSERT INTO `wmdadict_emdisfield` VALUES (390,'QUANT4_BEFCOL','Quantity of fourth pre-collection product per tube (see also NBTx_BEFCOL)','N4','In millilitres',217);
INSERT INTO `wmdadict_emdisfield` VALUES (391,'REASON','Reason why a service cannot be performed','A3','For transplant centre (TC) to donor centre (DC):BCC = Clinical condition of patient deteriorated (i.e. Relapse) FND = Other / better donor foundLAB = Laboratory problem / Typing failed / Not enough sample NSP = No sample receivedOLD = Sample too oldPDC = Patient deceased before request was completed STP = Search stoppedTRX = Patient already transplantedOTH = Other reasonFor donor centre (DC) to transplant centre (TC):DO = Donor is too old DD = Donor diedMR = Medical reasons PR = Personal reasons TX = After transplantation MO = Donor has movedUC = Unable to contact donorNS = No sample available (for CBU�s only) OT = Other reasonsUK = Unknown EX = ExpiredMM = HLA mismatch',242);
INSERT INTO `wmdadict_emdisfield` VALUES (392,'REASON_CHNG','Reason for patient status change','A3','ATX = Autologous TransplantationRMT = BMSC Transplantation with related donor[4]UMT = BMSC Transplantation with unrelated donor[1]RCT = CBSC Transplantation with related CBU[1]UCT = CBSC Transplantation with unrelated CBU[1]RPT = PBSC Transplantation with related donor[1]UPT = PBSC Transplantation with unrelated donor[1]GCC = Good clinical condition of patient (i.e. remission)BCC = Clinical condition of patient deteriorated (i.e. relapse) PDC = Patient deceased before transplantationPAT = Patient responds to alternative therapyPPR = Patient withdrawal (non medical, personal reasons)ICH = Transplantation indication changed (i.e. wrong diagnosis) FND = Other / better donor foundNDF = No suitable donor found NPH = Send new phenotype list NML = Send new match listRCM = Send new phenotype list and new match list (complete match list)OTH = Other reason UNK = Unknown reason',243);
INSERT INTO `wmdadict_emdisfield` VALUES (393,'REASON_CNCL','Reason for request cancellation','A3','ATX = Autologous TransplantationRMT = BMSC Transplantation with related donor[1]UMT = BMSC Transplantation with unrelated donor[1] RCT = CBSC Transplantation with related CBU[1]UCT = CBSC Transplantation with unrelated CBU[1]RPT = PBSC Transplantation with related donor[1]UPT = PBSC Transplantation with unrelated donor[1]GCC = Good clinical condition of patient (i.e. remission) BCC = Clinical condition of patient deteriorated (i.e. relapse) PDC = Patient deceased before transplantationPAT = Patient responds to alternative therapyPPR = Patient withdrawal (non medical, personal reasons)ICH = Transplantation indication changed (i.e. wrong diagnosis) FND = Other / better donor foundNDF = No suitable donor found COR = Correction of request HMM = HLA mismatchDRR = Donor related reason OTH = Other reasonUNK = Unknown reason',244);
INSERT INTO `wmdadict_emdisfield` VALUES (394,'REC_DATE1','Earliest date of sample reception','D8','Date format YYYYMMDD',245);
INSERT INTO `wmdadict_emdisfield` VALUES (395,'REC_DATE2','Latest date of sample reception','D8','Date format YYYYMMDD',246);
INSERT INTO `wmdadict_emdisfield` VALUES (396,'CB_RED_BC','Total nucleated red blood cell count (post processing and pre-cryopreservation) reflecting the content of the final product that is frozen','F7','Expressed in scientific notation; valid range 0.0E0 to 999.9E7',247);
INSERT INTO `wmdadict_emdisfield` VALUES (397,'CB_REDUCTION','Method of volume reduction','A3','HES = Hydroxy-Ethyl-StarchDGS = Density Gradient Separation CEN = CentrifugeFIL = Filtration FIC = FICOL PER = PERCOLNOT = Not reduced OTH = OtherUNK = Unknown',248);
INSERT INTO `wmdadict_emdisfield` VALUES (398,'REF_CODE','Reference code','A15','',249);
INSERT INTO `wmdadict_emdisfield` VALUES (399,'REG_RCV','Receiving EMDIS registry','N4','ION (i.e. 6939) of receiving EMDIS registry. See [3].',250);
INSERT INTO `wmdadict_emdisfield` VALUES (400,'REG_SND','Sending EMDIS registry','N4','ION (i.e. 6939) of sending EMDIS registry. See [3].',251);
INSERT INTO `wmdadict_emdisfield` VALUES (401,'REMARK','Remark','A120','Free form; see note 1 in the appendix',252);
INSERT INTO `wmdadict_emdisfield` VALUES (402,'REMARK (SMP_INFO)','Remark','A255','Free form, see note1 in the appendix',252);
INSERT INTO `wmdadict_emdisfield` VALUES (403,'REQ_DATE','Request date','D8','Date format YYYYMMDD',254);
INSERT INTO `wmdadict_emdisfield` VALUES (404,'REQ_TYPE','Type of request','A3','ALM = Alternative Match List (ALM) request BLS = Blood sample requestCBR = Cord Blood Unit ReportIDM = Infectious disease marker request RSV = Donor reservation requestTYP = Typing requestWOR = Workup request (stem cell donor, PBSC, DLI, or CBU)',255);
INSERT INTO `wmdadict_emdisfield` VALUES (405,'RES_TYPE','Type of result reminded','A9','ALM_RES = Alternative match list request result CBR_RES = Cord Blood Unit Report request result IDM_RES = Infectious disease marker request result MARR_STAT = Workup request resultRSV_RES = Donor reservation request result SMP_ARR = Sample request arrival notification SMP_RES = Sample request resultTYP_RES = Typing request result',256);
INSERT INTO `wmdadict_emdisfield` VALUES (406,'RESOLUT','Resolution required','A11','Character string with fixed length in which each position represents a HLA locus. The coding of the resolution required for every position is:�S� = serological�L� = DNA low resolution�M� = DNA medium resolution �H� = DNA high resolution�-� (hyphen) = not requestedThe character string is interpreted from left to right, with position 1 as the leftmost position. The positions for the HLA loci are defined as:Position 1: HLA-APosition 2: HLA-BPosition 3: HLA-CPosition 4: HLA-DRB1Position 5: HLA-DRB3Position 6: HLA-DRB4Position 7: HLA-DRB5Position 8: HLA-DQA1Position 9: HLA-DQB1Position 10: HLA-DPA1Position 11: HLA-DPB1',257);
INSERT INTO `wmdadict_emdisfield` VALUES (407,'CB_SAMPLE_TYPE','CT Sample type','A2','AS = CBU Contiguous Attached Segment WB = Whole Blood SampleRC = Red Cell Fraction (pellet) FP = Blood Spotted Filter Paper ED = Extracted DNA',258);
INSERT INTO `wmdadict_emdisfield` VALUES (408,'SEND_PREF','Preferred sending method of CBU report','A1','E = E-mail F = Fax',259);
INSERT INTO `wmdadict_emdisfield` VALUES (409,'SENT_DATE','Date text message was sent','D8','Date format YYYYMMDD',260);
INSERT INTO `wmdadict_emdisfield` VALUES (410,'CB_SER_QUANT','Total volume of CBU serum available','R4','In millilitres; valid range 0.0 to 99.9 ml',261);
INSERT INTO `wmdadict_emdisfield` VALUES (411,'CB_SEX','CBU sex','A1','M = MaleF = Female',262);
INSERT INTO `wmdadict_emdisfield` VALUES (412,'D_SEX','Donor sex','A1','M = MaleF = Female',262);
INSERT INTO `wmdadict_emdisfield` VALUES (413,'P_SEX','Patient sex','A1','M = MaleF = Female',262);
INSERT INTO `wmdadict_emdisfield` VALUES (414,'CB_STAT_END_DATE','Status valid until specified date (e.g. assigned if the unit is temporarily unavailable)','D8','Date format YYYYMMDD',263);
INSERT INTO `wmdadict_emdisfield` VALUES (415,'D_STAT_END_DATE','Donor status valid until specified date','D8','Date format YYYYMMDD',264);
INSERT INTO `wmdadict_emdisfield` VALUES (416,'CB_STAT_REASON','Reason for status change','A2','Proposed reasons for Status TU: QR = Quarantined;AD = AdministrativeProposed reasons for Status DE: CD = Cord Destroyed or Damaged; MR = Medical reasonsDS = Distributed for infusion;OT = Unavailable for other reasons; XP = ExpiredProposed additional information for AV:NS = No sample available (can''t do additional testing, but could ship)',265);
INSERT INTO `wmdadict_emdisfield` VALUES (417,'D_STAT_REASON','Reason of donor status change','A2','DO = Donor is too old DD = Donor diedMR = Medical reasons PR = Personal reasons TX = After transplantation MO = Donor has movedUC = Unable to contact donorNS = no sample available (for CBU�s only) OT = Other reasonsTQ = Typing questionable UK = Unknown',265);
INSERT INTO `wmdadict_emdisfield` VALUES (418,'CB_STATUS','Status (used to determine unit availability)','A2','AV = Available for transplantation purposes TU = Temporarily unavailableRE = ReservedDE = Deleted, permanently unavailable',266);
INSERT INTO `wmdadict_emdisfield` VALUES (419,'D_STATUS','Donor status','A2','AV = Available for transplantation purposesTU = Temporarily unavailable, specified in D_STAT_REASON OP = Donor is reserved for another patientDE = Donor deleted, specified in D_STAT_REASONRS = Donor is reserved for the patient the donor was reported for',266);
INSERT INTO `wmdadict_emdisfield` VALUES (420,'CB_SYPHILIS','CBU Syphilis status','A1','P = Positive N = Negative',199);
INSERT INTO `wmdadict_emdisfield` VALUES (421,'TOTAL_AB','Total number of matching AB typed stem cell donors','N5','',267);
INSERT INTO `wmdadict_emdisfield` VALUES (422,'TOTAL_CB','Total number of matching cord blood units','N5','',268);
INSERT INTO `wmdadict_emdisfield` VALUES (423,'TOTAL_DR','Total number of matching ABDR typed stem cell donors','N5','',269);
INSERT INTO `wmdadict_emdisfield` VALUES (424,'CB_TOXO','CBU Toxoplasmosis status','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negativeM = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',200);
INSERT INTO `wmdadict_emdisfield` VALUES (425,'D_TOXO','Donor Toxoplasmosis','A1','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',200);
INSERT INTO `wmdadict_emdisfield` VALUES (426,'D_TPHA','Donor Lues status (Treponema pallidum)','A1','P = Positive N = NegativeQ = Questionable/Uncertain',270);
INSERT INTO `wmdadict_emdisfield` VALUES (427,'TRNS_MEDIUM','Transport medium for marrow','A10','RPMI, HANKS, OTH, NOPREF',271);
INSERT INTO `wmdadict_emdisfield` VALUES (428,'TRX_DATE','Date of the transplantation','D8','Date format YYYYMMDD',272);
INSERT INTO `wmdadict_emdisfield` VALUES (429,'TXT_LINEn','Line of text','A60','Free form; n = 1..20; see note 1 in the appendix',273);
INSERT INTO `wmdadict_emdisfield` VALUES (430,'CB_TYP_BAG','Type of bag used (CBU bag fractions / split unit)','A5','80/2050/5040/60NS = No split',274);
INSERT INTO `wmdadict_emdisfield` VALUES (431,'D_TYPE','�Stem cell donor� or �Cord blood unit�','A1','C = Cord Blood Unit D = Stem Cell Donor',275);
INSERT INTO `wmdadict_emdisfield` VALUES (432,'URGENT','Urgent request','A1','Y = YesN = No (default)',276);
INSERT INTO `wmdadict_emdisfield` VALUES (433,'CB_VIABILITY','Viability for collected total nucleated cells countViability of CB_VIABILITY_CELLS','N3','Percentage',277);
INSERT INTO `wmdadict_emdisfield` VALUES (434,'CB_VIABILITY_CELLS','Type of cells tested for viability','A4','TNCCD34CD45',278);
INSERT INTO `wmdadict_emdisfield` VALUES (435,'CB_VIABILITY_DATE','Date viability was tested','D8','Date format YYYYMMDD',279);
INSERT INTO `wmdadict_emdisfield` VALUES (436,'CB_VIABILITY_METHOD','Method used to calculate the viability','A2','7A = 7AADPI = Propidium IodideTB = Trypan BlueOT = Other',280);
INSERT INTO `wmdadict_emdisfield` VALUES (437,'VIROL_DATE','Date virology','D8','Date format YYYYMMDD',281);
INSERT INTO `wmdadict_emdisfield` VALUES (438,'VIROL_OK','Result virology','A1','P = Positive N = NegativeQ = Questionable / Uncertain',282);
INSERT INTO `wmdadict_emdisfield` VALUES (439,'CB_VOL','CBU collected volume before processing (without additives)','R5','In millilitres; format: ###.#; valid range 10.0 to 999.9 ml; Either CB_VOL or CB_VOL_FRZN is required',283);
INSERT INTO `wmdadict_emdisfield` VALUES (440,'CB_VOL_FRZN','Total CBU volume frozen (post processing and pre-cryopreservation)','R5','In millilitres; format: ###.#; valid range 10.0 to 999.9 ml; Either CB_VOL or CB_VOL_FRZN is required',284);
INSERT INTO `wmdadict_emdisfield` VALUES (441,'D_WEIGHT','Donor weight','N3','In kilos',285);
INSERT INTO `wmdadict_emdisfield` VALUES (442,'P_WEIGHT','Patient weight','N3','In kilos',285);
INSERT INTO `wmdadict_emdisfield` VALUES (443,'CB_WNV','CBU West Nile Virus (WNV) status','A1','P = Positive N = Negative',201);
INSERT INTO `wmdadict_emdisfield` VALUES (444,'WOR_REQ_TYPE','Workup request type - preferred','A4','PBSC = Request a PBSC collectionSCD = Request the workup of a stem cell donor CBU = Request a cord blood unitDLI = Donor Leukocyte Infusion',286);
INSERT INTO `wmdadict_emdisfield` VALUES (445,'ZIP','ZIP Code','A10','Free form; see note 1 in the appendix',287);
CREATE TABLE "wmdadict_dictionaryfield_user_families" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "dictionaryfield_id" integer NOT NULL REFERENCES "wmdadict_dictionaryfield" ("id"), "datafamily_id" integer NOT NULL REFERENCES "wmdadict_datafamily" ("id"));
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (1,3,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (2,4,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (3,5,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (4,6,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (5,24,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (6,26,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (7,27,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (8,28,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (9,31,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (10,33,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (11,34,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (12,39,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (13,43,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (14,44,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (15,45,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (16,46,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (17,47,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (18,49,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (19,55,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (20,71,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (21,72,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (22,74,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (23,75,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (24,76,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (25,77,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (26,78,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (27,79,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (28,80,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (29,81,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (30,82,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (31,83,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (32,84,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (33,85,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (34,86,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (35,87,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (36,88,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (37,89,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (38,90,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (39,91,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (40,92,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (41,93,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (42,94,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (43,95,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (44,96,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (45,97,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (46,159,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (47,160,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (48,164,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (49,165,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (50,166,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (51,167,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (52,168,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (53,169,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (54,170,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (55,171,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (56,172,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (57,173,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (58,174,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (59,175,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (60,176,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (61,177,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (62,178,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (63,179,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (64,180,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (65,181,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (66,182,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (67,183,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (68,184,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (69,185,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (70,186,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (71,187,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (72,188,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (73,189,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (74,190,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (75,191,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (76,192,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (77,193,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (78,201,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (79,53,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (80,98,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (81,118,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (82,119,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (83,120,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (84,199,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (85,100,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (86,113,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (87,114,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (88,115,1);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (89,25,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (90,50,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (91,53,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (92,54,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (93,98,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (94,100,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (95,101,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (96,102,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (97,103,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (98,104,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (99,106,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (100,111,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (101,113,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (102,114,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (103,115,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (104,116,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (105,118,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (106,119,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (107,120,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (108,122,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (109,129,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (110,130,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (111,153,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (112,157,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (113,199,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (114,215,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (115,216,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (116,217,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (117,223,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (118,231,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (119,235,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (120,3,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (121,4,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (122,24,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (123,26,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (124,27,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (125,28,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (126,33,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (127,34,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (128,43,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (129,44,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (130,45,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (131,71,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (132,72,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (133,74,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (134,75,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (135,76,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (136,77,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (137,78,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (138,79,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (139,80,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (140,81,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (141,82,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (142,83,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (143,84,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (144,85,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (145,86,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (146,87,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (147,88,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (148,89,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (149,90,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (150,91,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (151,92,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (152,93,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (153,94,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (154,95,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (155,96,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (156,97,3);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (157,42,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (158,61,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (159,67,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (160,68,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (161,69,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (162,70,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (163,73,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (164,154,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (165,5,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (166,6,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (167,100,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (168,106,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (169,113,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (170,114,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (171,115,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (172,116,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (173,3,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (174,4,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (175,33,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (176,34,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (177,43,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (178,44,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (179,53,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (180,71,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (181,72,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (182,74,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (183,75,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (184,76,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (185,77,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (186,78,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (187,79,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (188,80,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (189,81,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (190,82,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (191,83,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (192,84,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (193,85,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (194,86,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (195,87,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (196,88,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (197,89,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (198,90,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (199,91,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (200,92,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (201,93,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (202,94,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (203,95,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (204,96,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (205,97,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (206,98,6);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (207,99,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (208,135,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (209,136,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (210,137,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (211,138,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (212,139,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (213,140,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (214,141,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (215,142,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (216,143,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (217,144,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (218,145,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (219,146,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (220,147,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (221,148,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (222,149,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (223,150,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (224,151,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (225,152,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (226,224,4);
INSERT INTO `wmdadict_dictionaryfield_user_families` VALUES (227,225,4);
CREATE TABLE "wmdadict_dictionaryfield" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "label" varchar(200) NOT NULL UNIQUE, "description_short" varchar(200) NOT NULL, "description_long" text NOT NULL, "units" varchar(200) NOT NULL, "range" varchar(200) NOT NULL, "values" varchar(200) NOT NULL, "owner_family_id" integer NOT NULL REFERENCES "wmdadict_datafamily" ("id"), "field_type" varchar(1) NOT NULL);
INSERT INTO `wmdadict_dictionaryfield` VALUES (1,'Collected CD34+','Collected total number of CD34+ cells','','10^6','0 to 999.9 x 10^6','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (2,'Processed CD34+','Processed total number of CD34+ cells. Post processing and pre-cryopreservation.','','10^6','0 to 999.9 x 10^6','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (3,'HLA A (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (4,'HLA A (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (5,'Blood Group (ABO)','Blood Group (ABO)','','','','A, B, AB, O',3,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (6,'Blood Group (Rhesus)','Blood Group (Rhesus)','','','','Positive, Negative',3,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (7,'Acceptable sample reception days','A list of (multiple) weekdays on which sample can be received. Used for sample requests.','','','','Monday, Tuesday etc.(At least 1 up to all allowed)',4,'M');
INSERT INTO `wmdadict_dictionaryfield` VALUES (8,'Donor still of interest','At VT, when reporting the HLA results to the DC the TC indicates whether they are still interested in the donor','','','','Yes, No',4,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (9,'CBB Accreditation','The current accreditation status of the Cord Blood Bank','','','','NetCord-FACTAABB(Zero, One or Mulitple allowed)',1,'M');
INSERT INTO `wmdadict_dictionaryfield` VALUES (10,'Receipt acknowledgement','Acknowledgment sent to the sender of a request  usually Hub to Hub','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (11,'ACK_ID','EMDIS message only, not in WMDA data dictionary','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (12,'ACTION','EMDIS message only, not in WMDA data dictionary','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (13,'First line of address','The first line of an address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (14,'Second line of address','The second line of an address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (15,'Third line address','The third line of an address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (16,'CBU plasma aliquots','Number of plasma aliquots available for testing','','(Count)','0 to 99','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (17,'CBU red cell aliquots','Number of red cell aliquots available for testing','','(Count)','0 to 99','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (18,'CBU serum aliquots','Number of serum aliquots available for testing','','(Count)','0 to 99','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (19,'Donor ALT status','Result of donor alanine aminotransferase test','','Units per litre (u/L)','','',5,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (20,'Preferred date (collection/shipment) 2','Transplant centre collection/shipment date preference','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (21,'Preferred date (collection/shipment) 3','Transplant centre collection/shipment date preference','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (22,'ALTER_REQ_TYPE','Not used see Product request','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (23,'Required Anticoagulant','Type of anticoagulant','','','','ACD, Heparin, EDTA',4,'M');
INSERT INTO `wmdadict_dictionaryfield` VALUES (24,'Anti-HBc','Antibody to Hepatitis B core antigen','','','','Postive, Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (25,'HBs Ag','Antibody to Hepatitis B surface antigen','','','','Postive, Negative, Questionable',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (26,'Anti HCV','Antibody to Hepatitis C virus','','','','Positive, Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (27,'Anti-HIV 1 and Anti-HIV 2','Anti HIV 1/2 Status','','','','Positive, Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (28,'Anti-HTLV I/II','Anti HTLV Status','','','','Postive, Negative, Questionable',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (29,'Scheduled delivery date','Sample Arrival date','','','Must be in the future','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (30,'Contigous/attached segments','Number of attached segments available for a CBU','','','0 to 99','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (31,'Donor Attribute','The individual donor attribute assignment as determined by the registry''s national rules (for GRID implementation)','','','','',3,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (32,'Donor Autologous Unit','Refers to an autologous blood donation made by a donor prior to HPC(M) collection. Used any more?','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (33,'HLA-B (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (34,'HLA-B (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (35,'Microbial Screen(bacteria)','Bacterial culture','','','','Positive, Negative, not done',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (36,'CBU Bag ID','The identification as it appears on the bag.','','','','',1,'F');
INSERT INTO `wmdadict_dictionaryfield` VALUES (37,'Number of CBU bags','Number of bags for the cord blood sub units','','','0 to 99','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (38,'Cord Blood Bank','Identifying information of the CBB','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (39,'Cord Blood Bank Manufacturing ID','The ID of the bank that manufactured the unit','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (40,'Maternal ID','The identification used to identify the maternal donor','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (41,'CBU birth date','Birth date of infant ( see CBU Collection date). EMDIS message only','','','Must be in the past','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (42,'Date of Birth','Birth date','','','Must be in the past','',3,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (43,'HLA-C (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (44,'HLA-C (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (45,'CCR5','C-C chemokine receptor type 5 status','','','','DD = Deletion (delta 32) - homozygousDW = Deletion (delta 32) / wildtype - heterozygousWW = Wildtype - homozygous',2,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (46,'Required CD34+/kg','Requested number of CD34+ cells per kilo for recipient','','10^6','0 to 999.9 x 10^6/kg','',3,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (47,'Required CD3+/kg','Requested number of CD3+ cells per kilo for recipient','','10^6','0 to 999.9 x 10^6/kg','',3,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (48,'Total colony forming units (CFU)','Total CFU post processing count (post processing and pre-cryopreservation). GM method','','10^4','0 to 999.9 x 10^4','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (49,'Chagas Screen','Chagas status','','','','Postive, Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (50,'Donor Checkup date','Date of last medical checkup','','','Must be in past','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (51,'City Address','The city of an address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (52,'Donor Clearance date','Date donor clearance is confirmed','','','Must be in past','',3,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (53,'Cytomegalovirus (CMV)','CMV status','','','','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (54,'CMV Test Date','Date CMV tested','','','Must be in past','',5,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (55,'CMV DNA PCR','CMV DNA PCR status','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (56,'CBU Collection Date','Date CBU was collected','','','Must be in past','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (57,'Sample Collection Date','Date of donor sample collection','','','','',3,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (58,'Donor product preference','Donor''s preferred donation method ( not on any WMDA forms, only Emdis but should it be included?)','','','','M = Marrow P = PBSCB = Both',3,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (59,'Earliest Sample Collection Date','Earliest','','','','',3,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (60,'Latest Sample Collection Date','EMDIS message only, not in WMDA data dictionary. Workup request for future implementation','','','','',3,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (61,'Total number of days of conditioning regimen','The number of condititioning days the patient will have prior to transplantation','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (62,'Work up request confirmation date','EMDIS message only, not in WMDA data dictionary.','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (63,'CONFIRM','EMDIS message only, not in WMDA data dictionary.','','','','Y = SuccessfulN = Not successful',7,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (64,'Donor contact date','Date of last confirmed contact with the donor.','','','Must be in past','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (65,'Country','The country of an address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (66,'CBU verification typing date','Need to define what constitutes VT ( current FACT standards?) Date verification typing was completed','','','','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (67,'Patient Diagnosis','Diagnosis of the patient','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (68,'Patient Diagnosis date','Date of patient diagnosis','','','Must be in past','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (69,'Diagnosis details','Additional explanatory text describing diagnosis of the patient','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (70,'Disease stage','Patient disease stage ( not on WMDA forms, should be?)','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (71,'HLA A (1st allele)','DNA-A, 1st allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (72,'HLA A (2nd allele)','DNA-A, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (73,'Cord Blood Unit DNA sample','Cord blood unit DNA sample that may be available for shipment','','','','Y =yesN = No',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (74,'HLA B (1st allele)','DNA-B, 1st allele .Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (75,'HLA B (2nd allele)','DNA-B, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (76,'HLAC (1st allele)','DNA-C, 1st allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (77,'HLAC (2nd allele)','DNA-C, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (78,'HLA DPA1 (1st allele)','DNA-DPA1, 1st allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (79,'HLA DPA1 (2nd allele)','DNA-DPA1, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (80,'HLA DPB1 (1st allele)','DNA-DPB1, 1st allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (81,'HLA DPB1 (2nd allele)','DNA-DPB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (82,'HLA-DQB1 (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (83,'HLA-DQB1 (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (84,'HLA DQA1 (1st allele)','DNA-DQA1, 1st allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (85,'HLA DQA1 (2nd allele)','DNA-DQA1, 2nd allele. Values according to WHO nomenclature','','','','',2,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (86,'HLA-DQB1 (1st allele)','DNA-DQB1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (87,'HLA-DQB1 (2nd allele)','DNA-DQB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (88,'HLA-DRB1 (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (89,'HLA-DRB1 (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (90,'HLA-DRB1 (1st allele)','DNA-DRB1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (91,'HLA-DRB1 (2nd allele)','DNA-DRB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (92,'HLA-DRB3 (1st allele)','DNA-DRB3, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (93,'HLA-DRB3 (2nd allele)','DNA-DRB3, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (94,'HLA-DRB4 (1st allele)','DNA-DRB4, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (95,'HLA-DRB4 (2nd allele)','DNA-DRB4, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (96,'HLA-DRB5 (1st allele)','DNA-DRB5, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (97,'HLA-DRB5 (2nd allele)','DNA-DRB5, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (98,'Epstein Barr Virus (EBV) Status','','','','','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (99,'Email','email address, generally for an organisation, can be any format','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (100,'Ethnicity','Ethnic goupf the donor,CBU, patient','','','','',2,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (101,'Physical Examination Date','Date of donor physical exam','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (102,'Physical Examination Result','Indicates  whether a donor passed their physical examination at workup. A component of donor clearance.','','','','',4,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (103,'Reservation Expiry date','Date reservation of donor or CBU expires','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (104,'Date of sample collection','Blood sample collection date','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (105,'Fax Number','Fax number, usually of an organisation','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (106,'First name','Given name of an individual','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (107,'CBU cyropreservation date','Date CBU cyropreserved','','','Must be in past','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (108,'CBU cyropreservation method','Method of CBU cyropreservation','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (109,'CBU microbial fungal screen','CBU fungal culture result','','','','P = Positive N = Negative D = Not done',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (110,'Transplant physician','Patient''s transplant physician','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (111,'GRID','Global registration identification for donors','','','19','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (112,'GVH_REAC','EMDIS message only, not in WMDA data dictionary','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (113,'Hepatitis B sufrace antigen','Hepatitis B surface antigen result','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (114,'HBV NAT','Hepatitis B nucleic acid amplification technique result','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (115,'HCV NAT','Hepatitis C nucleic acid amplification technique result','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (116,'Height','Height measured in centimetres','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (117,'Hemoglobinopathy screen','Hemoglobinopathy screening status','','','','DN = Screening done, normal results DU = Screening done, unusual  findings NS = No screening doneCD = Can be done at time of release NC = Cannot be doneDT = Thalassemia DD =  Drepanocytosis',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (118,'Anti-HIV 1/ Anti-HIV 2','Donor HIVantibody test result','','','','P = Positive N = NegativeQ = Questionable/Uncertain',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (119,'HIV-1 NAT','HIV nucleic acid amplification technique result','','','','P = Positive N = NegativeQ = Questionable/Uncertain',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (120,'HIV p24','HIV p24 antigen screening test result','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (121,'HLA Nomenclature Version','CurrentHLA nomenclature version','','','','',2,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (122,'Preliminary Search Results','Number of donors potentially matched to a patient''s HLA genotype','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (123,'Receiving registry Hub','Receiving registry','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (124,'Sending registry hub','Sending registry','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (125,'HVG_REAC','EMDIS message only, not in WMDA data dictionary','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (126,'Cord Blood Unit Identification','CBU identification','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (127,'Donor Identification ( to be replaced by GRID)','Donor Idenitification assigned by donor registry','','','','',3,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (128,'Patient Identification','Patient identification assigned by patient registry','','','','',6,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (129,'Donor information session','Date of donor information session usually done after donor requested for collection.','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (130,'Donor information','EMDIS message only currently. Informationabout the donor that is conveyed to the TC at time of verification typing sample appointment.','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (131,'Institution','Identification of an institution, usually refers to a receiving or sending regsitry.','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (132,'Receiving institution','Institution receiving a product ( sample, HPC)','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (133,'Invoice institution','institution responsible for paying, usually requesting TC or registry','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (134,'Institution type','EMDIS message only, not in WMDA data dictionary.','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (135,'Killer immunoglobulin- like receptor (KIR) GL string','URI to a GL-String or GL-string for absence/presence for KIR typing results.','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (136,'KIR gene 2DL1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (137,'KIR gene 2DL2','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (138,'KIR gene 2DL3','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (139,'KIR gene 2DL4','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (140,'KIR gene 2DL5A','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (141,'KIR gene 2DL5B','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (142,'CBU KIR gene 2DP1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (143,'CBU KIR gene 2DS1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (144,'CBU KIR gene 2DS2','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (145,'CBU KIR gene 2DS3','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (146,'CBU KIR gene 2DS4','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (147,'CBU KIR gene 2DS5','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (148,'CBU KIR gene 3DL1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (149,'CBU KIR gene 3DL2','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (150,'CBU KIR gene 3DL3','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (151,'CBU KIR gene 3DP1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (152,'CBU KIR gene 3DS1','Killer immunoglobulin- like receptor (KIR)','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (153,'ID on sample label','ID as it''s written on a donor sample ( usually a VT sample)','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (154,'Last name','Surname of an individual','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (155,'Local ID of a cord blood unit','The identification of the CBU locally at the cord blood bank','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (156,'Infectious Disease Marker','Indicates the infectious disease marker tested','','','','',5,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (157,'Collection Date','Agreed upon collection date for HPC','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (158,'MARROW_TU_REQ','Relevant? Requested Marrow tubes?','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (159,'Maternal HLA A (1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (160,'Maternal HLA A (2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (161,'Maternal plasma aliquots','Number of available maternal plasma aliquots','','','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (162,'Maternal serum aliquots','Number of available maternal serum aliquots','','','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (163,'Hepatitis B antibodies','Antibodies to Hepatitis B','','','','',5,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (164,'Maternal HLA B(1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (165,'Maternal HLA B(2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (166,'Maternal HLA C(1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (167,'Maternal HLA C(2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (168,'Maternal HLA A (1st alelle)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (169,'Maternal HLA A( 2nd allele)','DNA-A, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (170,'Maternal HLA B(1st allele)','DNA-B, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (171,'Maternal HLA B(2nd allele)','DNA-B, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (172,'Maternal HLA C(1st allele)','DNA-C, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (173,'Maternal HLA C(2nd allele)','DNA-C, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (174,'Maternal HLA DPA1(1st allele)','DNA-DPA1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (175,'Maternal HLA DPA1 (2nd allele)','DNA-DPA1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (176,'Maternal HLA DPB1(1st allele)','DNA-DPB1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (177,'Maternal HLA DPB1(2nd allele)','DNA-DPB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (178,'Maternal HLA DQB1(1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (179,'Maternal HLA DQB1(2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (180,'Maternal HLA DQA1(1st allele)','DNA-DQA1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (181,'Maternal HLA DQA1(2nd allele)','DNA-DQA1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (182,'Maternal HLA DQB1(1st allele)','DNA-DQB1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (183,'Maternal HLA DQB1(2nd allele)','DNA-DQB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (184,'Maternal HLA DRB1(1st antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (185,'Maternal HLA DRB1(2nd antigen)','"mesured by serology - serology must have been tested, must not be a computed value','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (186,'Maternal HLA DRB1 (1st allele)','DNA-DRB1, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (187,'Maternal HLA DRB1 (2nd allele)','DNA-DRB1, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (188,'Maternal HLA DRB3(1st allele)','DNA-DRB3, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (189,'Maternal HLA DRB3(2nd allele)','DNA-DRB3, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (190,'Maternal HLA DRB4(1st allele)','DNA-DRB4, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (191,'Maternal HLA DRB4(2nd allele)','DNA-DRB3, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (192,'Maternal HLA DRB5(1st allele)','DNA-DRB5, 1st allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (193,'Maternal HLA DRB5(2nd allele)','DNA-DRB5, 2nd allele. Values according to WHO nomenclature','','','','',2,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (195,'Parvo-B19 PCR','ParvoB19 NAT status','','','','P = Positive N = Negative',1,'');
INSERT INTO `wmdadict_dictionaryfield` VALUES (196,'Maternal Plasma available','Quantity of maternal plasma available','','','In millilitres; valid range 0.0 to 99.9 ml','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (197,'Maternal serum available','','','','','Y = Yes N = No',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (198,'Quantity of maternal serum','Available quantity of maternal serum','','','In millilitres; valid range 0.0 to 99.9 ml','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (199,'Syphilis Status','Syphilis Serological test result (STS)','','','','',5,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (200,'Toxoplasmosis Status','Toxoplasmosis antibodies result','','','','N = Both IgG and IgM negative Q = Questionable / UnclearG = IgG positive, IgM negative M = IgG negative, IgM positive B = Both IgG and IgM positiveP = IgG or IgM positive, test did not differentiate H = IgG positive, IgM not testedO = IgG negative, IgM not tested',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (201,'West Nile Virus Status','West nile virus stats','','','','P = Positive N = Negative',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (202,'P_MATCH_AB','Matching preference for HLA-A and B typed adult donors for a patien''st search','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (203,'P_MATCH_CB','Matching preference for cord blood units for a patient''s search','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (204,'MATCH_DATE','EMDIS message only, not in WMDA data dictionary.','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (205,'P_MATCH_DR','Matching preference for HLA-A, B and DR typed adult donors for patient''s search','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (206,'P_MAX_DON_AB','Maximum number of HLA-A, and -B typed donors','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (207,'P_MAX_DON_CB','Maximum number of cord blood units','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (208,'P_MAX_DON_DR','Maximum number of HLA-A, -B and -DR typed donors','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (209,'MIN_VOL_MARR','EMDIS message only, not in WMDA data dictionary. Workup request for future implementation','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (210,'MLC_GVH','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (211,'MLC_HVG','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (212,'Collected number of CBU mononuclear cells','Number of mononucleated cells (post processing, prior to cryopreservation)','','10^7','0.0E0 to 999.9E7','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (213,'Mononuclear cells per kilogram','The number of mononuclear cells per patient kilo. Workup request for future implementation in EMDIS.','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (214,'MSG_CODE','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (215,'VT Blood Sample Requirments','Refers to the type of sample and number of tubes requested from donors at Verification typing stage  sent to the TC for HLA compatibility testing','','','','EDTA, ACD, NO ANTICOAGULANT, HEPARIN,',4,'');
INSERT INTO `wmdadict_dictionaryfield` VALUES (216,'Collection sample requirements','Refers to the type of peripheral blood samples and number of tubes requested on day of HPC collection and sent with the HPC product to the TC','','','','EDTA, ACD, CPD, HEPARIN, NO ANTICOAGULANT',4,'');
INSERT INTO `wmdadict_dictionaryfield` VALUES (217,'Pre-collection sample requirements','Refers to the type of peripheral blood samples and number of tubes requested usually at the donor''s medical examination and sent with the HPC product to the TC','','','','EDTA, ACD, CPD, HEPARIN, NO ANTICOAGULANT',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (218,'Collected Total nucleated Cells (TNC)','The  collected total number of nucleated cells in a CBU.','','10^7','0.0E0 to 999.9E7','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (219,'Total nucleated Cells (TNC) in CBU','The total number of nucleated cells in CBU. Measured at post-processing ( pre-cryopreservation). Cell dose is determined by  TNC per patient kilo','','10^7','0.0E0 to 999.9E7','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (220,'Number of nucleated cells per kilo','Total number of nucleated cells per kilo for recipient','','10^6, 10^8,','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (221,'Requested cells for research purposes research','Number of nucleated cells for research requested','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (222,'P_NEW_STAT','EMDIS message only, not in WMDA data dictionary. ?? Is it worth defining the EMDIS patient search status in broader terms ( does it matter outside of EMDIS)','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (223,'Previous HPC donation','Donors who have previously donated either HPC(A) or HPC(M)','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (224,'Donor pregnancies','Number of donor pregnancies','','','','',3,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (225,'Donor blood transfusions','Number of previous blood transfusions a donor has had','','','','',3,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (226,'P_OLD_STAT','EMDIS message only, not in WMDA data dictionary. ?? Is it worth defining the EMDIS patient search status in broader terms ( does it matter outside of EMDIS)','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (227,'ORG_DEN','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (228,'Other viable cell aliquots','Additional viable CBU cell aliquots available to be used for testing','','','','',1,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (229,'PARAM','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (230,'Patient location identifier','Physical location of the patient. Two character ISO country code (i.e. US, DE, IT) Relevant outside of emdis?','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (231,'G-CSF Start','First day donor commences G-CSF injections','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (232,'Contact Person','The listed contact at an organisation usually a registry or transplant centre','','','','',4,'A');
INSERT INTO `wmdadict_dictionaryfield` VALUES (233,'Contact phone number','The listed  phone number to contact at an organisation usually a registry or transplant centre','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (234,'CBU Plasma','Total quantity of CBU plasma available','','','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (235,'Donor location identifier','Physical location of the donor.  Used to denote which registry a donor belongs to. Use four digit ION code, will be embedded in GRID','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (236,'Pre-collection sample date','Date of sample collection','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (237,'Cord Blood Unit processing Date','Date CBU processed','','','Must be in past','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (238,'Cord Blood Unit processing system','The method by which the CBB processed the CBU','','','','HES = Hydroxy-Ethyl-StarchDGS = Density Gradient Separation CEN = CentrifugeFIL = Filtration FIC = FICOL PER = PERCOLOTH = Other',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (239,'Cord Blood Unit processing method','The type of method by which the CBB processed the CBU','','','','MAN = Manual SPX = SepaxOTP = Optipress II AXP = AXPOTH = Other',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (240,'CBU product modification','Modification of the CBU at time of banking','','','','BCE = Buffy Coat Enriched DNE = Density EnrichedPLR = Plasma Reduced (Volume reduction only)PRR = Plasma and RBC ReducedRBR = RBC Reduced (depletion) NOT = Not reducedOTH = Other',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (241,'Preferred date (collection/shipment) 1','First preferred date for collection / CBU shipment','','','Must be in the future','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (242,'REASON','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (243,'REASON_CHNG','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (244,'REASON_CNCL','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (245,'REC_DATE1','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (246,'REC_DATE2','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (247,'Total Nucleated Red Blood cells','Total nucleated red blood cell count in a CBU (post processing and pre-cryopreservation) reflecting the content of the final product that is frozen','','10^7','0.0E0 to 999.9E7','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (248,'CBU volume reduction','Method of used for volume reduction','','','','HES = Hydroxy-Ethyl-StarchDGS = Density Gradient Separation CEN = CentrifugeFIL = Filtration FIC = FICOL PER = PERCOLNOT = Not reduced OTH = OtherUNK = Unknown',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (249,'REF_CODE','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (250,'REG_RCV','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (251,'REG_SND','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (252,'REMARK','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (254,'Request date','Date of request','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (255,'REQ_TYPE','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (256,'RES_TYPE','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (257,'RESOLUT','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (258,'CBU confirmatory typing sample','Type of sample used to confirm the HLA typing of a cord blood unit','','','','AS = CBU Contiguous Attached Segment WB = Whole Blood SampleRC = Red Cell Fraction (pellet) FP = Blood Spotted Filter Paper ED = Extracted DNA',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (259,'SEND_PREF','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (260,'SENT_DATE','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (261,'CBU serum available','Total volume of CBU serum available','','','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (262,'Sex','Biological gender of the patient, donor, CBU','','','','',3,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (263,'CB_STAT_END_DATE','Date until which the current status will be applicable','','','','',7,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (264,'D_STAT_END_DATE','Date until which the current status will be applicable','','','','',7,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (265,'Search Status change','Refers to the change in status of an HPC product which denotes a change availability','','','','Proposed reasons for Status TU: QR = Quarantined;AD = AdministrativeProposed reasons for Status DE: CD = Cord Destroyed or Damaged; MR = Medical reasonsDS = Distributed for infusion;OT = Unavailable for other reasons; XP = ExpiredProposed additional information for AV:NS = No sample available (can''t do additional testing, but could ship)',4,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (266,'Search Status','Refers to the current search status of an HPC product','','','','AV = Available for transplantation purposes TU = Temporarily unavailableRE = ReservedDE = Deleted, permanently unavailable',4,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (267,'HLA A-B matched donors','Number of  matched donors typed at only locuses A and B','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (268,'CBU match list','Total number of Cord blood units matched to a patient','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (269,'HLA A-B-DRB1 donors','Total number of potentially matched donors who are typed at least locus A, B and DRB1','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (270,'Donor Lues status (Treponema pallidum)','Treponema pallidum hemagglutination assay result','','','','P = Positive N = NegativeQ = Questionable/Uncertain',5,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (271,'Transport Medium for HPC(M)','Required anticoagulant for transport of HPC(M)','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (272,'Transplant Date','Date of HPC product infusion','','','','',4,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (273,'TXT_LINEn','EMDIS message only, not in WMDA data dictionary.','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (274,'CBU Bag','Type of bag used (bag fractions / split unit)','','','','',1,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (275,'Donor Type','Differentiate between stem cell donor or cord blood unit','','','','',4,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (276,'URGENT','EMDIS message only, not in WMDA data dictionary. ( do we define urgent in relation search, requests etc?)','','','','',7,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (277,'CBU viability','Viability of a CBU','','Viability of tested CBU cells','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (278,'CBU viability type','Denotes which cells were tested for viability','','','','TNCCD34CD45',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (279,'Viability Date','Date viability was tested','','','Must be in past','',1,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (280,'Viability Method','Method used to calculate the viability','','','','7A = 7AADPI = Propidium IodideTB = Trypan BlueOT = Other',1,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (281,'Test date','Date testing was performed','','','','',5,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (282,'Result date','Date results reported','','','','',5,'D');
INSERT INTO `wmdadict_dictionaryfield` VALUES (283,'CBU volume at collection','CBU collected volume before processing (without additives)','','','','',1,'U');
INSERT INTO `wmdadict_dictionaryfield` VALUES (284,'CBU volume at cyropreservation','Total CBU volume frozen (post processing and pre-cryopreservation)','','','','',1,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (285,'Weight','Weight measured in kilograms','','','','',4,'N');
INSERT INTO `wmdadict_dictionaryfield` VALUES (286,'Product Request','Requesting TC/Registry''s Product Preference','','','','PRODUCT REQUESTHPC, Marrow ONLYHPC, Apheresis ONLYMNC, ApheresisHPC, Marrow, second option: HPC, ApheresisHPC, Apheresis, second option: HPC, Marrow',4,'S');
INSERT INTO `wmdadict_dictionaryfield` VALUES (287,'Postal Code','Post code of an organisation such as a registry or TC','','','','',4,'N');
CREATE TABLE "wmdadict_datafamily" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL UNIQUE, "contact" varchar(50) NOT NULL);
INSERT INTO `wmdadict_datafamily` VALUES (1,'Cord blood','');
INSERT INTO `wmdadict_datafamily` VALUES (2,'Bioinformatics','');
INSERT INTO `wmdadict_datafamily` VALUES (3,'Donor','');
INSERT INTO `wmdadict_datafamily` VALUES (4,'Requests','');
INSERT INTO `wmdadict_datafamily` VALUES (5,'IDM','');
INSERT INTO `wmdadict_datafamily` VALUES (6,'Patient','');
INSERT INTO `wmdadict_datafamily` VALUES (7,'EMDIS','');
CREATE TABLE "wmdadict_bmdwfield" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "field_code" varchar(50) NOT NULL UNIQUE, "dict_field_id" integer NOT NULL REFERENCES "wmdadict_dictionaryfield" ("id"));
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO `django_session` VALUES ('7npe6cbpb8m9gfyhddpk17ij8cpheaw8','YmYzMDBlOWM5YTIzY2VhZmIwYWMwOWYxZmRkZjI2ZjU3N2UwNDlmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjU0MmM1Yzk5MTY5ODhjZmJjNzcwYWQ0NjAxYzE3Mzc4NGRjOGNkIn0=','2017-08-29 06:29:35.381345');
INSERT INTO `django_session` VALUES ('gzfylb092rpwzqa5y92sccsnojkbkqdl','ZGY0NDM2ZTU2NjAyOTNjZTYzOTgzZWM3OTRhYTU3MzcwOWNjMjFkYjp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZTc1YTY4ZjY2ZTM2NjRjYzgwYjJhNTNiNTRmYzEzOGY0YjhmMTA1In0=','2017-08-30 22:23:10.792284');
INSERT INTO `django_session` VALUES ('e88zbfxfjtcc11nt35gx5b4w1pmiqxqh','YmYzMDBlOWM5YTIzY2VhZmIwYWMwOWYxZmRkZjI2ZjU3N2UwNDlmYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YjU0MmM1Yzk5MTY5ODhjZmJjNzcwYWQ0NjAxYzE3Mzc4NGRjOGNkIn0=','2017-08-31 10:48:39.297639');
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-08-14 01:28:28.925030');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2017-08-14 01:28:28.955522');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2017-08-14 01:28:28.978727');
INSERT INTO `django_migrations` VALUES (4,'admin','0002_logentry_remove_auto_add','2017-08-14 01:28:28.997702');
INSERT INTO `django_migrations` VALUES (5,'contenttypes','0002_remove_content_type_name','2017-08-14 01:28:29.042277');
INSERT INTO `django_migrations` VALUES (6,'auth','0002_alter_permission_name_max_length','2017-08-14 01:28:29.057010');
INSERT INTO `django_migrations` VALUES (7,'auth','0003_alter_user_email_max_length','2017-08-14 01:28:29.103211');
INSERT INTO `django_migrations` VALUES (8,'auth','0004_alter_user_username_opts','2017-08-14 01:28:29.129152');
INSERT INTO `django_migrations` VALUES (9,'auth','0005_alter_user_last_login_null','2017-08-14 01:28:29.151527');
INSERT INTO `django_migrations` VALUES (10,'auth','0006_require_contenttypes_0002','2017-08-14 01:28:29.154881');
INSERT INTO `django_migrations` VALUES (11,'auth','0007_alter_validators_add_error_messages','2017-08-14 01:28:29.187724');
INSERT INTO `django_migrations` VALUES (12,'auth','0008_alter_user_username_max_length','2017-08-14 01:28:29.215358');
INSERT INTO `django_migrations` VALUES (13,'sessions','0001_initial','2017-08-14 01:28:29.226053');
INSERT INTO `django_migrations` VALUES (14,'wmdadict','0001_initial','2017-08-15 06:26:21.334735');
INSERT INTO `django_migrations` VALUES (15,'wmdadict','0002_auto_20170815_1625','2017-08-15 06:26:21.390846');
INSERT INTO `django_migrations` VALUES (16,'wmdadict','0003_auto_20170815_1736','2017-08-15 07:37:08.433561');
INSERT INTO `django_migrations` VALUES (17,'wmdadict','0004_auto_20170817_0819','2017-08-16 22:20:12.050831');
INSERT INTO `django_migrations` VALUES (18,'wmdadict','0005_auto_20170817_0906','2017-08-17 04:50:26.603710');
INSERT INTO `django_migrations` VALUES (19,'wmdadict','0006_auto_20170817_2046','2017-08-17 10:46:40.360348');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'wmdadict','dictionaryfield');
INSERT INTO `django_content_type` VALUES (8,'wmdadict','bmdwfield');
INSERT INTO `django_content_type` VALUES (9,'wmdadict','formfields');
INSERT INTO `django_content_type` VALUES (10,'wmdadict','emdisfield');
INSERT INTO `django_content_type` VALUES (11,'wmdadict','datafamily');
INSERT INTO `django_content_type` VALUES (12,'wmdadict','emdismessage');
INSERT INTO `django_content_type` VALUES (13,'wmdadict','wmdaform');
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "action_time" datetime NOT NULL);
INSERT INTO `django_admin_log` VALUES (1,'1','Cord blood',1,'[{"added": {}}]',11,1,'2017-08-15 07:30:28.309729');
INSERT INTO `django_admin_log` VALUES (2,'2','Bioinformatics',1,'[{"added": {}}]',11,1,'2017-08-15 07:30:39.657697');
INSERT INTO `django_admin_log` VALUES (3,'3','Donor',1,'[{"added": {}}]',11,1,'2017-08-15 07:30:45.648851');
INSERT INTO `django_admin_log` VALUES (4,'4','Requests',1,'[{"added": {}}]',11,1,'2017-08-15 07:30:54.072242');
INSERT INTO `django_admin_log` VALUES (5,'5','IDM',1,'[{"added": {}}]',11,1,'2017-08-15 07:30:58.998474');
INSERT INTO `django_admin_log` VALUES (6,'6','Patient',1,'[{"added": {}}]',11,1,'2017-08-15 07:31:11.604375');
INSERT INTO `django_admin_log` VALUES (7,'1','Collected CD34+',1,'[{"added": {}}]',7,1,'2017-08-15 07:33:11.938806');
INSERT INTO `django_admin_log` VALUES (8,'2','Processed CD34+',1,'[{"added": {}}]',7,1,'2017-08-15 07:34:33.420053');
INSERT INTO `django_admin_log` VALUES (9,'3','HLA A (1st antigen)',1,'[{"added": {}}]',7,1,'2017-08-15 07:35:33.926904');
INSERT INTO `django_admin_log` VALUES (10,'3','HLA A (1st antigen)',2,'[{"changed": {"fields": ["description_long"]}}]',7,1,'2017-08-15 07:37:33.114477');
INSERT INTO `django_admin_log` VALUES (11,'3','HLA A (1st antigen)',2,'[]',7,1,'2017-08-15 07:37:44.313060');
INSERT INTO `django_admin_log` VALUES (12,'2','Processed CD34+',2,'[{"changed": {"fields": ["description_long"]}}]',7,1,'2017-08-15 07:37:51.128717');
INSERT INTO `django_admin_log` VALUES (13,'1','Collected CD34+',2,'[{"changed": {"fields": ["description_long"]}}]',7,1,'2017-08-15 07:37:57.999205');
INSERT INTO `django_admin_log` VALUES (14,'3','HLA A (1st antigen)',2,'[]',7,1,'2017-08-15 08:29:47.971015');
INSERT INTO `django_admin_log` VALUES (15,'181','Maternal HLA A (1st antigen)',2,'[]',7,1,'2017-08-15 10:18:28.684529');
INSERT INTO `django_admin_log` VALUES (16,'1','CB30',1,'[{"added": {}}]',13,1,'2017-08-16 22:21:13.440325');
INSERT INTO `django_admin_log` VALUES (17,'2','jenna',1,'[{"added": {}}]',4,1,'2017-08-16 22:21:51.387466');
INSERT INTO `django_admin_log` VALUES (18,'3','anthony',1,'[{"added": {}}]',4,1,'2017-08-16 22:22:09.150262');
INSERT INTO `django_admin_log` VALUES (19,'3','anthony',2,'[{"changed": {"fields": ["is_staff"]}}]',4,1,'2017-08-16 22:22:35.607958');
INSERT INTO `django_admin_log` VALUES (20,'2','jenna',2,'[{"changed": {"fields": ["is_staff"]}}]',4,1,'2017-08-16 22:22:55.719233');
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
INSERT INTO `auth_user_user_permissions` VALUES (1,3,19);
INSERT INTO `auth_user_user_permissions` VALUES (2,3,20);
INSERT INTO `auth_user_user_permissions` VALUES (3,3,21);
INSERT INTO `auth_user_user_permissions` VALUES (4,3,22);
INSERT INTO `auth_user_user_permissions` VALUES (5,3,23);
INSERT INTO `auth_user_user_permissions` VALUES (6,3,24);
INSERT INTO `auth_user_user_permissions` VALUES (7,3,25);
INSERT INTO `auth_user_user_permissions` VALUES (8,3,26);
INSERT INTO `auth_user_user_permissions` VALUES (9,3,27);
INSERT INTO `auth_user_user_permissions` VALUES (10,3,28);
INSERT INTO `auth_user_user_permissions` VALUES (11,3,29);
INSERT INTO `auth_user_user_permissions` VALUES (12,3,30);
INSERT INTO `auth_user_user_permissions` VALUES (13,3,31);
INSERT INTO `auth_user_user_permissions` VALUES (14,3,32);
INSERT INTO `auth_user_user_permissions` VALUES (15,3,33);
INSERT INTO `auth_user_user_permissions` VALUES (16,3,34);
INSERT INTO `auth_user_user_permissions` VALUES (17,3,35);
INSERT INTO `auth_user_user_permissions` VALUES (18,3,36);
INSERT INTO `auth_user_user_permissions` VALUES (19,3,37);
INSERT INTO `auth_user_user_permissions` VALUES (20,3,38);
INSERT INTO `auth_user_user_permissions` VALUES (21,3,39);
INSERT INTO `auth_user_user_permissions` VALUES (22,2,19);
INSERT INTO `auth_user_user_permissions` VALUES (23,2,20);
INSERT INTO `auth_user_user_permissions` VALUES (24,2,21);
INSERT INTO `auth_user_user_permissions` VALUES (25,2,22);
INSERT INTO `auth_user_user_permissions` VALUES (26,2,23);
INSERT INTO `auth_user_user_permissions` VALUES (27,2,24);
INSERT INTO `auth_user_user_permissions` VALUES (28,2,25);
INSERT INTO `auth_user_user_permissions` VALUES (29,2,26);
INSERT INTO `auth_user_user_permissions` VALUES (30,2,27);
INSERT INTO `auth_user_user_permissions` VALUES (31,2,28);
INSERT INTO `auth_user_user_permissions` VALUES (32,2,29);
INSERT INTO `auth_user_user_permissions` VALUES (33,2,30);
INSERT INTO `auth_user_user_permissions` VALUES (34,2,31);
INSERT INTO `auth_user_user_permissions` VALUES (35,2,32);
INSERT INTO `auth_user_user_permissions` VALUES (36,2,33);
INSERT INTO `auth_user_user_permissions` VALUES (37,2,34);
INSERT INTO `auth_user_user_permissions` VALUES (38,2,35);
INSERT INTO `auth_user_user_permissions` VALUES (39,2,36);
INSERT INTO `auth_user_user_permissions` VALUES (40,2,37);
INSERT INTO `auth_user_user_permissions` VALUES (41,2,38);
INSERT INTO `auth_user_user_permissions` VALUES (42,2,39);
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"));
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "username" varchar(150) NOT NULL UNIQUE);
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$JXEkl8K3KzNx$Ljhr1Y+fk1FjkVid3EHh/0ZDkJZjusV0B0kugRnWEkQ=','2017-08-17 10:48:39.294592',1,'','','antmontalt@me.com',1,1,'2017-08-15 06:29:03.934097','admin');
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$36000$Rxr2fDLVDCKj$gedyskrz66+QvzRlV7dNE+f/YvHFuUlzBj/F9QvqEqw=',NULL,0,'','','',1,1,'2017-08-16 22:21:51','jenna');
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$36000$wkBN7PqfnsIO$hbekY/r3tsoszqZRx0pDojV4UQoKlBOXUpmbE0eOUj8=','2017-08-16 22:23:10.789835',0,'','','',1,1,'2017-08-16 22:22:09','anthony');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO `auth_permission` VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO `auth_permission` VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO `auth_permission` VALUES (4,2,'add_permission','Can add permission');
INSERT INTO `auth_permission` VALUES (5,2,'change_permission','Can change permission');
INSERT INTO `auth_permission` VALUES (6,2,'delete_permission','Can delete permission');
INSERT INTO `auth_permission` VALUES (7,3,'add_group','Can add group');
INSERT INTO `auth_permission` VALUES (8,3,'change_group','Can change group');
INSERT INTO `auth_permission` VALUES (9,3,'delete_group','Can delete group');
INSERT INTO `auth_permission` VALUES (10,4,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (11,4,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (12,4,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (13,5,'add_contenttype','Can add content type');
INSERT INTO `auth_permission` VALUES (14,5,'change_contenttype','Can change content type');
INSERT INTO `auth_permission` VALUES (15,5,'delete_contenttype','Can delete content type');
INSERT INTO `auth_permission` VALUES (16,6,'add_session','Can add session');
INSERT INTO `auth_permission` VALUES (17,6,'change_session','Can change session');
INSERT INTO `auth_permission` VALUES (18,6,'delete_session','Can delete session');
INSERT INTO `auth_permission` VALUES (19,7,'add_dictionaryfield','Can add dictionary field');
INSERT INTO `auth_permission` VALUES (20,7,'change_dictionaryfield','Can change dictionary field');
INSERT INTO `auth_permission` VALUES (21,7,'delete_dictionaryfield','Can delete dictionary field');
INSERT INTO `auth_permission` VALUES (22,8,'add_bmdwfield','Can add bmdw field');
INSERT INTO `auth_permission` VALUES (23,8,'change_bmdwfield','Can change bmdw field');
INSERT INTO `auth_permission` VALUES (24,8,'delete_bmdwfield','Can delete bmdw field');
INSERT INTO `auth_permission` VALUES (25,9,'add_formfields','Can add form fields');
INSERT INTO `auth_permission` VALUES (26,9,'change_formfields','Can change form fields');
INSERT INTO `auth_permission` VALUES (27,9,'delete_formfields','Can delete form fields');
INSERT INTO `auth_permission` VALUES (28,10,'add_emdisfield','Can add emdis field');
INSERT INTO `auth_permission` VALUES (29,10,'change_emdisfield','Can change emdis field');
INSERT INTO `auth_permission` VALUES (30,10,'delete_emdisfield','Can delete emdis field');
INSERT INTO `auth_permission` VALUES (31,11,'add_datafamily','Can add data family');
INSERT INTO `auth_permission` VALUES (32,11,'change_datafamily','Can change data family');
INSERT INTO `auth_permission` VALUES (33,11,'delete_datafamily','Can delete data family');
INSERT INTO `auth_permission` VALUES (34,12,'add_emdismessage','Can add emdis message');
INSERT INTO `auth_permission` VALUES (35,12,'change_emdismessage','Can change emdis message');
INSERT INTO `auth_permission` VALUES (36,12,'delete_emdismessage','Can delete emdis message');
INSERT INTO `auth_permission` VALUES (37,13,'add_wmdaform','Can add wmda form');
INSERT INTO `auth_permission` VALUES (38,13,'change_wmdaform','Can change wmda form');
INSERT INTO `auth_permission` VALUES (39,13,'delete_wmdaform','Can delete wmda form');
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"));
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE INDEX "wmdadict_formfields_wmda_form_id_a8b38c83" ON "wmdadict_formfields" ("wmda_form_id");
CREATE INDEX "wmdadict_formfields_dict_field_id_88af5df6" ON "wmdadict_formfields" ("dict_field_id");
CREATE INDEX "wmdadict_emdisfield_emdis_messages_emdismessage_id_a1b23858" ON "wmdadict_emdisfield_emdis_messages" ("emdismessage_id");
CREATE UNIQUE INDEX "wmdadict_emdisfield_emdis_messages_emdisfield_id_emdismessage_id_35a057c6_uniq" ON "wmdadict_emdisfield_emdis_messages" ("emdisfield_id", "emdismessage_id");
CREATE INDEX "wmdadict_emdisfield_emdis_messages_emdisfield_id_26e738e6" ON "wmdadict_emdisfield_emdis_messages" ("emdisfield_id");
CREATE INDEX "wmdadict_emdisfield_dict_field_id_9170a9e4" ON "wmdadict_emdisfield" ("dict_field_id");
CREATE UNIQUE INDEX "wmdadict_dictionaryfield_user_families_dictionaryfield_id_datafamily_id_ade4ff26_uniq" ON "wmdadict_dictionaryfield_user_families" ("dictionaryfield_id", "datafamily_id");
CREATE INDEX "wmdadict_dictionaryfield_user_families_dictionaryfield_id_a9143d16" ON "wmdadict_dictionaryfield_user_families" ("dictionaryfield_id");
CREATE INDEX "wmdadict_dictionaryfield_user_families_datafamily_id_7f2a892b" ON "wmdadict_dictionaryfield_user_families" ("datafamily_id");
CREATE INDEX "wmdadict_dictionaryfield_owner_family_id_f8275d46" ON "wmdadict_dictionaryfield" ("owner_family_id");
CREATE INDEX "wmdadict_bmdwfield_dict_field_id_4770f575" ON "wmdadict_bmdwfield" ("dict_field_id");
CREATE INDEX "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");
CREATE UNIQUE INDEX "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");
CREATE INDEX "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");
CREATE UNIQUE INDEX "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");
CREATE INDEX "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");
CREATE INDEX "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");
CREATE UNIQUE INDEX "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");
CREATE INDEX "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");
CREATE UNIQUE INDEX "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");
CREATE INDEX "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");
COMMIT;
