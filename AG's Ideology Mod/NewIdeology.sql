INSERT INTO PolicyBranchTypes
	(Type,                      Description,                        Help,                                  Title,                      EraPrereq, PurchaseByLevel, AIDelayNoScience)
VALUES
	('POLICY_BRANCH_THEOCRACY', 'TXT_KEY_POLICY_BRANCH_THEOCRACY', 'TXT_KEY_POLICY_BRANCH_THEOCRACY_HELP', 'TXT_KEY_THEOCRACY_TITLE', 'ERA_ATOMIC', 1,          1),
	('POLICY_BRANCH_MONARCHY',  'TXT_KEY_POLICY_BRANCH_MONARCHY',  'TXT_KEY_POLICY_BRANCH_MONARCHY_HELP',  'TXT_KEY_MONARCHY_TITLE',  'ERA_ATOMIC', 1,          1);

INSERT INTO UnitPromotions
	(Type,                            Description,                            Help,                                          Sound,                CannotBeChosen, LostWithUpgrade,  IgnoreZOC,  MovesChange, PortraitIndex, IconAtlas,        PediaType,      PediaEntry)
VALUES
	('PROMOTION_SHAMAN_BLESSING_A',   'TXT_KEY_PROMOTION_SHAMAN_BLESSING_A',  'TXT_KEY_PROMOTION_SHAMAN_BLESSING_A_HELP',    'AS2D_IF_LEVELUP',    1,			   0,                1,          1,           58,			'ABILITY_ATLAS', 'PEDIA_SHARED', 'TXT_KEY_PEDIA_PROMOTION_SHAMAN_BLESSING_A'),
	('PROMOTION_SHAMAN_BLESSING_B',   'TXT_KEY_PROMOTION_SHAMAN_BLESSING_B',  'TXT_KEY_PROMOTION_SHAMAN_BLESSING_B_HELP',    'AS2D_IF_LEVELUP',    1,			   0,                1,          1,           58,			'ABILITY_ATLAS', 'PEDIA_SHARED', 'TXT_KEY_PEDIA_PROMOTION_SHAMAN_BLESSING_B');

UPDATE UnitPromotions
SET OpenAttack = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_A'; 

UPDATE UnitPromotions
SET RoughAttack = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_A'; 

UPDATE UnitPromotions
SET OutsideFriendlyLandsModifier = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_A';

UPDATE UnitPromotions
SET ExtraWithdrawal = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_A';

UPDATE UnitPromotions
SET ExtraWithdrawal = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_B';

UPDATE UnitPromotions
SET RangedAttackModifier = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_B';

UPDATE UnitPromotions
SET AttackAbove50HealthMod = 33 
WHERE Type = 'PROMOTION_SHAMAN_BLESSING_B';

INSERT INTO Policy_FreePromotions
	(PolicyType, PromotionType)
VALUES
	('POLICY_SHAMAN_KING', 'PROMOTION_SHAMAN_BLESSING_A'),
	('POLICY_SHAMAN_KING', 'PROMOTION_SHAMAN_BLESSING_B');


INSERT INTO UnitPromotions_UnitCombats
	(PromotionType, UnitCombatType)
VALUES
	('PROMOTION_SHAMAN_BLESSING_B', 'UNITCOMBAT_ARCHER'),
	('PROMOTION_SHAMAN_BLESSING_A', 'UNITCOMBAT_ARMOR'),
	('PROMOTION_SHAMAN_BLESSING_B', 'UNITCOMBAT_HELICOPTER');


INSERT INTO Policies
	(Type,                            Description,                             Civilopedia,                                   Help,                                         PolicyBranchType,              CultureCost, Level, PortraitIndex, IconAtlas,           IconAtlasAchieved)
