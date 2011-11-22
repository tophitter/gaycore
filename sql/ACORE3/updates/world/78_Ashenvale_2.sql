ALTER TABLE `world_db_version` CHANGE  `required_74_wolves_and_quest_protecing_our_own` `required_78_Ashenvale_2`  BIT(1);

DELETE FROM npc_spellclick_spells WHERE npc_entry=33374;
INSERT INTO npc_spellclick_spells (npc_entry, spell_id, quest_start, quest_start_active, quest_end, cast_flags, aura_required, aura_forbidden, user_type)VALUES
('33374', '62885', '13628', '1', '13628', '3', '0', '0', '0'),
('33374', '62890', '13628', '1', '13628', '3', '0', '0', '0');

UPDATE creature_template SET ScriptName='npc_brutusk', VehicleId=209, minlevel=25, maxlevel=25 WHERE entry=33386;
UPDATE creature_template SET ScriptName='', VehicleId=0, npcflag=16777216 WHERE entry=33374;
UPDATE creature_template SET minlevel=23, maxlevel=24, faction_H=14, faction_A=14 WHERE entry=33394;
UPDATE creature SET curhealth=571,curmana=618 WHERE id=33394;
UPDATE creature SET curhealth=699 WHERE id=33386;
UPDATE creature_template SET unit_flags=8, mindmg=25,maxdmg=29 WHERE entry IN(33193,33195);
UPDATE creature_template SET mindmg=45,maxdmg=59 WHERE entry IN(33201,33281);

UPDATE quest_template SET SrcSpell=65053 WHERE entry IN(28876,28493);
UPDATE quest_template SET SrcSpell=65051 WHERE entry = 13628;

DELETE FROM spell_area WHERE spell=65051;
INSERT INTO spell_area (spell, AREA, quest_start, quest_start_active, quest_end, aura_spell, racemask, gender, autocast)VALUES
('65051', '1703', '13628', '1', '13628', '0', '690 ', '2', '1'),
('65051', '3177', '13628', '1', '13805', '0', '690 ', '2', '1');

DELETE FROM script_texts WHERE entry = '-1934667';
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('8582', '-1934667', 'Very well, $c. But be careful, Brutusk can be very... spirited.', '0', 'SAY_KADRAKK');

UPDATE creature_template SET ScriptName='npc_kadrakk' WHERE entry = 8582;
UPDATE creature_template SET ScriptName='npc_dem_peon' WHERE entry = 33440;

DELETE FROM script_texts WHERE npc_entry = '33440';
INSERT INTO script_texts (npc_entry, entry, content_default, TYPE, COMMENT)VALUES
('33440', '-1934668', 'You stay close, $c. And don\'t let elfs near me!', '0', 'SAY_CHOP_1'),
('33440', '-1934669', 'Here I go! Keep an eye out...', '0', 'SAY_CHOP_2'),
('33440', '-1934670', 'There you go, $c.', '0', 'SAY_CHOP_3');
#('33440', '-1934671', '', '0', 'SAY_CHOP_4'),

DELETE FROM gameobject_loot_template WHERE entry=194349;
INSERT INTO gameobject_loot_template VALUES
('194349', '45069', '-100', '1', '0', '1', '1');

DELETE FROM gameobject_template WHERE entry=194349;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `data24`, `data25`, `data26`, `data27`, `data28`, `data29`, `data30`, `data31`, `AIName`, `ScriptName`, `WDBVerified`) VALUES
('194349','3','289','Freshly Cut Wood','','Gathering','','0','4','1','45069','0','0','0','0','0','1691','194349','30','1','0','0','0','0','0','0','0','0','0','0','24982','0','0','0','0','0','0','0','0','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','14545');

DELETE FROM creature WHERE id = 33446;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES
('33446','1','1','1','0','33446','1650.77','-2449.64','104.878','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1527.38','-2326.34','96.7904','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1431.32','-2330.15','97.5667','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1403.19','-2400.49','117.056','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1678.64','-2477.87','99.955','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1494.93','-2452.63','112.25','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1590.12','-2405.01','105.139','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1536.81','-2381.21','100.524','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1458.95','-2402.65','107.11','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1459.11','-2402.06','105.274','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1506.03','-2364.38','100.198','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1528.91','-2300.07','95.1459','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1531.72','-2446.33','106.879','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','21342','33446','1618.74','-2515.25','103.121','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1553.85','-2569.51','119.824','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1522.18','-2418.08','102.375','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1637.86','-2504.93','102.073','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1510.36','-2419.08','107.668','0','300','0','0','4979','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1403.28','-2395.73','115.151','4.08097','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1450.21','-2407.9','108.818','5.85362','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1459.21','-2359.36','95.514','5.27793','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1494.53','-2425.41','106.224','3.58147','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1497.94','-2455.57','112.739','3.12202','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1540.28','-2384','98.9464','2.29342','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1539.52','-2435.82','103.832','4.19408','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1592.26','-2398.67','108.175','0.413181','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1594','-2539.33','103.365','4.4462','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1622.8','-2524.34','96.9955','4.58364','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1641.06','-2505.27','98.5784','3.54691','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1500.23','-2455.28','112.518','2.64449','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1459.43','-2356.48','94.7135','1.98868','300','0','0','3052','0','0','0','0','0','0'),
('33446','1','1','1','0','33446','1529.32','-2325.71','98.3084','5.27558','300','0','0','3052','0','0','0','0','0','0');
