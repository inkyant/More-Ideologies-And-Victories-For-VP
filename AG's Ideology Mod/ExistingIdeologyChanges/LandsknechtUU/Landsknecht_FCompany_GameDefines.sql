--==========================================================================================================================
-- Landsknecht
--==========================================================================================================================
--------------------------------
-- Landsknecht 3D model change
--------------------------------
-- UnitInfoMemberInfos & Formation
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 2 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_A';
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitMemberInfoType = 'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_B';
		
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								NumMembers)
VALUES	('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT',		'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',	2),
		('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT',		'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	7);
		
UPDATE ArtDefine_UnitInfos SET Formation = 'HonorableGunpowder' WHERE Type = 'ART_DEF_UNIT_U_GERMAN_LANDSKNECHT';

-- UnitMemberCombats
INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,								EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',	EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,								EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_FRENCH_MUSKETEER';

-- UnitMemberCombatWeapons
INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,									"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',		"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,								"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_U_FRENCH_MUSKETEER';

-- UnitMemberInfos
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,  ZOffset, Domain, Model,				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',	Scale,	ZOffset, Domain, 'dopp_a.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	Scale,	ZOffset, Domain, 'landsknecht_musket_b.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_U_FRENCH_MUSKETEER';
--------------------------------
-- Civilization_UnitClassOverrides
--------------------------------	
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType = 'UNIT_GERMAN_PANZER';

INSERT INTO	Civilization_UnitClassOverrides
			(CivilizationType,			UnitClassType, 		UnitType)
VALUES		('CIVILIZATION_GERMANY',	'UNITCLASS_TERCIO',	'UNIT_GERMAN_LANDSKNECHT');

UPDATE Units SET Class = 'UNITCLASS_TERCIO' 						WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET Cost = 280 										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET FaithCost = 350 									WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PrereqTech = 'TECH_GUILDS' 						WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' 			WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_RIFLEMAN' 	WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PurchaseOnly = 0									WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PolicyType = 0										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET ExtraMaintenanceCost = 1 							WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET Combat = 25 										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_RIFLEMAN' WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';
--------------------------------
-- Free Promotions
--------------------------------
INSERT INTO UnitPromotions 
		(Type,						AttackFullyHealedMod,	CannotBeChosen, LostWithUpgrade, PortraitIndex,	IconAtlas,			PediaType,		PediaEntry,							Description,						Help,									Sound)
VALUES	('PROMOTION_DOPPELSOLDNER',	30,						1,				0,				 56,			'extraPromo_Atlas',	'PEDIA_MELEE',	'TXT_KEY_PROMOTION_DOPPELSOLDNER',	'TXT_KEY_PROMOTION_DOPPELSOLDNER',	'TXT_KEY_PROMOTION_DOPPELSOLDNER_HELP',	'AS2D_IF_LEVELUP');

INSERT INTO Unit_FreePromotions
		(UnitType, 					PromotionType)
VALUES	('UNIT_GERMAN_LANDSKNECHT', 'PROMOTION_DOPPELSOLDNER'),
		('UNIT_GERMAN_LANDSKNECHT', 'PROMOTION_FORMATION_2');

DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND PromotionType = 'PROMOTION_DOUBLE_PLUNDER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND PromotionType = 'PROMOTION_FREE_PILLAGE_MOVES';

--------------------------------
-- GameText Update
--------------------------------
UPDATE Language_en_US
SET Text = 'Late Medieval replacement for the Tercio. Only Germany may build it.[NEWLINE][NEWLINE]Has no Experience penalty and can move immediately after being purchased, but costs increased Unit [ICON_GOLD] Gold Maintenance.[NEWLINE][NEWLINE]Deals increased damage against enemy Units at full health. Starts with [COLOR_POSITIVE_TEXT]Formation I[ENDCOLOR] and [COLOR_POSITIVE_TEXT]Formation II[ENDCOLOR] Promotions.'
WHERE Tag = 'TXT_KEY_UNIT_HELP_LANDSKNECHT';

UPDATE Language_en_US
SET Text = 'Enter the era of pike and shot before anybody else with this early gunpowder unit. In addition to being unlocked a lot sooner and being a little cheaper than normal Tercios, the Landsknecht gain full XP and can move immedialty when bought, which allows them to be quickly amassed when needed. Stay aware of their increased maintenance cost however, for their availability has a price.[NEWLINE][NEWLINE]Use their early unlocking and their bonus against full health units to surprise your opponents in the first turns of your wars and break their lines quickly.'
WHERE Tag = 'TXT_KEY_UNIT_GERMAN_LANDSKNECHT_STRATEGY';

UPDATE Language_en_US
SET Text = 'The landsknecht were German mercenary pike & shot of the 16th century. Created in imitation of the legendary Swiss Reisläufer, the landsknecht would eventually supplant them as the best mercenary infantry available in Europe, fighting in almost every major engagement in the 16th century - often on both sides. In battle landsknechts generally carried pikes of up to twenty feet in length. Other weapons included Arquebuses, crossbows, and huge two-handed swords or halberds; these were used to chop the heads off of the pikes of their opponents.'
WHERE Tag = 'TXT_KEY_CIVILOPEDIA_UNITS_MEDIEVAL_LANDSKNECHT_TEXT';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Authority[ENDCOLOR] will greatly benefit warlike and expansionist civilizations.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Adopting Authority grants:[ENDCOLOR] [NEWLINE][ICON_BULLET] +25% combat bonus VS Barbarians, and receive announcements when Barbarian Camps spawn in revealed territory. [NEWLINE][ICON_BULLET] Gain [ICON_CULTURE] Culture when you kill Units and clear Barbarian Camps.[NEWLINE][ICON_BULLET] +1 [ICON_PRODUCTION] Production in every City.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Each Authority policy unlocked grants:[ENDCOLOR] [NEWLINE][ICON_BULLET] +1 [ICON_PRODUCTION] Production in every City.[NEWLINE][NEWLINE][COLOR_POSITIVE_TEXT]Adopting all policies in Authority grants:[ENDCOLOR][NEWLINE][ICON_BULLET] Unlocks building [COLOR_POSITIVE_TEXT]Alhambra[ENDCOLOR]. [NEWLINE][ICON_BULLET] Yields from [COLOR_POSITIVE_TEXT]Tribute[ENDCOLOR] Policy doubled.[NEWLINE][ICON_BULLET] Allows the purchasing of [COLOR_YELLOW]Free Companies[ENDCOLOR], [COLOR_YELLOW]Foreign Legions[ENDCOLOR], and [COLOR_YELLOW]Mercenaries[ENDCOLOR] as their prerequisite technologies are researched.[NEWLINE][ICON_BULLET] Allows for the purchase of [ICON_GREAT_GENERAL] Great Generals with [ICON_PEACE] Faith starting in the Industrial Era.'
WHERE Tag = 'TXT_KEY_POLICY_BRANCH_HONOR_HELP';
--==========================================================================================================================
-- Free Company
--==========================================================================================================================
--------------------------------
-- ArtDefine_StrategicView
--------------------------------
INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 		TileType,	Asset)
VALUES	('ART_DEF_UNIT_FCOMPANY', 	'Unit', 	'sv_b_FCompany.dds');
--------------------------------
-- ArtDefine_UnitInfos
--------------------------------	
INSERT INTO ArtDefine_UnitInfos 
		(Type, 						DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_FCOMPANY',	DamageStates, 	'UnFormed'
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_U_JAPANESE_SAMURAI';
------------------------------
-- ArtDefine_UnitInfoMemberInfos
------------------------------
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,				UnitMemberInfoType,					NumMembers)
VALUES	('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',	2),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_4',	3),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',	1),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',	1),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_4',	2),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',	1),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',	2),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',	2);
		