VALUES
	('POLICY_PILGRIMAGE',             'TXT_KEY_POLICY_PILGRIMAGE',             'TXT_KEY_POLICY_PILGRIMAGE_PEDIA',             'TXT_KEY_POLICY_PILGRIMAGE_HELP',             'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_FIRE_TEMPLE',            'TXT_KEY_POLICY_FIRE_TEMPLE',            'TXT_KEY_POLICY_FIRE_TEMPLE_PEDIA',            'TXT_KEY_POLICY_FIRE_TEMPLE_HELP',            'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_HOLY_SEE',               'TXT_KEY_POLICY_HOLY_SEE',               'TXT_KEY_POLICY_HOLY_SEE_PEDIA',               'TXT_KEY_POLICY_HOLY_SEE_HELP',               'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_MEDITATION_AND_INSIGHT', 'TXT_KEY_POLICY_MEDITATION_AND_INSIGHT', 'TXT_KEY_POLICY_MEDITATION_AND_INSIGHT_PEDIA', 'TXT_KEY_POLICY_MEDITATION_AND_INSIGHT_HELP', 'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_RELIGIOUS_ART',          'TXT_KEY_POLICY_RELIGIOUS_ART',          'TXT_KEY_POLICY_RELIGIOUS_ART_PEDIA',          'TXT_KEY_POLICY_RELIGIOUS_ART_HELP',          'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_TITHE',                  'TXT_KEY_POLICY_TITHE',                  'TXT_KEY_POLICY_TITHE_PEDIA',                  'TXT_KEY_POLICY_TITHE_HELP',                  'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_RELIGIOUS_COURTS',       'TXT_KEY_POLICY_RELIGIOUS_COURTS',       'TXT_KEY_POLICY_RELIGIOUS_COURTS_PEDIA',       'TXT_KEY_POLICY_RELIGIOUS_COURTS_HELP',       'POLICY_BRANCH_THEOCRACY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_HOLY_BOOKS',             'TXT_KEY_POLICY_HOLY_BOOKS',             'TXT_KEY_POLICY_HOLY_BOOKS_PEDIA',             'TXT_KEY_POLICY_HOLY_BOOKS_HELP',             'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_GUIDANCE_PROPHET',       'TXT_KEY_POLICY_GUIDANCE_PROPHET',       'TXT_KEY_POLICY_GUIDANCE_PROPHET_PEDIA',       'TXT_KEY_POLICY_GUIDANCE_PROPHET_HELP',       'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_STATE_RELIGION',         'TXT_KEY_POLICY_STATE_RELIGION',         'TXT_KEY_POLICY_STATE_RELIGION_PEDIA',         'TXT_KEY_POLICY_STATE_RELIGION_HELP',         'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_BLESSING_DALAI_LAMA',    'TXT_KEY_POLICY_BLESSING_DALAI_LAMA',    'TXT_KEY_POLICY_BLESSING_DALAI_LAMA_PEDIA',    'TXT_KEY_POLICY_BLESSING_DALAI_LAMA_HELP',    'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_CALIPHATE',              'TXT_KEY_POLICY_CALIPHATE',              'TXT_KEY_POLICY_CALIPHATE_PEDIA',              'TXT_KEY_POLICY_CALIPHATE_HELP',              'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_ANCIENT_PATRIARCHATE',   'TXT_KEY_POLICY_ANCIENT_PATRIARCHATE',   'TXT_KEY_POLICY_ANCIENT_PATRIARCHATE_PEDIA',   'TXT_KEY_POLICY_ANCIENT_PATRIARCHATE_HELP',   'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_SHINTO_SHRINES',         'TXT_KEY_POLICY_SHINTO_SHRINES',         'TXT_KEY_POLICY_SHINTO_SHRINES_PEDIA',         'TXT_KEY_POLICY_SHINTO_SHRINES_HELP',         'POLICY_BRANCH_THEOCRACY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_RULE_OF_GOD',            'TXT_KEY_POLICY_RULE_OF_GOD',            'TXT_KEY_POLICY_RULE_OF_GOD_PEDIA',            'TXT_KEY_POLICY_RULE_OF_GOD_HELP',            'POLICY_BRANCH_THEOCRACY',     10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_DIVINE_REVELATION',      'TXT_KEY_POLICY_DIVINE_REVELATION',      'TXT_KEY_POLICY_DIVINE_REVELATION_PEDIA',      'TXT_KEY_POLICY_DIVINE_REVELATION_HELP',      'POLICY_BRANCH_THEOCRACY',     10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_SHAMAN_KING',			  'TXT_KEY_POLICY_SHAMAN_KING',			   'TXT_KEY_POLICY_SHAMAN_KING_PEDIA',            'TXT_KEY_POLICY_SHAMAN_KING_HELP',			'POLICY_BRANCH_THEOCRACY',     10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2');

INSERT INTO Buildings
	(Type,                           BuildingClass,                        Description,                              Civilopedia,                                  Help,								         Strategy,                                         ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,						PortraitIndex)
SELECT		
	'BUILDING_ANCIENT_PATRIARCHATE', 'BUILDINGCLASS_ANCIENT_PATRIARCHATE', 'TXT_KEY_BUILDING_ANCIENT_PATRIARCHATE', 'TXT_KEY_BUILDING_ANCIENT_PATRIARCHATE_PEDIA', 'TXT_KEY_BUILDING_ANCIENT_PATRIARCHATE_HELP', 'TXT_KEY_BUILDING_ANCIENT_PATRIARCHATE_STRATEGY', 'TEMPLE',       125,  -1,        1,          -1,                -1,          1,            'EXPANSION_SCEN_WONDER_ATLAS',	6;

INSERT INTO Buildings
	(Type,                    BuildingClass,               Description,                     Civilopedia,                            Help,								  Strategy,                                ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex)
SELECT		
	'BUILDING_INARI_SHRINE', 'BUILDINGCLASS_INARI_SHRINE', 'TXT_KEY_BUILDING_INARI_SHRINE', 'TXT_KEY_BUILDING_INARI_SHRINE_PEDIA', 'TXT_KEY_BUILDING_INARI_SHRINE_HELP', 'TXT_KEY_BUILDING_INARI_SHRINE_STRATEGY', 'TEMPLE',       125,  -1,        1,          -1,                -1,          1,            'COMMUNITY_ATLAS',	11;

INSERT INTO Buildings
	(Type,                       BuildingClass,                  Description,                        Civilopedia,                              Help,								    Strategy,                                ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex)
SELECT		
	'BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_HACHIMAN_SHRINE', 'TXT_KEY_BUILDING_HACHIMAN_SHRINE', 'TXT_KEY_BUILDING_HACHIMAN_SHRINE_PEDIA', 'TXT_KEY_BUILDING_HACHIMAN_SHRINE_HELP', 'TXT_KEY_BUILDING_HACHIMAN_SHRINE_STRATEGY', 'TEMPLE',       125,  -1,        1,          -1,                -1,          1,        'COMMUNITY_ATLAS',	11;

INSERT INTO Buildings
	(Type,                    BuildingClass,                 Description,                      Civilopedia,                            Help,								  Strategy,                                ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex)
SELECT		
	'BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_TENJIN_SHRINE', 'TXT_KEY_BUILDING_TENJIN_SHRINE', 'TXT_KEY_BUILDING_TENJIN_SHRINE_PEDIA', 'TXT_KEY_BUILDING_TENJIN_SHRINE_HELP', 'TXT_KEY_BUILDING_TENJIN_SHRINE_STRATEGY', 'TEMPLE',       125,  -1,        1,          -1,                -1,          1,          'COMMUNITY_ATLAS',	11;

INSERT INTO Buildings
	(Type,                    BuildingClass,                 Description,                      Civilopedia,                            Help,								  Strategy,                                ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex)
SELECT		
	'BUILDING_SENGEN_SHRINE', 'BUILDINGCLASS_SENGEN_SHRINE', 'TXT_KEY_BUILDING_SENGEN_SHRINE', 'TXT_KEY_BUILDING_SENGEN_SHRINE_PEDIA', 'TXT_KEY_BUILDING_SENGEN_SHRINE_HELP', 'TXT_KEY_BUILDING_SENGEN_SHRINE_STRATEGY', 'TEMPLE',       125,  -1,        1,          -1,                -1,          1,          'COMMUNITY_ATLAS',	11;

INSERT INTO Buildings
	(Type,                        BuildingClass,                     Description,                          Civilopedia,                                 Help,								      Strategy,                                      ArtDefineTag,   Cost, FaithCost, NukeImmune, HurryCostModifier, MinAreaSize, NeverCapture, IconAtlas,			PortraitIndex)
SELECT		
	'BUILDING_SHRINE_FOUNDATION', 'BUILDINGCLASS_SHRINE_FOUNDATION', 'TXT_KEY_BUILDING_SHRINE_FOUNDATION', 'TXT_KEY_BUILDING_SHRINE_FOUNDATION_PEDIA', 'TXT_KEY_BUILDING_SHRINE_FOUNDATION_HELP', 'TXT_KEY_BUILDING_SHRINE_FOUNDATION_STRATEGY', 'TEMPLE',       -1,  -1,        1,          -1,                -1,          1,          'COMMUNITY_ATLAS',	    11;

UPDATE Policies
SET PressureMod = '25'
WHERE Type = 'POLICY_PILGRIMAGE'; 

UPDATE Policies
SET PressureMod = '25'
WHERE Type = 'POLICY_FIRE_TEMPLE'; 

UPDATE Policies
SET PressureMod = '25'
WHERE Type = 'POLICY_HOLY_SEE'; 

INSERT INTO Policy_CapitalYieldChanges
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_RULE_OF_GOD', 'YIELD_FOOD', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_GOLD', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_CULTURE', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_SCIENCE', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_FAITH', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_PRODUCTION', 10),
	('POLICY_RULE_OF_GOD', 'YIELD_TOURISM', 10);

