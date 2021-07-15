-- Lua activation for new beliefs
UPDATE CustomModOptions	SET Value = 1 WHERE Name = 'RELIGION_EXTENSIONS';
UPDATE CustomModOptions SET	Value = 1 WHERE	Name = 'YIELD_MODIFIER_FROM_UNITS';

INSERT INTO Beliefs
		(Type, 						Description, 						ShortDescription, 						Tooltip, 							Pantheon, 	Founder, 	Follower, 	Enhancer, 	Reformation, 	PressureChangeTradeRoute, 	FriendlyCityStateSpreadModifier, 	CombatModifierEnemyCities, 	CombatModifierFriendlyCities, 	FollowerScalerLimiter)
VALUES	('BELIEF_GOD_OF_STORMS', 	'TXT_KEY_BELIEF_GOD_OF_STORMS',		'TXT_KEY_BELIEF_GOD_OF_STORMS_SHORT', 	'TXT_KEY_BELIEF_GOD_OF_STORMS',		1, 			0, 			0, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_TRICKSTER_GOD', 	'TXT_KEY_BELIEF_TRICKSTER_GOD',		'TXT_KEY_BELIEF_TRICKSTER_GOD_SHORT', 	'TXT_KEY_BELIEF_TRICKSTER_GOD',		1, 			0, 			0, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_REVELATION', 		'TXT_KEY_BELIEF_REVELATION',		'TXT_KEY_BELIEF_REVELATION_SHORT', 		'TXT_KEY_BELIEF_REVELATION',		0, 			1, 			0, 			0, 			0,				0, 							0, 									0, 							0, 								250),
		('BELIEF_COMMUNALISM', 		'TXT_KEY_BELIEF_COMMUNALISM',		'TXT_KEY_BELIEF_COMMUNALISM_SHORT', 	'TXT_KEY_BELIEF_COMMUNALISM',		0, 			0, 			1, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_WARRIOR_MONKS', 	'TXT_KEY_BELIEF_WARRIOR_MONKS',		'TXT_KEY_BELIEF_WARRIOR_MONKS_SHORT', 	'TXT_KEY_BELIEF_WARRIOR_MONKS',		0, 			0, 			1, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_SWEAT_LODGE', 		'TXT_KEY_BELIEF_SWEAT_LODGE',		'TXT_KEY_BELIEF_SWEAT_LODGE_SHORT', 	'TXT_KEY_BELIEF_SWEAT_LODGE',		0, 			0, 			1, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_DAR_E_MEHR', 		'TXT_KEY_BELIEF_DAR_E_MEHR',		'TXT_KEY_BELIEF_DAR_E_MEHR_SHORT', 		'TXT_KEY_BELIEF_DAR_E_MEHR',		0, 			0, 			1, 			0, 			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_EMIRATES', 		'TXT_KEY_BELIEF_EMIRATES',			'TXT_KEY_BELIEF_EMIRATES_SHORT', 		'TXT_KEY_BELIEF_EMIRATES',			0, 			0, 			0, 			1,			0,				200, 						200, 								0, 							0, 								0),
		('BELIEF_ANIMISM', 			'TXT_KEY_BELIEF_ANIMISM',			'TXT_KEY_BELIEF_ANIMISM_SHORT', 		'TXT_KEY_BELIEF_ANIMISM',			0, 			0, 			0, 			1,			0,				0, 							0, 									0, 							0, 								0),
		('BELIEF_ORTHODOXY', 		'TXT_KEY_BELIEF_ORTHODOXY',			'TXT_KEY_BELIEF_ORTHODOXY_SHORT', 		'TXT_KEY_BELIEF_ORTHODOXY',			0, 			0, 			0, 			0, 			1,				0, 							0, 									15, 						15, 							0);

INSERT INTO Belief_BuildingClassFaithPurchase
		(BeliefType, 				BuildingClassType)
