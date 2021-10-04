
--------------------------------------------------------------------------------------------------------------------------
-- UnitClasses
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO UnitClasses
    	(Type,                          Description,                         DefaultUnit)
VALUES	('UNITCLASS_JFD_FLOWER_CLASS',  'TXT_KEY_UNIT_JFD_FLOWER_CLASS',     'UNIT_JFD_FLOWER_CLASS');

--------------------------------------------------------------------------------------------------------------------------
-- Units
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Units 	
		(Type, 						Class,	                        CombatClass, PrereqTech, Cost,      Combat, RangedCombat, Range, FaithCost, RequiresFaithPurchaseEnabled, Moves, CivilianAttackPriority, Special, Domain, DefaultUnitAI,	Description, 						Help, 									Strategy, 									Civilopedia, 							ShowInPedia, Pillage, OneShotTourism, OneShotTourismPercentOthers, AdvancedStartCost, WorkRate, ObsoleteTech, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, CombatLimit,  GoldenAgeTurns,  XPValueAttack, XPValueDefense, Conscription, MoveRate, UnitArtInfo, 					     UnitFlagAtlas, 					UnitFlagIconOffset,  IconAtlas,						PortraitIndex)
SELECT	'UNIT_JFD_FLOWER_CLASS',	'UNITCLASS_JFD_FLOWER_CLASS',	CombatClass, PrereqTech, Cost-300,  Combat+3, RangedCombat, Range, FaithCost, RequiresFaithPurchaseEnabled, Moves+2, CivilianAttackPriority, Special, Domain, DefaultUnitAI,	'TXT_KEY_UNIT_JFD_FLOWER_CLASS',	'TXT_KEY_UNIT_JFD_FLOWER_CLASS_HELP', 	'TXT_KEY_UNIT_JFD_FLOWER_CLASS_STRATEGY',  	'TXT_KEY_UNIT_JFD_FLOWER_CLASS_TEXT',	ShowInPedia, Pillage, OneShotTourism, OneShotTourismPercentOthers, AdvancedStartCost, WorkRate, ObsoleteTech, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, CombatLimit,  GoldenAgeTurns,  XPValueAttack, XPValueDefense, Conscription, MoveRate, 'ART_DEF_UNIT_JFD_FLOWER_CLASS',	 'FLOWER_CLASS_UNIT_FLAG_ATLAS',	0,					 'FLOWER_CLASS_ICON_ATLAS',	    0
FROM Units WHERE Type = 'UNIT_DESTROYER';  

UPDATE Units 
SET BaseLandAirDefense = '30' 
WHERE Type = 'UNIT_JFD_FLOWER_CLASS';

UPDATE Units 
SET AirInterceptRange = '3' 
WHERE Type = 'UNIT_JFD_FLOWER_CLASS';
--------------------------------------------------------------------------------------------------------------------------
-- UnitGameplay2DScripts
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 					SelectionSound, FirstSelectionSound)
SELECT	'UNIT_JFD_FLOWER_CLASS',	SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_DESTROYER';
--------------------------------------------------------------------------------------------------------------------------
-- Unit_AITypes
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Unit_AITypes 			
		(UnitType, 					UnitAIType)
SELECT	'UNIT_JFD_FLOWER_CLASS',	UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_DESTROYER';
--------------------------------------------------------------------------------------------------------------------------
-- Unit_Flavors
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Unit_Flavors 	
		(UnitType, 					FlavorType, Flavor)
SELECT	'UNIT_JFD_FLOWER_CLASS',	FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_DESTROYER';
------------------------------------------------------------------------------------------------------------------------
-- Unit_ClassUpgrades
------------------------------------------------------------------------------------------------------------------------
INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 					UnitClassType)
SELECT	'UNIT_JFD_FLOWER_CLASS',	UnitClassType
FROM Unit_ClassUpgrades WHERE UnitType = 'UNIT_DESTROYER';
--------------------------------------------------------------------------------------------------------------------------
-- Unit_FreePromotions
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Unit_FreePromotions 	
		(UnitType, 					PromotionType)
SELECT	'UNIT_JFD_FLOWER_CLASS',	PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_DESTROYER';

INSERT INTO Unit_FreePromotions 	
		(UnitType, 					PromotionType)
VALUES	('UNIT_JFD_FLOWER_CLASS',	'PROMOTION_SEE_INVISIBLE_SUBMARINE');
--------------------------------------------------------------------------------------------------------------------------
-- Policy_UnitClassReplacements
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Policy_UnitClassReplacements
		(PolicyType,            ReplacedUnitClassType,  ReplacementUnitClassType)
VALUES	('POLICY_ECON_GLOBAL', 'UNITCLASS_DESTROYER',   'UNITCLASS_JFD_FLOWER_CLASS');