INSERT INTO Policy_FaithPurchaseUnitClasses 
	(PolicyType, UnitClassType)
SELECT
	'POLICY_RULE_OF_GOD' , 'UNITCLASS_MUSICIAN';


INSERT INTO Policy_ImprovementYieldChanges
	(PolicyType,                 ImprovementType,         YieldType,    Yield)
VALUES
	('POLICY_PILGRIMAGE',        'IMPROVEMENT_HOLY_SITE', 'YIELD_FAITH', 5),
	('POLICY_GUIDANCE_PROPHET',  'IMPROVEMENT_HOLY_SITE', 'YIELD_FOOD', 3),
	('POLICY_GUIDANCE_PROPHET',  'IMPROVEMENT_HOLY_SITE', 'YIELD_PRODUCTION', 3),
	('POLICY_GUIDANCE_PROPHET',  'IMPROVEMENT_HOLY_SITE', 'YIELD_GOLD', 3),
	('POLICY_GUIDANCE_PROPHET',  'IMPROVEMENT_HOLY_SITE', 'YIELD_TOURISM', 3),
	('POLICY_DIVINE_REVELATION', 'IMPROVEMENT_HOLY_SITE', 'YIELD_SCIENCE', 10);

INSERT INTO Policy_GreatWorkYieldChanges
	(PolicyType,           YieldType,      Yield)