------------------------------
-- ArtDefine_UnitMemberCombats
------------------------------
INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_4',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_PIKEMAN';
------------------------------
-- ArtDefine_UnitMemberCombatWeapons
------------------------------
INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_4',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_PIKEMAN';
------------------------------
-- ArtDefine_UnitMemberInfos
------------------------------
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,					MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			Scale,	ZOffset, Domain, 'free_company.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			Scale,	ZOffset, Domain, 'free_company_poleaxe.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			Scale,	ZOffset, Domain, 'Maceman.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_4',			Scale,	ZOffset, Domain, 'RER_PIKE.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_PIKEMAN';
--------------------------------
-- Free Company Characteristics creation
--------------------------------
INSERT INTO UnitClasses
	(Type, Description, DefaultUnit)
VALUES
	('UNITCLASS_FCOMPANY', 'TXT_KEY_UNIT_FCOMPANY', 'UNIT_FCOMPANY');

INSERT INTO Units
		(Class, 				Type, 				PrereqTech,   Combat, Cost, FaithCost, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves, CombatClass, 		  Domain, 		 MoveAfterPurchase, DefaultUnitAI, 		  Description, 				Civilopedia, 				 Strategy, 							Help, 							MilitarySupport, 	MilitaryProduction, Pillage, 	PolicyType, 			   	IgnoreBuildingDefense, 	AdvancedStartCost, 	XPValueAttack, 	XPValueDefense, Conscription, UnitArtInfo, 			   UnitFlagAtlas, 		  UnitFlagIconOffset, IconAtlas, 		 	PortraitIndex)