VALUES	('BELIEF_REVELATION', 		'BUILDINGCLASS_RELIGIOUS_LIBRARY'),
		('BELIEF_SWEAT_LODGE', 		'BUILDINGCLASS_SWEAT_LODGE'),
		('BELIEF_DAR_E_MEHR', 		'BUILDINGCLASS_DAR_E_MEHR'),
		('BELIEF_ORTHODOXY', 		'BUILDINGCLASS_COURTHOUSE'),
		('BELIEF_ORTHODOXY', 		'BUILDINGCLASS_CONSTABLE'),
		('BELIEF_ORTHODOXY', 		'BUILDINGCLASS_POLICE_STATION');
---------------------------------------------------------------------------------------------------------------------
-- Trickster God --
---------------------------------------------------------------------------------------------------------------------
INSERT Into Belief_YieldFromImprovementBuild
		(BeliefType, 				YieldType, 			Yield, 	IsEraScaling)
VALUES	('BELIEF_TRICKSTER_GOD', 	'YIELD_SCIENCE', 	12, 	0),
		('BELIEF_TRICKSTER_GOD', 	'YIELD_FAITH', 		12, 	0);
---------------------------------------------------------------------------------------------------------------------
-- God of Storms --
---------------------------------------------------------------------------------------------------------------------
INSERT Into Belief_YieldFromPillageGlobal
		(BeliefType, 				YieldType, 			Yield, 	IsEraScaling)
VALUES	('BELIEF_GOD_OF_STORMS', 	'YIELD_PRODUCTION', 15, 	0),
		('BELIEF_GOD_OF_STORMS', 	'YIELD_FAITH', 		15, 	0);
---------------------------------------------------------------------------------------------------------------------
-- Revelation --
---------------------------------------------------------------------------------------------------------------------
INSERT Into Belief_YieldFromTechUnlock
		(BeliefType, 			YieldType, 					Yield, 	IsEraScaling)
VALUES	('BELIEF_REVELATION', 	'YIELD_FAITH', 				1, 		0),
		('BELIEF_REVELATION', 	'YIELD_CULTURE', 			1, 		0),
		('BELIEF_REVELATION', 	'YIELD_GOLDEN_AGE_POINTS', 	1, 		0);

INSERT INTO BuildingClasses
		(Type, 								Description, 							DefaultBuilding, 				MaxPlayerInstances)