VALUES
	('POLICY_HOLY_BOOKS', 'YIELD_FAITH', 2),
	('POLICY_HOLY_BOOKS', 'YIELD_SCIENCE', 1),
	('POLICY_RELIGIOUS_ART', 'YIELD_CULTURE', 1),
	('POLICY_RELIGIOUS_ART', 'YIELD_FAITH', 1);

UPDATE Policies
SET SharedReligionTourismModifier = '15'
WHERE Type = 'POLICY_HOLY_BOOKS'; 

UPDATE Policies
SET FreeWCVotes = '1'
WHERE Type = 'POLICY_HOLY_SEE'; 

INSERT INTO Policy_SpecialistExtraYields
	(PolicyType,                      YieldType,      Yield)
VALUES
	('POLICY_MEDITATION_AND_INSIGHT', 'YIELD_SCIENCE', 2);

UPDATE Policies
SET FaithCostModifier = '-10'
WHERE Type = 'POLICY_MEDITATION_AND_INSIGHT'; 

UPDATE Policies
SET FaithCostModifier = '-10'
WHERE Type = 'POLICY_RELIGIOUS_ART'; 

UPDATE Policies
SET FaithCostModifier = '-10'
WHERE Type = 'POLICY_TITHE'; 

UPDATE Policies
SET FaithCostModifier = '-10'
WHERE Type = 'POLICY_RELIGIOUS_COURTS'; 

