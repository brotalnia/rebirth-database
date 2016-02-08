/******* The Test of Righteousness quest end RP sql *********/
-- add AI for Jordan Stilwell
UPDATE `zp_mangosd`.`creature_template` SET `ScriptName`='npc_jordan_stilwell' WHERE  `entry`=6181;

-- add text
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720234, 'Let\'s get to work, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Jordan Stilwell - Say 1');
REPLACE INTO `zp_scriptdevzerod`.`script_texts` VALUES (-1720235, 'Here you are, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 7, 0, 'Jordan Stilwell - Say 2');

-- coords for the spell
REPLACE INTO `zp_mangosd`.`spell_target_position` VALUES (8912, 0, -5095.6, -785.54, 496.27, 0);

-- Ebon Hilt of Marduk, Skullforge Reaver and Julie's Dagger - updated proc rate
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=1.8 WHERE  `entry`=13361;
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=2.6 WHERE  `entry`=6660;
UPDATE `zp_mangosd`.`item_template` SET `spellppmRate_1`=1 WHERE  `entry`=14576;

-- players who die in blackrock mountain should now get ported to Searing gorge GY
REPLACE INTO `zp_mangosd`.`game_graveyard_zone` VALUES (636, 25, 0);

-- the anachronos quests for rings should be exclusive group
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8760, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 21000, 0, 0, 0, 0, 64, 0, 8759, 0, 0, 0, 0, 0, 0, 'The Path of the Invoker', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the invoker!', 'Dedication of this magnitude is a rarity. You have shown that your will is unfaltering, $N. You shall be greatly rewarded for your stalwart watch over our world.$b$bHand me your signet ring so that I may strengthen its enchantment.', NULL, '', '', '', '', 21208, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21209, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8759, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 9000, 0, 0, 0, 0, 64, 0, 8758, 0, 0, 0, 0, 0, 0, 'The Path of the Invoker', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the invoker!', 'You honor my kind, $N. Strike down the enemies of Kalimdor! Show them what it means to deface the land of eternal starlight.$b$bYou have earned another enhancement. Hand me your signet ring so that I may bolster its power.', NULL, '', '', '', '', 21207, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21208, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8758, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 3000, 0, 0, 0, 0, 64, 0, 8757, 0, 0, 0, 0, 0, 0, 'The Path of the Invoker', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the invoker!', 'Your continued defense of the children of Kalimdor has been acknowledged. Hand me your signet ring so that I may enhance its powers.', NULL, '', '', '', '', 21206, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21207, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8755, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 21000, 0, 0, 0, 0, 64, 0, 8754, 0, 0, 0, 0, 0, 0, 'The Path of the Conqueror', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the conqueror!', 'Dedication of this magnitude is a rarity. You have shown that your will is unfaltering, $N. You shall be greatly rewarded for your stalwart watch over our world.$b$bHand me your signet ring so that I may strengthen its enchantment.', NULL, '', '', '', '', 21203, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21204, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8754, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 9000, 0, 0, 0, 0, 64, 0, 8753, 0, 0, 0, 0, 0, 0, 'The Path of the Conqueror', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the conqueror!', 'You honor my kind, $N. Strike down the enemies of Kalimdor! Show them what it means to deface the land of eternal starlight.$b$bYou have earned another enhancement. Hand me your signet ring so that I may bolster its power.', NULL, '', '', '', '', 21202, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21203, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8753, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 3000, 0, 0, 0, 0, 64, 0, 8752, 0, 0, 0, 0, 0, 0, 'The Path of the Conqueror', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the conqueror!', 'Your continued defense of the children of Kalimdor has been acknowledged. Hand me your signet ring so that I may enhance its powers.', NULL, '', '', '', '', 21201, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21202, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8750, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 21000, 0, 0, 0, 0, 64, 0, 8749, 0, 0, 0, 0, 0, 0, 'The Path of the Protector', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the protector!', 'Dedication of this magnitude is a rarity. You have shown that your will is unfaltering, $N. You shall be greatly rewarded for your stalwart watch over our world.$b$bHand me your signet ring so that I may strengthen its enchantment.', NULL, '', '', '', '', 21198, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21199, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8749, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 9000, 0, 0, 0, 0, 64, 0, 8748, 0, 0, 0, 0, 0, 0, 'The Path of the Protector', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the protector!', 'You honor my kind, $N. Strike down the enemies of Kalimdor! Show them what it means to deface the land of eternal starlight.$b$bYou have earned another enhancement. Hand me your signet ring so that I may bolster its power.', NULL, '', '', '', '', 21197, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21198, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8748, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 3000, 0, 0, 0, 0, 64, 0, 8747, 0, 0, 0, 0, 0, 0, 'The Path of the Protector', '', '', 'Your rise amongst the rank of the Brood is most impressive, $N. May you never stray from the path of the protector!', 'Your continued defense of the children of Kalimdor has been acknowledged. Hand me your signet ring so that I may enhance its powers.', NULL, '', '', '', '', 21196, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21197, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8747, 0, 440, 55, 60, 0, 0, 0, 0, 0, 0, 0, 910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8747, 0, 0, 0, 0, 'The Path of the Protector', '', '', 'Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$B$BThe signet ring of the defender will offer superior protection against the forces of evil.$B$BBe warned, once you have chosen your path, you will have no recourse should you change your mind.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21196, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8752, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8747, 0, 0, 0, 0, 'The Path of the Conqueror', '', '', 'Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$B$BThe signet ring of the conqueror will greatly enhance your physical attacks.$B$BBe warned, once you have chosen your path, you will have no recourse should you change your mind.', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21201, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
REPLACE INTO `zp_mangosd`.`quest_template` VALUES (8757, 0, 440, 60, 60, 0, 0, 0, 0, 0, 0, 0, 910, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8747, 0, 0, 0, 0, 'The Path of the Invoker', '', '', 'Impressive, little one. You have gone through much trouble to gain the favor of the Bronze Flight. Your dedication is noted.$B$BThe signet ring of the invoker will greatly enhance your magical and natural abilities.$B$BBe warned, once you have chosen your path, you will have no recourse should you change your mind.', '', NULL, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21206, 0, 0, 0, 1, 0, 0, 0, 910, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 5730, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- druidical remains should now have 3% drop rate instead of 100
UPDATE `zp_mangosd`.`creature_loot_template` SET `ChanceOrQuestChance`=-3 WHERE `item`=22226 LIMIT 5;

-- remove Task Briefing items from loot ables of hive mobs
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='14475') AND (`item`='20943');
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='14475') AND (`item`='20944');
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='15449') AND (`item`='21749');

-- remove dossier drops from hive mobs in Silithus
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='11729') AND (`item`='22649');
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='11737') AND (`item`='22649');
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='15449') AND (`item`='22649');

DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='11723') AND (`item`='22650');
DELETE FROM `zp_mangosd`.`creature_loot_template` WHERE (`entry`='15449') AND (`item`='22650');

-- remove mob specific drop from reference loot tables
DELETE FROM `zp_mangosd`.`reference_loot_template` WHERE (`entry`='24076') AND (`item`='2899');
-- add Wendigo Collar to Old Icebeard's loot table
REPLACE INTO `zp_mangosd`.`creature_loot_template` VALUES ('1271', '2899', '25', '0', '1', '1', '0', '0', '0');

-- Only emerald dragons should drop dream scales
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=5319 WHERE  `entry`=5317;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=5320 WHERE  `entry`=5718;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=12477 WHERE  `entry`=12478;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=12479 WHERE  `entry`=12497;
UPDATE `zp_mangosd`.`creature_template` SET `skinloot`=100001 WHERE  `entry`=15412;