VALUES	('BUILDINGCLASS_RELIGIOUS_LIBRARY', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY', 	'BUILDING_RELIGIOUS_LIBRARY', 	1);

INSERT INTO Buildings
			(Type,                        BuildingClass,                     Description,                          Civilopedia,                                Help,								      Strategy,                                      ThemingBonusHelp, 											GreatWorkCount, GreatWorkSlotType, 				ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex, HolyCity, ConversionModifier, ReligiousPressureModifier, IsReformation, NumCityCostMod, GlobalFollowerPopRequired, UnlockedByBelief, FaithToVotes)
SELECT		'BUILDING_RELIGIOUS_LIBRARY', 'BUILDINGCLASS_RELIGIOUS_LIBRARY', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY_PEDIA', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY_HELP', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY_STRATEGY', 'TXT_KEY_BUILDING_RELIGIOUS_LIBRARY_THEMING_BONUS_HELP', 	3, 				'GREAT_WORK_SLOT_LITERATURE', 	'TEMPLE',       125,  -1,        1,          -1,                -1,          1,            'NEW_BELIEFS_ATLAS',	0,			   1,		 -20,				 25,						 1,			   15,			   15,						   1,               10;

INSERT INTO Building_ImprovementYieldChangesGlobal
		(BuildingType, 					ImprovementType, 		YieldType, 			Yield)
VALUES	('BUILDING_RELIGIOUS_LIBRARY', 'IMPROVEMENT_HOLY_SITE', 'YIELD_SCIENCE', 	5);

INSERT INTO Building_ThemingYieldBonus
			(BuildingType, YieldType, Yield)
VALUES		('BUILDING_RELIGIOUS_LIBRARY', 'YIELD_SCIENCE', 	6),
			('BUILDING_RELIGIOUS_LIBRARY', 'YIELD_FAITH',		4);

INSERT INTO Building_ThemingBonuses	
			(BuildingType,					Description,								 	Bonus,	SameEra,	RequiresSamePlayer,	AIPriority)
VALUES		('BUILDING_RELIGIOUS_LIBRARY',	'TXT_KEY_THEMING_BONUS_RELIGIOUS_LIBRARY',		8,		0,		    1,					2);
---------------------------------------------------------------------------------------------------------------------
--Sweat Lodge / Dar e Mehr --
---------------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingClasses 	
		(Type, 							DefaultBuilding, 		Description)
VALUES	('BUILDINGCLASS_SWEAT_LODGE', 	'BUILDING_SWEAT_LODGE', 'TXT_KEY_BUILDING_SWEAT_LODGE'),
		('BUILDINGCLASS_DAR_E_MEHR', 	'BUILDING_DAR_E_MEHR', 	'TXT_KEY_BUILDING_DAR_E_MEHR');

UPDATE Beliefs SET Tooltip = 'TXT_KEY_BUILDING_SWEAT_LODGE_TOOLTIP' WHERE Type = 'BELIEF_SWEAT_LODGE';
UPDATE Beliefs SET Tooltip = 'TXT_KEY_BUILDING_DAR_E_MEHR_TOOLTIP' WHERE Type = 'BELIEF_DAR_E_MEHR';

INSERT INTO Buildings 	
		(Type, 						BuildingClass, 					Description, 						Civilopedia, 							Strategy, 									Help,  									ReligiousPressureModifier, 	ConversionModifier, 	AlwaysHeal, Cost, UnlockedByBelief, FaithCost, NukeImmune, ConquestProb, ArtDefineTag, MinAreaSize, IconAtlas,	 			PortraitIndex)
SELECT	'BUILDING_SWEAT_LODGE', 	'BUILDINGCLASS_SWEAT_LODGE', 	'TXT_KEY_BUILDING_SWEAT_LODGE', 	'TXT_KEY_BUILDING_SWEAT_LODGE_PEDIA', 	'TXT_KEY_BUILDING_SWEAT_LODGE_STRATEGY', 	'TXT_KEY_BUILDING_SWEAT_LODGE_HELP', 	20, 						-20, 					5, 			Cost, UnlockedByBelief, FaithCost, NukeImmune, ConquestProb, ArtDefineTag, MinAreaSize, 'NEW_BELIEFS_ATLAS', 	2
FROM Buildings WHERE Type = 'BUILDING_CHURCH';

INSERT INTO Buildings 	
		(Type, 					BuildingClass, 					Description, 					Civilopedia, 							Strategy, 									Help,  									ReligiousPressureModifier, 	ConversionModifier, GreatWorkSlotType, 				GreatWorkCount, Cost, UnlockedByBelief, FaithCost, NukeImmune, ConquestProb, ArtDefineTag, MinAreaSize, IconAtlas,	 			PortraitIndex)
SELECT	'BUILDING_DAR_E_MEHR', 	'BUILDINGCLASS_DAR_E_MEHR', 	'TXT_KEY_BUILDING_DAR_E_MEHR', 	'TXT_KEY_BUILDING_DAR_E_MEHR_PEDIA', 	'TXT_KEY_BUILDING_DAR_E_MEHR_STRATEGY', 	'TXT_KEY_BUILDING_DAR_E_MEHR_HELP', 	30, 						-15, 				'GREAT_WORK_SLOT_ART_ARTIFACT', 1, 				Cost, UnlockedByBelief, FaithCost, NukeImmune, ConquestProb, ArtDefineTag, MinAreaSize, 'NEW_BELIEFS_ATLAS', 	1
FROM Buildings WHERE Type = 'BUILDING_CHURCH';

INSERT INTO Building_YieldChanges
		(BuildingType, 					YieldType, 					Yield)
VALUES	('BUILDING_RELIGIOUS_LIBRARY', 	'YIELD_FAITH', 				3),
		('BUILDING_RELIGIOUS_LIBRARY', 	'YIELD_SCIENCE', 			3),
		('BUILDING_RELIGIOUS_LIBRARY', 	'YIELD_GOLDEN_AGE_POINTS', 	3),
		('BUILDING_SWEAT_LODGE', 		'YIELD_FAITH', 				2),
		('BUILDING_SWEAT_LODGE', 		'YIELD_SCIENCE', 			2),
		('BUILDING_DAR_E_MEHR', 		'YIELD_FAITH', 				3),
		('BUILDING_DAR_E_MEHR', 		'YIELD_CULTURE', 			2);

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_RELIGIOUS_LIBRARY', 	'FLAVOR_DEFENSE', 	10),
	('BUILDING_RELIGIOUS_LIBRARY', 	'FLAVOR_SCIENCE', 	20),
	('BUILDING_RELIGIOUS_LIBRARY', 	'FLAVOR_RELIGION', 	200),
	('BUILDING_SWEAT_LODGE', 		'FLAVOR_DEFENSE', 	10),
	('BUILDING_SWEAT_LODGE', 		'FLAVOR_SCIENCE', 	20),
	('BUILDING_SWEAT_LODGE', 		'FLAVOR_RELIGION', 	30),
	('BUILDING_DAR_E_MEHR', 		'FLAVOR_CULTURE', 	20),
	('BUILDING_DAR_E_MEHR', 		'FLAVOR_RELIGION', 	40);

INSERT INTO Building_UnhappinessNeedsFlatReduction
		(BuildingType, 				YieldType, 			Yield)
VALUES	('BUILDING_SWEAT_LODGE',	'YIELD_PRODUCTION',	1),
		('BUILDING_DAR_E_MEHR',		'YIELD_CULTURE',	1); 

INSERT INTO Building_ImprovementYieldChanges
			(BuildingType, 				ImprovementType, 			YieldType, 			Yield)
VALUES		('BUILDING_SWEAT_LODGE', 	'IMPROVEMENT_CAMP',			'YIELD_SCIENCE', 	1),
			('BUILDING_SWEAT_LODGE', 	'IMPROVEMENT_PLANTATION',	'YIELD_SCIENCE', 	1);
		
INSERT INTO Building_YieldFromYieldPercent
			(BuildingType, 				YieldIn, 			YieldOut, 		Value)
VALUES		('BUILDING_DAR_E_MEHR', 	'YIELD_CULTURE', 	'YIELD_FAITH', 	10);
---------------------------------------------------------------------------------------------------------------------
-- Communalism --
---------------------------------------------------------------------------------------------------------------------
INSERT Into Belief_TradeRouteYieldChange
		(BeliefType, 			DomainType, 		YieldType, 			Yield)
VALUES	('BELIEF_COMMUNALISM', 	'DOMAIN_SEA', 		'YIELD_PRODUCTION', 3),
		('BELIEF_COMMUNALISM', 	'DOMAIN_SEA', 		'YIELD_FOOD', 		3),
		('BELIEF_COMMUNALISM', 	'DOMAIN_LAND', 		'YIELD_PRODUCTION', 3),
		('BELIEF_COMMUNALISM', 	'DOMAIN_LAND', 		'YIELD_FOOD', 		3);

INSERT Into Belief_YieldChangeAnySpecialist
		(BeliefType, 			YieldType, 			Yield)
VALUES	('BELIEF_COMMUNALISM', 	'YIELD_PRODUCTION', 2);
---------------------------------------------------------------------------------------------------------------------
-- Emirates --
---------------------------------------------------------------------------------------------------------------------
INSERT INTO Belief_YieldPerActiveTR
		(BeliefType, 		YieldType, 			Yield)
VALUES	('BELIEF_EMIRATES', 'YIELD_SCIENCE', 	2),
		('BELIEF_EMIRATES', 'YIELD_CULTURE', 	2);
---------------------------------------------------------------------------------------------------------------------
-- Animism --
---------------------------------------------------------------------------------------------------------------------
INSERT INTO Belief_YieldChangeNaturalWonder
		(BeliefType, 		YieldType, 			Yield)
VALUES	('BELIEF_ANIMISM', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'YIELD_CULTURE', 	1);

INSERT INTO Belief_UnimprovedFeatureYieldChanges
		(BeliefType, 		FeatureType, 		YieldType, 			Yield)
VALUES	('BELIEF_ANIMISM', 	'FEATURE_FOREST', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'FEATURE_FOREST', 	'YIELD_CULTURE', 	1),
		('BELIEF_ANIMISM', 	'FEATURE_OASIS', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'FEATURE_OASIS', 	'YIELD_CULTURE', 	1),
		('BELIEF_ANIMISM', 	'FEATURE_MARSH', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'FEATURE_MARSH', 	'YIELD_CULTURE', 	1),
		('BELIEF_ANIMISM', 	'FEATURE_JUNGLE', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'FEATURE_JUNGLE', 	'YIELD_CULTURE', 	1),
		('BELIEF_ANIMISM', 	'FEATURE_ATOLL', 	'YIELD_FOOD', 		1),
		('BELIEF_ANIMISM', 	'FEATURE_ATOLL', 	'YIELD_CULTURE', 	1);
---------------------------------------------------------------------------------------------------------------------
-- Orthodoxy --
---------------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET UnlockedByBelief = '1' WHERE BuildingClass = 'BUILDINGCLASS_COURTHOUSE';
UPDATE Buildings SET UnlockedByBelief = '1' WHERE BuildingClass = 'BUILDINGCLASS_CONSTABLE';
UPDATE Buildings SET UnlockedByBelief = '1' WHERE BuildingClass = 'BUILDINGCLASS_POLICE_STATION';

UPDATE Buildings SET FaithCost = '200' WHERE BuildingClass = 'BUILDINGCLASS_COURTHOUSE';
UPDATE Buildings SET FaithCost = '350' WHERE BuildingClass = 'BUILDINGCLASS_CONSTABLE';
UPDATE Buildings SET FaithCost = '600' WHERE BuildingClass = 'BUILDINGCLASS_POLICE_STATION';

INSERT INTO Belief_BuildingClassYieldChanges
		(BeliefType, 			BuildingClassType, 				YieldType, 			YieldChange)
VALUES	('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_COURTHOUSE', 	'YIELD_GOLD', 		4),
		('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_COURTHOUSE', 	'YIELD_FAITH', 		2),
		('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_CONSTABLE', 		'YIELD_GOLD', 		4),
		('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_CONSTABLE', 		'YIELD_FAITH', 		2),
		('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_POLICE_STATION', 'YIELD_GOLD', 		4),
		('BELIEF_ORTHODOXY', 	'BUILDINGCLASS_POLICE_STATION', 'YIELD_FAITH', 		2);
--==========================================================================================================================
-- PROMOTIONS
--==========================================================================================================================
-- God of Storms / Warrior Monks / Animism -- 
---------------------------------------------------------------------------------------------------------------------
--------------------------------	
-- Belief_FreePromotions
--------------------------------
INSERT INTO Belief_FreePromotions
		(BeliefType, 				PromotionType)
VALUES	('BELIEF_GOD_OF_STORMS',	'PROMOTION_GOD_OF_STORMS'),
		('BELIEF_WARRIOR_MONKS',	'PROMOTION_WARRIOR_MONK'),
		('BELIEF_ANIMISM',			'PROMOTION_ANIMISM'); 
--------------------------------	
-- UnitPromotions
--------------------------------		
INSERT INTO UnitPromotions
		(Type,                      Description,                      	Help,                                   Sound,             CannotBeChosen,	DefenseMod, ExperiencePercent,	ReligiousPressureModifier,	IgnoreTerrainCost, 	PortraitIndex,	IconAtlas,      		PediaType, 		PediaEntry)
VALUES	('PROMOTION_GOD_OF_STORMS', 'TXT_KEY_PROMOTION_GOD_OF_STORMS', 	'TXT_KEY_PROMOTION_GOD_OF_STORMS_HELP', 'AS2D_IF_LEVELUP', 1, 				0, 			0,					0,      					0, 					54,           	'extraPromo_Atlas',		'PEDIA_SHARED', 'TXT_KEY_PROMOTION_GOD_OF_STORMS'),
		('PROMOTION_WARRIOR_MONK', 	'TXT_KEY_PROMOTION_WARRIOR_MONK', 	'TXT_KEY_PROMOTION_WARRIOR_MONK_HELP',  'AS2D_IF_LEVELUP', 1, 				20, 		33,					30,      					0, 					0,           	'NewBeliefPromoAtlas',	'PEDIA_MELEE', 	'TXT_KEY_PROMOTION_WARRIOR_MONK'),
		('PROMOTION_ANIMISM', 		'TXT_KEY_PROMOTION_ANIMISM', 		'TXT_KEY_PROMOTION_ANIMISM_HELP',    	'AS2D_IF_LEVELUP', 1, 				0, 			0,					0,      					1, 					29,           	'promoVP_atlas_01',		'PEDIA_SHARED', 'TXT_KEY_PROMOTION_ANIMISM');
--------------------------------
-- UnitPromotions_UnitCombats
--------------------------------
INSERT INTO UnitPromotions_UnitCombats
		(PromotionType, 			UnitCombatType)
VALUES	('PROMOTION_WARRIOR_MONK', 	'UNITCOMBAT_MELEE'),
		('PROMOTION_WARRIOR_MONK', 	'UNITCOMBAT_GUN'),
		('PROMOTION_ANIMISM', 		'UNITCOMBAT_MISSIONARY'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_RECON'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_ARCHER'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_MELEE'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_SIEGE'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_GUN'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_HELICOPTER'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_MOUNTED'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_ARMOR'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_NAVALMELEE'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_NAVALRANGED'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_CARRIER'),
		('PROMOTION_GOD_OF_STORMS', 'UNITCOMBAT_SUBMARINE');
--------------------------------	
-- UnitPromotions_YieldChanges
--------------------------------
INSERT INTO	UnitPromotions_YieldChanges
			(PromotionType, 			YieldType,			Yield)
VALUES		('PROMOTION_GOD_OF_STORMS', 'YIELD_FAITH', 		2);
--==========================================================================================================================
-- ARTDEFINES
--==========================================================================================================================	
--------------------------------
-- IconTextureAtlases
--------------------------------
INSERT INTO IconTextureAtlases 
		(Atlas, 						IconSize, 	Filename, 						IconsPerRow, 	IconsPerColumn)
VALUES	('NewBeliefPromoAtlas', 		256, 		'PDanNewBeliefs_PI_256.dds', 	1, 				1),
		('NewBeliefPromoAtlas', 		64, 		'PDanNewBeliefs_PI_064.dds', 	1, 				1),
		('NewBeliefPromoAtlas', 		45, 		'PDanNewBeliefs_PI_045.dds', 	1, 				1),
		('NewBeliefPromoAtlas', 		32, 		'PDanNewBeliefs_PI_032.dds', 	1, 				1),
		('NewBeliefPromoAtlas', 		16, 		'PDanNewBeliefs_PI_016.dds', 	1, 				1),
		('NEW_BELIEFS_ATLAS', 			256, 		'MoreBeliefs256.dds',			3, 				1),
		('NEW_BELIEFS_ATLAS', 			128, 		'MoreBeliefs128.dds',			3, 				1),
		('NEW_BELIEFS_ATLAS', 			80, 		'MoreBeliefs080.dds',			3, 				1),
		('NEW_BELIEFS_ATLAS', 			64, 		'MoreBeliefs064.dds',			3, 				1),
		('NEW_BELIEFS_ATLAS', 			45, 		'MoreBeliefs045.dds',			3, 				1),
		('NEW_BELIEFS_ATLAS', 			32, 		'MoreBeliefs032.dds',			3, 				1);