INSERT INTO Policy_FreeUnitClasses
	(PolicyType,                UnitClassType,       Count)
VALUES
    ('POLICY_GUIDANCE_PROPHET', 'UNITCLASS_PROPHET', 1),
	('POLICY_STATE_RELIGION',   'UNITCLASS_PROPHET', 1);

UPDATE Policies
SET IncludesOneShotFreeUnits = 1
WHERE Type = 'POLICY_GUIDANCE_PROPHET';

UPDATE Policies
SET IncludesOneShotFreeUnits = 1
WHERE Type = 'POLICY_STATE_RELIGION';

INSERT INTO Policy_ReligionYieldMod
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_STATE_RELIGION', 'YIELD_FAITH', 10),
	('POLICY_STATE_RELIGION', 'YIELD_PRODUCTION', 5),
	('POLICY_STATE_RELIGION', 'YIELD_GOLD', 5);

UPDATE Policies
SET SharedReligionTourismModifier = '15'
WHERE Type = 'POLICY_BLESSING_DALAI_LAMA'; 
	
UPDATE Policies
SET PuppetYieldPenaltyMod = '30'
WHERE Type = 'POLICY_CALIPHATE'; 

INSERT INTO BuildingClasses
	(Type, Description,                                                             DefaultBuilding,                MaxPlayerInstances)
VALUES
	('BUILDINGCLASS_ANCIENT_PATRIARCHATE', 'TXT_KEY_BUILDING_ANCIENT_PATRIARCHATE', 'BUILDING_ANCIENT_PATRIARCHATE', 5),
	('BUILDINGCLASS_INARI_SHRINE',         'TXT_KEY_BUILDING_INARI_SHRINE',         'BUILDING_INARI_SHRINE',         -1),
	('BUILDINGCLASS_HACHIMAN_SHRINE',      'TXT_KEY_BUILDING_HACHIMAN_SHRINE',      'BUILDING_HACHIMAN_SHRINE',      -1),
	('BUILDINGCLASS_TENJIN_SHRINE',        'TXT_KEY_BUILDING_TENJIN_SHRINE',        'BUILDING_TENJIN_SHRINE',        -1),
	('BUILDINGCLASS_SENGEN_SHRINE',        'TXT_KEY_BUILDING_SENGEN_SHRINE',        'BUILDING_SENGEN_SHRINE',        -1),
	('BUILDINGCLASS_SHRINE_FOUNDATION',    'TXT_KEY_BUILDING_SHRINE_FOUNDATION',    'BUILDING_SHRINE_FOUNDATION',    -1);

INSERT INTO Building_YieldFromFaithPurchase
	(BuildingType,					    YieldType,			Yield)
VALUES		
	('BUILDING_ANCIENT_PATRIARCHATE',	'YIELD_CULTURE',	20),
	('BUILDING_ANCIENT_PATRIARCHATE',	'YIELD_GOLD',	    20);

UPDATE Buildings
SET PolicyType = 'POLICY_ANCIENT_PATRIARCHATE'
WHERE Type = 'BUILDING_ANCIENT_PATRIARCHATE'; 

INSERT INTO Policy_BuildingClassYieldChanges
	(PolicyType,                BuildingClassType,           YieldType,   YieldChange)