VALUES	('UNITCLASS_FCOMPANY', 	'UNIT_FCOMPANY', 	'TECH_STEEL', 19, 	  125,  0, 		   1, 			 'false', 					   2, 	  'UNITCOMBAT_MELEE', 'DOMAIN_LAND', 1, 				'UNITAI_FAST_ATTACK', 'TXT_KEY_UNIT_FCOMPANY', 'TXT_KEY_CIV5_FCOMPANY_TEXT', 'TXT_KEY_UNIT_FCOMPANY_STRATEGY', 'TXT_KEY_UNIT_HELP_FCOMPANY', 	1, 			 		1, 				 	1, 	  		'POLICY_HONOR_FINISHER', 	1, 					  	40, 				5, 				5, 				3, 			  'ART_DEF_UNIT_FCOMPANY', 'FCOMPANY_FLAG_ATLAS', 0, 				  'FCOMPANY_ATLAS', 	0);

INSERT INTO Unit_ClassUpgrades
	(UnitType, UnitClassType)
VALUES
	('UNIT_FCOMPANY', 'UNITCLASS_TERCIO');
	
INSERT INTO UnitGameplay2DScripts
	(UnitType, SelectionSound, FirstSelectionSound)
VALUES
	('UNIT_FCOMPANY', 'AS2D_SELECT_PIKEMEN', 'AS2D_BIRTH_PIKEMEN');	
	
INSERT INTO Unit_AITypes
	(UnitType, UnitAIType)
VALUES
	('UNIT_FCOMPANY', 'UNITAI_ATTACK'),
	('UNIT_FCOMPANY', 'UNITAI_DEFENSE'),
	('UNIT_FCOMPANY', 'UNITAI_FAST_ATTACK');

INSERT INTO Unit_Flavors
	(UnitType, FlavorType, Flavor)
VALUES
	('UNIT_FCOMPANY', 'FLAVOR_OFFENSE', 20),
	('UNIT_FCOMPANY', 'FLAVOR_DEFENSE', 15);

INSERT INTO Unit_FreePromotions
	(UnitType, PromotionType)
VALUES
	('UNIT_FCOMPANY', 'PROMOTION_FORMATION_1'),
	('UNIT_FCOMPANY', 'PROMOTION_DOUBLE_PLUNDER'),
	('UNIT_FCOMPANY', 'PROMOTION_FREE_PILLAGE_MOVES');	
	
------------------------------
-- IconTextureAtlases
------------------------------
INSERT INTO IconTextureAtlases 
			(Atlas, 					IconSize, 	Filename, 						IconsPerRow, 	IconsPerColumn)
VALUES		('FCOMPANY_ATLAS', 			256, 		'FCOMPANY_ATLAS_256.dds',		1,				1),
			('FCOMPANY_ATLAS', 			128, 		'FCOMPANY_ATLAS_128.dds',		1, 				1),
			('FCOMPANY_ATLAS', 			80, 		'FCOMPANY_ATLAS_080.dds',		1, 				1),
			('FCOMPANY_ATLAS', 			64, 		'FCOMPANY_ATLAS_064.dds',		1, 				1),
			('FCOMPANY_ATLAS', 			45, 		'FCOMPANY_ATLAS_045.dds',		1, 				1),
			('FCOMPANY_FLAG_ATLAS', 	32, 		'FCompany_Flag_Atlas_032.dds',	1, 				1);
--==========================================================================================================================
--==========================================================================================================================
