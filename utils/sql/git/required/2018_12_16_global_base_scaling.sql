-- INSERT #devtools / #dev command

INSERT INTO `command_settings` (`command`, `access`, `aliases`)
VALUES
	('devtools', 200, 'dev');

-- CREATE 'npc_scale_global_base'

CREATE TABLE `npc_scale_global_base` (
  `type` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `ac` int(11) DEFAULT NULL,
  `hp` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `slow_mitigation` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `dexterity` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `intelligence` int(11) DEFAULT NULL,
  `wisdom` int(11) DEFAULT NULL,
  `charisma` int(11) DEFAULT NULL,
  `magic_resist` int(11) DEFAULT NULL,
  `cold_resist` int(11) DEFAULT NULL,
  `fire_resist` int(11) DEFAULT NULL,
  `poison_resist` int(11) DEFAULT NULL,
  `disease_resist` int(11) DEFAULT NULL,
  `corruption_resist` int(11) DEFAULT NULL,
  `physical_resist` int(11) DEFAULT NULL,
  `min_dmg` int(11) DEFAULT NULL,
  `max_dmg` int(11) DEFAULT NULL,
  `hp_regen_rate` int(11) DEFAULT NULL,
  `attack_delay` int(11) DEFAULT NULL,
  `spell_scale` int(11) DEFAULT '100',
  `heal_scale` int(11) DEFAULT '100',
  `special_abilities` text,
  PRIMARY KEY (`type`,`level`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- INSERT 'npc_scale_global_base'

INSERT INTO `npc_scale_global_base` (`type`, `level`, `ac`, `hp`, `accuracy`, `slow_mitigation`, `attack`, `strength`, `stamina`, `dexterity`, `agility`, `intelligence`, `wisdom`, `charisma`, `magic_resist`, `cold_resist`, `fire_resist`, `poison_resist`, `disease_resist`, `corruption_resist`, `physical_resist`, `min_dmg`, `max_dmg`, `hp_regen_rate`, `attack_delay`, `spell_scale`, `heal_scale`, `special_abilities`)
VALUES
	(0,1,8,11,0,0,0,8,8,8,8,8,8,8,1,1,1,1,1,1,10,1,6,1,30,100,100,''),
	(0,2,11,27,0,0,0,11,11,11,11,11,11,11,1,1,1,1,1,2,10,1,8,2,30,100,100,''),
	(0,3,14,43,0,0,0,14,14,14,14,14,14,14,2,2,2,2,2,2,10,1,10,3,30,100,100,''),
	(0,4,16,59,0,0,0,17,17,17,17,17,17,17,2,2,2,2,2,3,10,1,12,4,30,100,100,''),
	(0,5,19,75,0,0,0,20,20,20,20,20,20,20,2,2,2,2,2,3,10,1,14,5,30,100,100,''),
	(0,6,22,100,0,0,0,23,23,23,23,23,23,23,2,2,2,2,2,4,10,1,16,6,30,100,100,''),
	(0,7,25,125,0,0,0,26,26,26,26,26,26,26,3,3,3,3,3,4,10,1,18,7,30,100,100,''),
	(0,8,28,150,0,0,0,29,29,29,29,29,29,29,3,3,3,3,3,5,10,1,20,8,30,100,100,''),
	(0,9,31,175,0,0,0,32,32,32,32,32,32,32,4,4,4,4,4,5,10,1,22,9,30,100,100,''),
	(0,10,34,200,0,0,0,35,35,35,35,35,35,35,4,4,4,4,4,6,10,1,24,10,30,100,100,''),
	(0,11,37,234,0,0,0,38,38,38,38,38,38,38,5,5,5,5,5,7,10,3,27,11,30,100,100,''),
	(0,12,40,268,0,0,0,42,42,42,42,42,42,42,5,5,5,5,5,8,10,4,30,12,30,100,100,''),
	(0,13,43,302,0,0,0,45,45,45,45,45,45,45,6,6,6,6,6,8,10,6,32,13,30,100,100,''),
	(0,14,46,336,0,0,0,48,48,48,48,48,48,48,6,6,6,6,6,9,10,7,35,14,30,100,100,''),
	(0,15,52,381,0,0,0,51,51,51,51,51,51,51,6,6,6,6,6,10,10,7,37,15,30,100,100,''),
	(0,16,59,426,0,0,0,54,54,54,54,54,54,54,7,7,7,7,7,10,10,8,39,16,30,100,100,''),
	(0,17,65,471,0,0,0,57,57,57,57,57,57,57,7,7,7,7,7,11,10,8,41,17,30,100,100,''),
	(0,18,72,516,0,0,0,60,60,60,60,60,60,60,7,7,7,7,7,11,10,9,42,18,30,100,100,''),
	(0,19,78,561,0,0,0,63,63,63,63,63,63,63,7,7,7,7,7,12,10,9,44,19,30,100,100,''),
	(0,20,85,606,0,0,0,66,66,66,66,66,66,66,8,8,8,8,8,12,10,10,46,20,30,100,100,''),
	(0,21,91,651,0,0,0,69,69,69,69,69,69,69,8,8,8,8,8,13,10,10,48,21,30,100,100,''),
	(0,22,95,712,0,0,0,72,72,72,72,72,72,72,8,8,8,8,8,14,10,10,50,22,30,100,100,''),
	(0,23,99,773,0,0,0,75,75,75,75,75,75,75,9,9,9,9,9,14,10,10,52,23,30,100,100,''),
	(0,24,103,834,0,0,0,78,78,78,78,78,78,78,9,9,9,9,9,15,10,11,55,24,30,100,100,''),
	(0,25,107,895,0,0,0,81,81,81,81,81,81,81,10,10,10,10,10,16,10,11,57,25,30,100,100,''),
	(0,26,111,956,0,0,0,85,85,85,85,85,85,85,10,10,10,10,10,16,10,11,59,26,30,100,100,''),
	(0,27,115,1017,0,0,0,88,88,88,88,88,88,88,11,11,11,11,11,17,10,11,61,27,30,100,100,''),
	(0,28,119,1078,0,0,0,91,91,91,91,91,91,91,11,11,11,11,11,18,10,12,64,28,30,100,100,''),
	(0,29,123,1139,0,0,0,94,94,94,94,94,94,94,12,12,12,12,12,18,10,12,66,29,30,100,100,''),
	(0,30,127,1200,0,0,0,97,97,97,97,97,97,97,12,12,12,12,12,19,10,12,68,30,30,100,100,''),
	(0,31,135,1580,4,0,4,104,104,104,104,104,104,104,13,13,13,13,13,20,10,14,74,31,30,100,100,''),
	(0,32,142,1960,8,0,8,110,110,110,110,110,110,110,14,14,14,14,14,22,10,16,79,32,30,100,100,''),
	(0,33,150,2340,12,0,12,117,117,117,117,117,117,117,15,15,15,15,15,23,10,18,85,33,29,100,100,''),
	(0,34,158,2720,16,0,16,123,123,123,123,123,123,123,16,16,16,16,16,25,10,20,90,34,28,100,100,''),
	(0,35,166,3100,20,0,20,130,130,130,130,130,130,130,17,17,17,17,17,26,10,22,96,35,27,100,100,''),
	(0,36,173,3480,24,0,24,137,137,137,137,137,137,137,17,17,17,17,17,27,10,24,102,36,25,100,100,''),
	(0,37,181,3860,28,0,28,143,143,143,143,143,143,143,18,18,18,18,18,29,10,26,107,37,24,100,100,''),
	(0,38,189,4240,32,0,32,150,150,150,150,150,150,150,19,19,19,19,19,30,10,28,113,38,23,100,100,''),
	(0,39,196,4620,36,0,36,156,156,156,156,156,156,156,20,20,20,20,20,32,10,30,118,39,22,100,100,''),
	(0,40,204,5000,40,0,40,163,163,163,163,163,163,163,21,21,21,21,21,33,10,32,124,40,21,100,100,''),
	(0,41,208,5300,42,0,42,166,166,166,166,166,166,166,22,22,22,22,22,34,10,33,127,41,21,100,100,''),
	(0,42,212,5600,44,0,44,169,169,169,169,169,169,169,22,22,22,22,22,35,10,34,130,42,21,100,100,''),
	(0,43,217,5900,46,0,46,173,173,173,173,173,173,173,23,23,23,23,23,35,10,34,133,43,21,100,100,''),
	(0,44,221,6200,48,0,48,176,176,176,176,176,176,176,23,23,23,23,23,36,10,35,136,44,21,100,100,''),
	(0,45,225,6500,50,0,50,179,179,179,179,179,179,179,24,24,24,24,24,37,10,36,139,45,21,100,100,''),
	(0,46,229,7200,50,0,50,182,182,182,182,182,182,182,24,24,24,24,24,38,10,44,152,46,21,100,100,''),
	(0,47,233,7900,50,0,50,185,185,185,185,185,185,185,25,25,25,25,25,39,10,51,165,47,21,100,100,''),
	(0,48,237,8600,50,0,50,188,188,188,188,188,188,188,25,25,25,25,25,39,10,59,178,48,21,100,100,''),
	(0,49,241,9300,50,0,50,191,191,191,191,191,191,191,26,26,26,26,26,40,10,66,191,49,21,100,100,''),
	(0,50,245,10000,50,0,50,194,194,194,194,194,194,194,26,26,26,26,26,41,10,74,204,50,21,100,100,''),
	(0,51,249,11700,53,0,53,197,197,197,197,197,197,197,27,27,27,27,27,42,11,78,231,51,20,100,100,''),
	(0,52,253,13400,56,0,56,200,200,200,200,200,200,200,27,27,27,27,27,43,12,81,258,52,20,100,100,''),
	(0,53,257,15100,59,0,59,203,203,203,203,203,203,203,28,28,28,28,28,43,13,85,284,53,20,100,100,''),
	(0,54,261,16800,62,10,62,206,206,206,206,206,206,206,28,28,28,28,28,44,14,89,311,54,20,100,100,''),
	(0,55,266,18500,65,10,65,210,210,210,210,210,210,210,29,29,29,29,29,45,15,93,338,55,20,100,100,''),
	(0,56,270,20200,68,10,68,213,213,213,213,213,213,213,29,29,29,29,29,46,16,96,365,56,20,100,100,''),
	(0,57,274,21900,71,10,71,216,216,216,216,216,216,216,30,30,30,30,30,47,17,100,392,57,19,100,100,''),
	(0,58,278,23600,74,10,74,219,219,219,219,219,219,219,30,30,30,30,30,47,18,104,418,58,19,100,100,'8,1'),
	(0,59,282,25300,77,10,77,222,222,222,222,222,222,222,31,31,31,31,31,48,19,107,445,59,19,100,100,'8,1'),
	(0,60,286,27000,80,20,80,225,225,225,225,225,225,225,31,31,31,31,31,49,20,111,472,60,19,100,100,'8,1^21,1'),
	(0,61,290,28909,85,20,84,228,228,228,228,228,228,228,32,32,32,32,32,50,24,128,536,61,19,100,100,'8,1^21,1'),
	(0,62,294,30818,91,20,87,231,231,231,231,231,231,231,32,32,32,32,32,51,28,145,599,62,18,100,100,'8,1^21,1'),
	(0,63,299,32727,96,20,91,234,234,234,234,234,234,234,33,33,33,33,33,51,32,162,663,63,18,100,100,'8,1^21,1'),
	(0,64,303,34636,102,20,95,237,237,237,237,237,237,237,33,33,33,33,33,52,36,179,727,64,18,100,100,'8,1^21,1'),
	(0,65,307,36545,107,25,98,240,240,240,240,240,240,240,34,34,34,34,34,53,40,196,790,65,18,100,100,'8,1^21,1'),
	(0,66,311,38455,113,25,102,244,244,244,244,244,244,244,34,34,34,34,34,54,44,213,854,66,18,100,100,'8,1^21,1'),
	(0,67,315,40364,118,25,105,247,247,247,247,247,247,247,35,35,35,35,35,55,48,230,917,67,17,100,100,'8,1^21,1'),
	(0,68,319,42273,124,25,109,250,250,250,250,250,250,250,35,35,35,35,35,56,52,247,981,68,17,100,100,'8,1^21,1'),
	(0,69,324,44182,129,25,113,253,253,253,253,253,253,253,36,36,36,36,36,56,56,264,1045,69,17,100,100,'8,1^21,1'),
	(0,70,328,46091,135,30,116,256,256,256,256,256,256,256,36,36,36,36,36,57,60,281,1108,70,17,100,100,'8,1^21,1'),
	(0,71,332,48000,140,30,120,259,259,259,259,259,259,259,37,37,37,37,37,58,64,298,1172,71,17,100,100,'8,1^21,1'),
	(0,72,336,49909,143,30,128,262,262,262,262,262,262,262,38,38,38,38,38,59,68,305,1193,72,17,100,100,'8,1^21,1'),
	(0,73,340,51818,145,30,135,265,265,265,265,265,265,265,39,39,39,39,39,60,72,312,1214,73,17,100,100,'8,1^21,1'),
	(0,74,344,53727,148,30,143,268,268,268,268,268,268,268,39,39,39,39,39,61,76,318,1235,74,17,100,100,'8,1^21,1'),
	(0,75,348,55636,150,30,150,271,271,271,271,271,271,271,40,40,40,40,40,62,80,325,1256,75,17,100,100,'8,1^21,1'),
	(0,76,352,75000,160,30,160,274,274,274,274,274,274,274,41,41,41,41,41,63,84,400,1600,76,17,100,100,'8,1^21,1'),
	(0,77,356,90000,170,30,170,277,277,277,277,277,277,277,42,42,42,42,42,64,88,500,2050,77,17,100,100,'8,1^21,1'),
	(0,78,360,113000,180,30,180,280,280,280,280,280,280,280,43,43,43,43,43,65,92,594,2323,120,17,100,100,'8,1^21,1'),
	(0,79,364,130000,190,30,190,283,283,283,283,283,283,283,44,44,44,44,44,66,96,650,2500,130,17,100,100,'8,1^21,1'),
	(0,80,368,140000,200,30,200,286,286,286,286,286,286,286,45,45,45,45,45,67,100,720,2799,140,16,100,100,'8,1^21,1'),
	(0,81,372,240000,300,30,300,289,289,289,289,289,289,289,46,46,46,46,46,68,104,800,3599,240,16,100,100,'8,1^21,1'),
	(0,82,376,340000,400,30,400,292,292,292,292,292,292,292,47,47,47,47,47,69,108,900,4599,340,16,100,100,'8,1^21,1'),
	(0,83,380,440000,410,30,410,295,295,295,295,295,295,295,48,48,48,48,48,70,112,1275,4904,440,16,100,100,'8,1^21,1'),
	(0,84,384,445000,420,30,420,298,298,298,298,298,298,298,49,49,49,49,49,71,116,1300,5100,445,16,100,100,'8,1^21,1'),
	(0,85,388,450000,430,30,430,301,301,301,301,301,301,301,50,50,50,50,50,72,120,1359,5292,450,16,100,100,'8,1^21,1'),
	(0,86,392,455000,440,30,440,304,304,304,304,304,304,304,51,51,51,51,51,73,124,1475,5578,455,16,100,100,'8,1^21,1'),
	(0,87,396,460000,450,30,450,307,307,307,307,307,307,307,52,52,52,52,52,74,128,1510,5918,460,16,100,100,'8,1^21,1'),
	(0,88,400,465000,460,30,460,310,310,310,310,310,310,310,53,53,53,53,53,75,132,1610,6200,465,16,100,100,'8,1^21,1'),
	(0,89,404,470000,470,30,470,313,313,313,313,313,313,313,54,54,54,54,54,76,136,1650,6275,470,16,100,100,'8,1^21,1'),
	(0,90,408,475000,480,30,480,316,316,316,316,316,316,316,55,55,55,55,55,77,140,1700,6350,475,16,100,100,'8,1^21,1'),
	(1,1,10,13,0,0,0,10,10,10,10,10,10,10,1,1,1,1,1,1,12,1,7,1,30,100,100,'13,1^14,1^21,1'),
	(1,2,13,32,0,0,0,13,13,13,13,13,13,13,1,1,1,1,1,2,12,1,10,2,30,100,100,'13,1^14,1^21,1'),
	(1,3,17,52,0,0,0,17,17,17,17,17,17,17,2,2,2,2,2,2,12,1,12,4,30,100,100,'13,1^14,1^21,1'),
	(1,4,19,71,0,0,0,20,20,20,20,20,20,20,2,2,2,2,2,4,12,1,14,5,30,100,100,'13,1^14,1^21,1'),
	(1,5,23,90,0,0,0,24,24,24,24,24,24,24,2,2,2,2,2,4,12,1,17,6,30,100,100,'13,1^14,1^21,1'),
	(1,6,26,120,0,0,0,28,28,28,28,28,28,28,2,2,2,2,2,5,12,1,19,7,30,100,100,'13,1^14,1^21,1'),
	(1,7,30,150,0,0,0,31,31,31,31,31,31,31,4,4,4,4,4,5,12,1,22,8,30,100,100,'13,1^14,1^21,1'),
	(1,8,34,180,0,0,0,35,35,35,35,35,35,35,4,4,4,4,4,6,12,1,24,10,30,100,100,'13,1^14,1^21,1'),
	(1,9,37,210,0,0,0,38,38,38,38,38,38,38,5,5,5,5,5,6,12,1,26,11,30,100,100,'13,1^14,1^21,1'),
	(1,10,41,240,0,0,0,42,42,42,42,42,42,42,5,5,5,5,5,7,12,1,29,12,30,100,100,'13,1^14,1^21,1'),
	(1,11,44,281,0,0,0,46,46,46,46,46,46,46,6,6,6,6,6,8,12,4,32,13,30,100,100,'13,1^14,1^21,1'),
	(1,12,48,322,0,0,0,50,50,50,50,50,50,50,6,6,6,6,6,10,12,5,36,14,30,100,100,'13,1^14,1^21,1'),
	(1,13,52,362,0,0,0,54,54,54,54,54,54,54,7,7,7,7,7,10,12,7,38,16,30,100,100,'13,1^14,1^21,1'),
	(1,14,55,403,0,0,0,58,58,58,58,58,58,58,7,7,7,7,7,11,12,8,42,17,30,100,100,'13,1^14,1^21,1'),
	(1,15,62,457,0,0,0,61,61,61,61,61,61,61,7,7,7,7,7,12,12,8,44,18,30,100,100,'13,1^14,1^21,1'),
	(1,16,71,511,0,0,0,65,65,65,65,65,65,65,8,8,8,8,8,12,12,10,47,19,30,100,100,'13,1^14,1^21,1'),
	(1,17,78,565,0,0,0,68,68,68,68,68,68,68,8,8,8,8,8,13,12,10,49,20,30,100,100,'13,1^14,1^21,1'),
	(1,18,86,619,0,0,0,72,72,72,72,72,72,72,8,8,8,8,8,13,12,11,50,22,30,100,100,'13,1^14,1^21,1'),
	(1,19,94,673,0,0,0,76,76,76,76,76,76,76,8,8,8,8,8,14,12,11,53,23,30,100,100,'13,1^14,1^21,1'),
	(1,20,102,727,0,0,0,79,79,79,79,79,79,79,10,10,10,10,10,14,12,12,55,24,30,100,100,'13,1^14,1^21,1'),
	(1,21,109,781,0,0,0,83,83,83,83,83,83,83,10,10,10,10,10,16,12,12,58,25,30,100,100,'13,1^14,1^21,1'),
	(1,22,114,854,0,0,0,86,86,86,86,86,86,86,10,10,10,10,10,17,12,12,60,26,30,100,100,'13,1^14,1^21,1'),
	(1,23,119,928,0,0,0,90,90,90,90,90,90,90,11,11,11,11,11,17,12,12,62,28,30,100,100,'13,1^14,1^21,1'),
	(1,24,124,1001,0,0,0,94,94,94,94,94,94,94,11,11,11,11,11,18,12,13,66,29,30,100,100,'13,1^14,1^21,1'),
	(1,25,128,1074,0,0,0,97,97,97,97,97,97,97,12,12,12,12,12,19,12,13,68,30,30,100,100,'13,1^14,1^21,1'),
	(1,26,133,1147,0,0,0,102,102,102,102,102,102,102,12,12,12,12,12,19,12,13,71,31,30,100,100,'13,1^14,1^21,1'),
	(1,27,138,1220,0,0,0,106,106,106,106,106,106,106,13,13,13,13,13,20,12,13,73,32,30,100,100,'13,1^14,1^21,1'),
	(1,28,143,1294,0,0,0,109,109,109,109,109,109,109,13,13,13,13,13,22,12,14,77,34,30,100,100,'13,1^14,1^21,1'),
	(1,29,148,1367,0,0,0,113,113,113,113,113,113,113,14,14,14,14,14,22,12,14,79,35,30,100,100,'13,1^14,1^21,1'),
	(1,30,152,1440,0,0,0,116,116,116,116,116,116,116,14,14,14,14,14,23,12,14,82,36,30,100,100,'13,1^14,1^21,1'),
	(1,31,162,1896,5,0,5,125,125,125,125,125,125,125,16,16,16,16,16,24,12,17,89,37,30,100,100,'13,1^14,1^21,1'),
	(1,32,170,2352,10,0,10,132,132,132,132,132,132,132,17,17,17,17,17,26,12,19,95,38,30,100,100,'13,1^14,1^21,1'),
	(1,33,180,2808,14,0,14,140,140,140,140,140,140,140,18,18,18,18,18,28,12,22,102,40,29,100,100,'13,1^14,1^21,1'),
	(1,34,190,3264,19,0,19,148,148,148,148,148,148,148,19,19,19,19,19,30,12,24,108,41,28,100,100,'13,1^14,1^21,1'),
	(1,35,199,3720,24,0,24,156,156,156,156,156,156,156,20,20,20,20,20,31,12,26,115,42,27,100,100,'13,1^14,1^21,1'),
	(1,36,208,4176,29,0,29,164,164,164,164,164,164,164,20,20,20,20,20,32,12,29,122,43,25,100,100,'13,1^14,1^21,1'),
	(1,37,217,4632,34,0,34,172,172,172,172,172,172,172,22,22,22,22,22,35,12,31,128,44,24,100,100,'13,1^14,1^21,1'),
	(1,38,227,5088,38,0,38,180,180,180,180,180,180,180,23,23,23,23,23,36,12,34,136,46,23,100,100,'13,1^14,1^21,1'),
	(1,39,235,5544,43,0,43,187,187,187,187,187,187,187,24,24,24,24,24,38,12,36,142,47,22,100,100,'13,1^14,1^21,1'),
	(1,40,245,6000,48,0,48,196,196,196,196,196,196,196,25,25,25,25,25,40,12,38,149,48,21,100,100,'13,1^14,1^21,1'),
	(1,41,250,6360,50,0,50,199,199,199,199,199,199,199,26,26,26,26,26,41,12,40,152,49,21,100,100,'13,1^14,1^21,1'),
	(1,42,254,6720,53,0,53,203,203,203,203,203,203,203,26,26,26,26,26,42,12,41,156,50,21,100,100,'13,1^14,1^21,1'),
	(1,43,260,7080,55,0,55,208,208,208,208,208,208,208,28,28,28,28,28,42,12,41,160,52,21,100,100,'13,1^14,1^21,1'),
	(1,44,265,7440,58,0,58,211,211,211,211,211,211,211,28,28,28,28,28,43,12,42,163,53,21,100,100,'13,1^14,1^21,1'),
	(1,45,270,7800,60,0,60,215,215,215,215,215,215,215,29,29,29,29,29,44,12,43,167,54,21,100,100,'13,1^14,1^21,1'),
	(1,46,275,8640,60,0,60,218,218,218,218,218,218,218,29,29,29,29,29,46,12,53,182,55,21,100,100,'13,1^14,1^21,1'),
	(1,47,280,9480,60,0,60,222,222,222,222,222,222,222,30,30,30,30,30,47,12,61,198,56,21,100,100,'13,1^14,1^21,1'),
	(1,48,284,10320,60,0,60,226,226,226,226,226,226,226,30,30,30,30,30,47,12,71,214,58,21,100,100,'13,1^14,1^21,1'),
	(1,49,289,11160,60,0,60,229,229,229,229,229,229,229,31,31,31,31,31,48,12,79,229,59,21,100,100,'13,1^14,1^21,1'),
	(1,50,294,12000,60,0,60,233,233,233,233,233,233,233,31,31,31,31,31,49,12,89,245,60,21,100,100,'13,1^14,1^21,1'),
	(1,51,299,14040,64,0,64,236,236,236,236,236,236,236,32,32,32,32,32,50,13,94,277,61,20,100,100,'13,1^14,1^21,1'),
	(1,52,304,16080,67,0,67,240,240,240,240,240,240,240,32,32,32,32,32,52,14,97,310,62,20,100,100,'13,1^14,1^21,1'),
	(1,53,308,18120,71,0,71,244,244,244,244,244,244,244,34,34,34,34,34,52,16,102,341,64,20,100,100,'13,1^14,1^21,1'),
	(1,54,313,20160,74,0,74,247,247,247,247,247,247,247,34,34,34,34,34,53,17,107,373,65,20,100,100,'13,1^14,1^21,1'),
	(1,55,319,22200,78,0,78,252,252,252,252,252,252,252,35,35,35,35,35,54,18,112,406,66,20,100,100,'13,1^14,1^21,1'),
	(1,56,324,24240,82,0,82,256,256,256,256,256,256,256,35,35,35,35,35,55,19,115,438,67,20,100,100,'13,1^14,1^21,1'),
	(1,57,329,26280,85,0,85,259,259,259,259,259,259,259,36,36,36,36,36,56,20,120,470,68,19,100,100,'13,1^14,1^21,1'),
	(1,58,334,28320,89,0,89,263,263,263,263,263,263,263,36,36,36,36,36,56,22,125,502,70,19,100,100,'13,1^14,1^21,1'),
	(1,59,338,30360,92,0,92,266,266,266,266,266,266,266,37,37,37,37,37,58,23,128,534,71,19,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,60,343,32400,96,30,96,270,270,270,270,270,270,270,37,37,37,37,37,59,24,133,566,72,19,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,61,348,34691,102,30,101,274,274,274,274,274,274,274,38,38,38,38,38,60,29,154,643,73,19,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,62,353,36982,109,30,104,277,277,277,277,277,277,277,38,38,38,38,38,61,34,174,719,74,18,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,63,359,39272,115,30,109,281,281,281,281,281,281,281,40,40,40,40,40,61,38,194,796,76,18,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,64,364,41563,122,30,114,284,284,284,284,284,284,284,40,40,40,40,40,62,43,215,872,77,18,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,65,368,43854,128,35,118,288,288,288,288,288,288,288,41,41,41,41,41,64,48,235,948,78,18,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,66,373,46146,136,35,122,293,293,293,293,293,293,293,41,41,41,41,41,65,53,256,1025,79,18,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,67,378,48437,142,35,126,296,296,296,296,296,296,296,42,42,42,42,42,66,58,276,1100,80,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,68,383,50728,149,35,131,300,300,300,300,300,300,300,42,42,42,42,42,67,62,296,1177,82,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,69,389,53018,155,35,136,304,304,304,304,304,304,304,43,43,43,43,43,67,67,317,1254,83,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,70,394,55309,162,40,139,307,307,307,307,307,307,307,43,43,43,43,43,68,72,337,1330,84,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,71,398,57600,168,40,144,311,311,311,311,311,311,311,44,44,44,44,44,70,77,358,1406,85,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,72,403,57600,172,40,154,314,314,314,314,314,314,314,46,46,46,46,46,71,82,366,1432,86,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,73,408,57600,174,40,162,318,318,318,318,318,318,318,47,47,47,47,47,72,86,374,1457,88,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,74,413,57600,178,40,172,322,322,322,322,322,322,322,47,47,47,47,47,73,91,382,1482,89,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,75,418,57600,180,40,180,325,325,325,325,325,325,325,48,48,48,48,48,74,96,390,1507,90,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,76,423,90000,192,45,192,329,329,329,329,329,329,329,49,49,49,49,49,76,101,480,1920,91,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,77,428,108000,204,45,204,332,332,332,332,332,332,332,50,50,50,50,50,77,106,600,2460,92,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,78,433,135600,216,45,216,336,336,336,336,336,336,336,52,52,52,52,52,78,110,713,2788,144,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,79,438,156000,228,45,228,340,340,340,340,340,340,340,53,53,53,53,53,79,115,780,3000,156,17,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,80,443,168000,240,45,240,343,343,343,343,343,343,343,54,54,54,54,54,80,120,864,3359,168,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,81,448,288000,360,45,360,347,347,347,347,347,347,347,55,55,55,55,55,82,125,960,4319,288,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,82,453,408000,480,45,480,350,350,350,350,350,350,350,56,56,56,56,56,83,130,1080,5519,408,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,83,458,528000,492,45,492,354,354,354,354,354,354,354,58,58,58,58,58,84,134,1530,5885,528,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,84,463,534000,504,45,504,358,358,358,358,358,358,358,59,59,59,59,59,85,139,1560,6120,534,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,85,468,540000,516,45,516,361,361,361,361,361,361,361,60,60,60,60,60,86,144,1631,6350,540,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,86,473,546000,528,45,528,365,365,365,365,365,365,365,61,61,61,61,61,88,149,1770,6694,546,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,87,478,552000,540,45,540,368,368,368,368,368,368,368,62,62,62,62,62,89,154,1812,7102,552,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,88,483,558000,552,45,552,372,372,372,372,372,372,372,64,64,64,64,64,90,158,1932,7440,558,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,89,488,564000,564,45,564,376,376,376,376,376,376,376,65,65,65,65,65,91,163,1980,7530,564,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(1,90,490,570000,576,45,576,379,379,379,379,379,379,379,66,66,66,66,66,92,168,2040,7620,570,16,100,100,'1,1^8,1^13,1^14,1^21,1'),
	(2,1,12,17,0,0,0,12,12,12,12,12,12,12,2,2,2,2,2,2,15,2,9,2,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,2,17,41,0,0,0,17,17,17,17,17,17,17,4,4,4,4,4,4,15,2,12,3,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,3,21,65,0,0,0,21,21,21,21,21,21,21,6,6,6,6,6,6,15,2,15,5,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,4,24,89,0,0,0,26,26,26,26,26,26,26,8,8,8,8,8,8,15,2,18,6,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,5,29,113,0,0,0,30,30,30,30,30,30,30,10,10,10,10,10,10,15,2,21,8,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,6,33,150,0,0,0,35,35,35,35,35,35,35,12,12,12,12,12,12,15,2,24,9,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,7,38,188,0,0,0,39,39,39,39,39,39,39,14,14,14,14,14,14,15,2,27,11,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,8,42,225,0,0,0,44,44,44,44,44,44,44,16,16,16,16,16,16,15,2,30,12,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,9,47,263,0,0,0,48,48,48,48,48,48,48,18,18,18,18,18,18,15,2,33,14,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,10,51,300,0,0,0,53,53,53,53,53,53,53,20,20,20,20,20,20,15,2,36,15,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,11,56,351,0,0,0,57,57,57,57,57,57,57,22,22,22,22,22,22,15,5,41,17,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,12,60,402,0,0,0,63,63,63,63,63,63,63,24,24,24,24,24,24,15,6,45,18,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,13,65,453,0,0,0,68,68,68,68,68,68,68,26,26,26,26,26,26,15,9,48,20,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,14,69,504,0,0,0,72,72,72,72,72,72,72,28,28,28,28,28,28,15,11,53,21,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,15,78,572,0,0,0,77,77,77,77,77,77,77,30,30,30,30,30,30,15,11,56,23,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,16,89,639,0,0,0,81,81,81,81,81,81,81,32,32,32,32,32,32,15,12,59,24,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,17,98,707,0,0,0,86,86,86,86,86,86,86,34,34,34,34,34,34,15,12,62,26,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,18,108,774,0,0,0,90,90,90,90,90,90,90,36,36,36,36,36,36,15,14,63,27,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,19,117,842,0,0,0,95,95,95,95,95,95,95,38,38,38,38,38,38,15,14,66,29,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,20,128,909,0,0,0,99,99,99,99,99,99,99,40,40,40,40,40,40,15,15,69,30,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,21,137,977,0,0,0,104,104,104,104,104,104,104,42,42,42,42,42,42,15,15,72,32,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,22,143,1068,0,0,0,108,108,108,108,108,108,108,44,44,44,44,44,44,15,15,75,33,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,23,149,1160,0,0,0,113,113,113,113,113,113,113,46,46,46,46,46,46,15,15,78,35,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,24,155,1251,0,0,0,117,117,117,117,117,117,117,48,48,48,48,48,48,15,17,83,36,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,25,161,1343,0,0,0,122,122,122,122,122,122,122,50,50,50,50,50,50,15,17,86,38,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,26,167,1434,0,0,0,128,128,128,128,128,128,128,52,52,52,52,52,52,15,17,89,39,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,27,173,1526,0,0,0,132,132,132,132,132,132,132,54,54,54,54,54,54,15,17,92,41,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,28,179,1617,0,0,0,137,137,137,137,137,137,137,56,56,56,56,56,56,15,18,96,42,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,29,185,1709,0,0,0,141,141,141,141,141,141,141,58,58,58,58,58,58,15,18,99,44,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,30,191,1800,0,0,0,146,146,146,146,146,146,146,60,60,60,60,60,60,15,18,102,45,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,31,203,2370,6,0,6,156,156,156,156,156,156,156,62,62,62,62,62,62,15,21,111,47,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,32,213,2940,12,0,12,165,165,165,165,165,165,165,64,64,64,64,64,64,15,24,119,48,30,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,33,225,3510,18,0,18,176,176,176,176,176,176,176,66,66,66,66,66,66,15,27,128,50,29,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,34,237,4080,24,0,24,185,185,185,185,185,185,185,68,68,68,68,68,68,15,30,135,51,28,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,35,249,4650,30,0,30,195,195,195,195,195,195,195,70,70,70,70,70,70,15,33,144,53,27,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,36,260,5220,36,0,36,206,206,206,206,206,206,206,72,72,72,72,72,72,15,36,153,54,25,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,37,272,5790,42,0,42,215,215,215,215,215,215,215,74,74,74,74,74,74,15,39,161,56,24,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,38,284,6360,48,0,48,225,225,225,225,225,225,225,76,76,76,76,76,76,15,42,170,57,23,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,39,294,6930,54,0,54,234,234,234,234,234,234,234,78,78,78,78,78,78,15,45,177,59,22,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,40,306,7500,60,0,60,245,245,245,245,245,245,245,80,80,80,80,80,80,15,48,186,60,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,41,312,7950,63,0,63,249,249,249,249,249,249,249,82,82,82,82,82,82,15,50,191,62,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,42,318,8400,66,0,66,254,254,254,254,254,254,254,84,84,84,84,84,84,15,51,195,63,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,43,326,11000,69,0,69,260,260,260,260,260,260,260,86,86,86,86,86,86,15,51,200,65,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,44,332,25000,72,0,72,264,264,264,264,264,264,264,88,88,88,88,88,88,15,53,204,66,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,45,338,35000,75,0,75,269,269,269,269,269,269,269,90,90,90,90,90,90,15,54,209,68,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,46,344,45000,75,0,75,273,273,273,273,273,273,273,92,92,92,92,92,92,15,66,228,69,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,47,350,55000,75,0,75,278,278,278,278,278,278,278,94,94,94,94,94,94,15,77,248,71,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,48,356,70000,75,0,75,282,282,282,282,282,282,282,96,96,96,96,96,96,15,89,267,72,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,49,362,85000,75,0,75,287,287,287,287,287,287,287,98,98,98,98,98,98,15,99,287,74,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,50,368,100000,75,0,75,291,291,291,291,291,291,291,100,100,100,100,100,100,15,111,306,75,21,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,51,374,130000,80,0,80,296,296,296,296,296,296,296,102,102,102,102,102,102,17,117,347,77,20,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,52,380,140000,84,0,84,300,300,300,300,300,300,300,104,104,104,104,104,104,18,122,387,78,20,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,53,386,150000,89,0,89,305,305,305,305,305,305,305,106,106,106,106,106,106,20,128,426,80,19,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,54,392,160000,93,0,93,309,309,309,309,309,309,309,108,108,108,108,108,108,21,134,467,81,19,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,55,399,170000,98,0,98,315,315,315,315,315,315,315,110,110,110,110,110,110,23,140,507,83,18,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,56,405,180000,102,0,102,320,320,320,320,320,320,320,112,112,112,112,112,112,24,144,548,84,17,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,57,411,190000,107,0,107,324,324,324,324,324,324,324,114,114,114,114,114,114,26,150,588,86,17,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,58,417,200000,111,0,111,329,329,329,329,329,329,329,116,116,116,116,116,116,27,156,627,87,16,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,59,434,400750,130,0,125,253,253,253,253,253,253,253,118,118,118,118,118,118,19,170,700,141,16,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,60,476,450813,140,0,129,258,258,258,258,258,258,258,120,120,120,120,120,120,22,185,740,194,15,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,61,517,500875,145,0,130,263,263,263,263,263,263,263,122,122,122,122,122,122,26,195,780,246,15,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,62,559,550938,150,0,140,268,268,268,268,268,268,268,124,124,124,124,124,124,29,210,800,299,15,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,63,600,601000,155,0,160,273,273,273,273,273,273,273,126,126,126,126,126,126,32,220,825,351,15,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,64,563,734167,160,0,170,277,277,277,277,277,277,277,128,128,128,128,128,128,50,241,850,401,15,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,65,525,867333,165,0,180,281,281,281,281,281,281,281,130,130,130,130,130,130,67,262,875,450,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,66,488,1000500,170,0,190,285,285,285,285,285,285,285,132,132,132,132,132,132,85,283,904,500,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,67,498,1013841,175,10,200,292,292,292,292,292,292,292,134,134,134,134,134,134,81,312,1071,600,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,68,508,1027182,180,20,225,300,300,300,300,300,300,300,136,136,136,136,136,136,77,341,1238,700,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,69,519,1040522,185,30,239,307,307,307,307,307,307,307,138,138,138,138,138,138,72,369,1404,800,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,70,529,1053863,190,40,245,315,315,315,315,315,315,315,140,140,140,140,140,140,68,398,1571,900,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,71,539,1067204,200,50,255,322,322,322,322,322,322,322,142,142,142,142,142,142,64,427,1738,1000,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,72,547,1262903,220,56,265,327,327,327,327,327,327,327,144,144,144,144,144,144,68,520,1979,1125,14,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,73,556,1458602,253,63,285,332,332,332,332,332,332,332,146,146,146,146,146,146,72,614,2219,1250,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,74,564,1654301,306,69,300,337,337,337,337,337,337,337,148,148,148,148,148,148,76,707,2460,1375,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,75,572,1850000,330,75,310,342,342,342,342,342,342,342,150,150,150,150,150,150,80,725,2700,1500,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,76,579,1900000,348,77,320,346,346,346,346,346,346,346,152,152,152,152,152,152,84,750,2960,1600,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,77,586,1950000,355,79,330,350,350,350,350,350,350,350,154,154,154,154,154,154,88,775,3000,1700,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,78,594,2000000,365,81,340,354,354,354,354,354,354,354,156,156,156,156,156,156,92,800,3100,1800,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,79,601,2050000,375,83,350,358,358,358,358,358,358,358,158,158,158,158,158,158,96,825,3200,1900,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,80,608,2100000,380,85,360,362,362,362,362,362,362,362,160,160,160,160,160,160,100,850,3300,2000,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,81,615,2480000,385,83,370,366,366,366,366,366,366,366,162,162,162,162,162,162,104,875,3350,3000,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,82,622,2860000,390,81,380,370,370,370,370,370,370,370,164,164,164,164,164,164,108,900,3400,4000,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,83,629,3240000,395,79,390,375,375,375,375,375,375,375,166,166,166,166,166,166,112,925,3450,5000,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,84,636,3620000,400,77,400,379,379,379,379,379,379,379,168,168,168,168,168,168,116,940,3500,6000,13,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,85,643,4000000,405,75,410,383,383,383,383,383,383,383,170,170,170,170,170,170,120,960,3550,7000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,86,650,4800000,410,77,420,387,387,387,387,387,387,387,172,172,172,172,172,172,124,980,3600,8000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,87,657,5600000,415,79,430,391,391,391,391,391,391,391,174,174,174,174,174,174,128,1000,3650,9000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,88,665,6400000,420,81,440,395,395,395,395,395,395,395,176,176,176,176,176,176,132,1010,3700,10000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,89,672,7200000,420,83,445,399,399,399,399,399,399,399,178,178,178,178,178,178,136,1018,3800,11000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1'),
	(2,90,679,8000000,420,85,450,403,403,403,403,403,403,403,180,180,180,180,180,180,140,1050,3900,12000,12,100,100,'1,1^2,1^8,1^13,1^14,1^15,1^16,1^17,1^21,1^31,1');