VALUES
	('POLICY_FIRE_TEMPLE',      'BUILDINGCLASS_TEMPLE',      'YIELD_FAITH', 3),
	('POLICY_FIRE_TEMPLE',      'BUILDINGCLASS_TEMPLE',      'YIELD_CULTURE', 3),
	('POLICY_FIRE_TEMPLE',      'BUILDINGCLASS_TEMPLE',      'YIELD_FOOD', 3),
	('POLICY_TITHE',            'BUILDINGCLASS_MOSQUE',      'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_CATHEDRAL',   'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_PAGODA',      'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_SYNAGOGUE',   'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_MANDIR',      'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_STUPA',       'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_CHURCH',      'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_ORDER',       'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_SWEAT_LODGE', 'YIELD_GOLD', 2),
	('POLICY_TITHE',            'BUILDINGCLASS_MONASTERY',   'YIELD_GOLD', 2),
	('POLICY_RELIGIOUS_COURTS', 'BUILDINGCLASS_COURTHOUSE',  'YIELD_GOLD', 3),
	('POLICY_RELIGIOUS_COURTS', 'BUILDINGCLASS_COURTHOUSE',  'YIELD_FAITH', 3),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_TRADER_SIDS',        'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_HEXXON_REFINERY',    'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_GIORGIO_ARMEIER',    'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_FIRAXITE_MATERIALS', 'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_GIORGIO_ARMEIER',    'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_CIVILIZED_JEWELERS', 'YIELD_FAITH', 2),
	('POLICY_BLESSING_DALAI_LAMA', 'BUILDINGCLASS_LANDSEA_EXTRACTORS', 'YIELD_FAITH', 2),
	('POLICY_CALIPHATE',           'BUILDINGCLASS_COURTHOUSE',  'YIELD_HAPPINESS', 1),
	('POLICY_ANCIENT_PATRIARCHATE', 'BUILDINGCLASS_ANCIENT_PATRIARCHATE',  'YIELD_FAITH', 5),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_MOSQUE',      'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_CATHEDRAL',   'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_PAGODA',      'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_SYNAGOGUE',   'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_MANDIR',      'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_STUPA',       'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_CHURCH',      'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_ORDER',       'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_SWEAT_LODGE', 'YIELD_SCIENCE', 2),
	('POLICY_DIVINE_REVELATION',    'BUILDINGCLASS_MONASTERY',   'YIELD_SCIENCE', 2);

INSERT INTO Policy_FreeBuilding
	(PolicyType,			BuildingClassType,				    Count)
VALUES		
	('POLICY_SHINTO_SHRINES',	'BUILDINGCLASS_SHRINE_FOUNDATION',	100);

INSERT INTO Building_ClassesNeededInCity
	(BuildingType,                BuildingClassType)
VALUES
	('BUILDING_INARI_SHRINE',     'BUILDINGCLASS_SHRINE_FOUNDATION'),
	('BUILDING_HACHIMAN_SHRINE',  'BUILDINGCLASS_SHRINE_FOUNDATION'),
	('BUILDING_TENJIN_SHRINE',    'BUILDINGCLASS_SHRINE_FOUNDATION'),
	('BUILDING_SENGEN_SHRINE',    'BUILDINGCLASS_SHRINE_FOUNDATION');

INSERT INTO Building_GlobalYieldModifiers
	(BuildingType,                YieldType,    Yield)
VALUES
	('BUILDING_INARI_SHRINE',     'YIELD_FOOD',    50),
	('BUILDING_TENJIN_SHRINE',    'YIELD_SCIENCE', 15);

INSERT INTO Building_DomainFreeExperiencesGlobal
	(BuildingType, DomainType, Experience)
