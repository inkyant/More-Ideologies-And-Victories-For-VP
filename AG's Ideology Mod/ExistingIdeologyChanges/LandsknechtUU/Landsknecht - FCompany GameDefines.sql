--==========================================================================================================================
-- Landsknecht
--==========================================================================================================================
--------------------------------
-- Landsknecht 3D model change
--------------------------------
-- UnitInfoMemberInfos & Formation
UPDATE ArtDefine_UnitInfoMemberInfos SET NumMembers = 3 WHERE UnitInfoType = 'ART_DEF_UNIT_U_GERMAN_LANDSKNECHT';
		
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,								UnitMemberInfoType,								NumMembers)
VALUES	('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT',		'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',	4),
		('ART_DEF_UNIT_U_GERMAN_LANDSKNECHT',		'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	4);
		
UPDATE ArtDefine_UnitInfos SET Formation = HonorableGunpowder WHERE Type = 'ART_DEF_UNIT_U_GERMAN_LANDSKNECHT';

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
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_U_FRENCH_MUSKETEER';

-- UnitMemberInfos
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,  ZOffset, Domain, Model,				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_2',	Scale,	ZOffset, Domain, 'dopp_a.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_LONGSWORDSMAN';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 											Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_U_GERMAN_LANDSKNECHT_3',	Scale,	ZOffset, Domain, 'landknecht_musket_a.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_FRENCH_U_MUSKETEER';
--------------------------------
-- Civilization_UnitClassOverrides
--------------------------------	
DELETE FROM Civilization_UnitClassOverrides WHERE UnitType = 'UNIT_GERMAN_PANZER';

INSERT INTO	Civilization_UnitClassOverrides
			(CivilizationType,				UnitType)
VALUES		('CIVILIZATION_GERMAN',		'UNIT_GERMAN_LANDSKNECHT');

UPDATE Civilization_UnitClassOverrides SET UnitClassType = 'UNITCLASS_TERCIO' WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';

UPDATE Units SET Class = 'UNITCLASS_TERCIO' 						WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET Combat = 25 										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET Cost = 280 										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET FaithCost = 380 									WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PrereqTech = 'TECH_GUILDS' 						WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET ObsoleteTech = 'TECH_REPLACEABLE_PARTS' 			WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET GoodyHutUpgradeUnitClass = 'UNITCLASS_RIFLEMAN' 	WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PurchaseOnly = 0									WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET PolicyType = 0										WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';
UPDATE Units SET ExtraMaintenanceCost = 1 							WHERE Type = 'UNIT_GERMAN_LANDSKNECHT';

UPDATE Unit_ClassUpgrades SET UnitClassType = 'UNITCLASS_RIFLEMAN' WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT';
--------------------------------
-- Free Promotions
--------------------------------
INSERT INTO UnitPromotions 
		(Type,									AttackFullyHealedModifier,	CannotBeChosen, LostWithUpgrade, PortraitIndex,		IconAtlas,				PediaType,			PediaEntry,								Description,						Help,									Sound)
VALUES	('PROMOTION_DOPPELSODNER',				30							1,				0,				 56,				'extraPromo',			'PEDIA_MELEE',		'TXT_KEY_PROMOTION_DOPPELSODNER',		'TXT_KEY_PROMOTION_DOPPELSODNER',	'TXT_KEY_PROMOTION_DOPPELSODNER_HELP',	'AS2D_IF_LEVELUP';


DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND PromotionType = 'PROMOTION_CITY_PLUNDER';
DELETE FROM Unit_FreePromotions WHERE UnitType = 'UNIT_GERMAN_LANDSKNECHT' AND PromotionType = 'PROMOTION_FREE_PILLAGE_MOVES';

--------------------------------
-- GameText Update
--------------------------------
UPDATE Language_en_US
SET Text = 'Late Medieval replacement for the Tercio. Only Germany may build it.[NEWLINE][NEWLINE]Has a slightly cheaper Production cost than the Tercio and the same benefits when bought as mercenary Units, but suffers from an increased maintenance cost.[NEWLINE][NEWLINE]Deals increased damages against enemy Units at full health.'
WHERE Tag = 'TXT_KEY_CIV5_GERMAN_LANDSKNECHT_HELP';

UPDATE Language_en_US
SET Text = 'Enter the era of pike and shot before anybody else with this early gunpowder unit. In addition to being unlocked a lot sooner and being a little cheaper than normal Tercios, the Landsknecht gain full XP and can move immedialty when bought, which allows them to be quickly amassed when needed. Stay aware of their increased maintenance cost however, for their availability has a price.[NEWLINE][NEWLINE]Use their early unlocking and their bonus against full health units to surprise your opponents in the first turns of your wars and break their lines quickly.'
WHERE Tag = 'TXT_KEY_CIV5_GERMAN_LANDSKNECHT_STRATEGY';
--==========================================================================================================================
-- Free Company
--==========================================================================================================================
--------------------------------
-- ArtDefine_StrategicView
--------------------------------
INSERT INTO ArtDefine_StrategicView 
		(StrategicViewType, 				TileType,	Asset)
VALUES	('ART_DEF_UNIT_FCOMPANY', 			'Unit', 	'sv_FCompany.dds');
--------------------------------
-- ArtDefine_UnitInfos
--------------------------------	
INSERT INTO ArtDefine_UnitInfos 
		(Type, 								DamageStates,	Formation)
SELECT	'ART_DEF_UNIT_FCOMPANY',	DamageStates, 	'Scout'
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_U_JAPANESE_SAMURAI';
------------------------------
-- ArtDefine_UnitInfoMemberInfos
------------------------------
INSERT INTO ArtDefine_UnitInfoMemberInfos 	
		(UnitInfoType,						UnitMemberInfoType,							NumMembers)
VALUES	('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',						4),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',						8),
		('ART_DEF_UNIT_FCOMPANY',	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',						4);
------------------------------
-- ArtDefine_UnitMemberCombats
------------------------------
INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY_POLEAXE';

INSERT INTO ArtDefine_UnitMemberCombats 
		(UnitMemberType,							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MACEMAN';
------------------------------
-- ArtDefine_UnitMemberCombatWeapons
------------------------------
INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY_POLEAXE';

INSERT INTO ArtDefine_UnitMemberCombatWeapons	
		(UnitMemberType,							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_MACEMAN';
------------------------------
-- ArtDefine_UnitMemberInfos
------------------------------
INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_1',			Scale,	ZOffset, Domain, 'free_company.fxsxml',			MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_2',			Scale,	ZOffset, Domain, 'free_company_poleaxe.fxsxml',	MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_FREE_COMPANY_POLEAXE';

INSERT INTO ArtDefine_UnitMemberInfos 	
		(Type, 										Scale,  ZOffset, Domain, Model,							MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	'ART_DEF_UNIT_MEMBER_FCOMPANY_3',			Scale,	ZOffset, Domain, 'Maceman.fxsxml',				MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_MACEMAN';
--------------------------------
-- Free Company Characteristics creation
--------------------------------
INSERT INTO UnitClasses
	(Type, Description, DefaultUnit)
VALUES
	('UNITCLASS_FCOMPANY', 'TXT_KEY_UNIT_FCOMPANY', 'UNIT_FCOMPANY');

INSERT INTO Units
	(Class, 				Type, 			PrereqTech,   Combat, Cost, FaithCost, PurchaseOnly, RequiresFaithPurchaseEnabled, Moves, CombatClass, 		  Domain, 		 MoveAfterPurchase, DefaultUnitAI, 		  Description, 				Civilopedia, 				 Strategy, 							Help, 						MilitarySupport, MilitaryProduction, Pillage, PolicyType, 			   IgnoreBuildingDefense, AdvancedStartCost, XPValueAttack, XPValueDefense, Conscription, UnitArtInfo, 			   UnitFlagAtlas, 		  UnitFlagIconOffset, IconAtlas, 		 PortraitIndex)
VALUES
	('UNITCLASS_FCOMPANY', 'UNIT_FCOMPANY', 'TECH_STEEL', 19, 	  125,  0, 		   1, 			 'false', 					   2, 	  'UNITCOMBAT_MELEE', 'DOMAIN_LAND', 1, 				'UNITAI_FAST_ATTACK', 'TXT_KEY_UNIT_FCOMPANY', 'TXT_KEY_CIV5_FCOMPANY_TEXT', 'TXT_KEY_UNIT_FCOMPANY_STRATEGY', 'TXT_KEY_UNIT_HELP_FCOMPANY', 1, 			 1, 				 1, 	  'POLICY_HONOR_FINISHER', 1, 					  40, 				 5, 			5, 				3, 			  'ART_DEF_UNIT_FCOMPANY', 'FCOMPANY_FLAG_ATLAS', 0, 				  'FCOMPANY_ATLAS', 1);

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
	('UNIT_FCOMPANY', 'PROMOTION_FORMATION_I'),
	('UNIT_FCOMPANY', 'PROMOTION_CITY_PLUNDER'),
	('UNIT_FCOMPANY', 'PROMOTION_FREE_PILLAGE_MOVES');	
	