VALUES
	('BUILDING_HACHIMAN_SHRINE', 'DOMAIN_LAND', 20),
	('BUILDING_HACHIMAN_SHRINE', 'DOMAIN_AIR',  20),
	('BUILDING_HACHIMAN_SHRINE', 'DOMAIN_SEA',  20);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GRANARY', 'YIELD_FAITH', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GRANARY', 'YIELD_FOOD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GRANARY', 'YIELD_GOLD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_AQUEDUCT', 'YIELD_FAITH', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_AQUEDUCT', 'YIELD_FOOD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_AQUEDUCT', 'YIELD_GOLD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GROCER', 'YIELD_FAITH', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GROCER', 'YIELD_FOOD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_GROCER', 'YIELD_GOLD', 1),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_HOSPITAL', 'YIELD_FAITH', 3),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_HOSPITAL', 'YIELD_FOOD', 3),
	('BUILDING_INARI_SHRINE', 'BUILDINGCLASS_HOSPITAL', 'YIELD_GOLD', 5),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_BARRACKS', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_BARRACKS', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_BARRACKS', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARMORY', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARMORY', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARMORY', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_ACADEMY', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_ACADEMY', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_ACADEMY', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_WALLS', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_WALLS', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_WALLS', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_CASTLE', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_CASTLE', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_CASTLE', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARSENAL', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARSENAL', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_ARSENAL', 'YIELD_PRODUCTION', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_BASE', 'YIELD_FAITH', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_BASE', 'YIELD_CULTURE', 1),
	('BUILDING_HACHIMAN_SHRINE', 'BUILDINGCLASS_MILITARY_BASE', 'YIELD_PRODUCTION', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LIBRARY', 'YIELD_FAITH', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LIBRARY', 'YIELD_SCIENCE', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LIBRARY', 'YIELD_GOLDEN_AGE_POINTS', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_UNIVERSITY', 'YIELD_FAITH', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_UNIVERSITY', 'YIELD_SCIENCE', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_UNIVERSITY', 'YIELD_GOLDEN_AGE_POINTS', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_PUBLIC_SCHOOL', 'YIELD_FAITH', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_PUBLIC_SCHOOL', 'YIELD_SCIENCE', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_PUBLIC_SCHOOL', 'YIELD_GOLDEN_AGE_POINTS', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LABORATORY', 'YIELD_FAITH', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LABORATORY', 'YIELD_SCIENCE', 1),
	('BUILDING_TENJIN_SHRINE', 'BUILDINGCLASS_LABORATORY', 'YIELD_GOLDEN_AGE_POINTS', 1),
	('BUILDING_SENGEN_SHRINE', 'BUILDINGCLASS_SHRINE', 'YIELD_FAITH', 5),
	('BUILDING_SENGEN_SHRINE', 'BUILDINGCLASS_TEMPLE', 'YIELD_FAITH', 5);

INSERT INTO Building_ImprovementYieldChanges
	(BuildingType, ImprovementType, YieldType, Yield)
VALUES
	('BUILDING_SENGEN_SHRINE', 'IMPROVEMENT_HOLY_SITE', 'YIELD_FAITH', 5),
	('BUILDING_SENGEN_SHRINE', 'IMPROVEMENT_HOLY_SITE', 'YIELD_CULTURE', 5);
	

UPDATE Buildings
SET PolicyType = 'POLICY_SHRINE_FOUNDATION'
WHERE Type = 'BUILDING_INARI_SHRINE'; 

UPDATE Buildings
SET ExtraMissionarySpreadsGlobal = '1'
WHERE Type = 'BUILDING_ANCIENT_PATRIARCHATE'; 

UPDATE Buildings
SET ExtraMissionaryStrengthGlobal = '100'
WHERE Type = 'BUILDING_ANCIENT_PATRIARCHATE'; 

UPDATE Buildings
SET MutuallyExclusiveGroup = '113'
WHERE Type = 'BUILDING_INARI_SHRINE'; 

UPDATE Buildings
SET MutuallyExclusiveGroup = '113'
WHERE Type = 'BUILDING_HACHIMAN_SHRINE'; 

UPDATE Buildings
SET MutuallyExclusiveGroup = '113'
WHERE Type = 'BUILDING_TENJIN_SHRINE'; 

UPDATE Buildings
SET MutuallyExclusiveGroup = '113'
WHERE Type = 'BUILDING_SENGEN_SHRINE'; 











