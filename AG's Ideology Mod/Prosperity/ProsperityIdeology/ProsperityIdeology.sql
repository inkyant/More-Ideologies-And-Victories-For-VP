--------------------------------------------------------------------------------------------------------
-- Tenets
--------------------------------------------------------------------------------------------------------
INSERT INTO PolicyBranchTypes
		(Type,							Description,							Help,										Title,							EraPrereq,		PurchaseByLevel, AIDelayNoScience)
VALUES	('POLICY_BRANCH_PROSPERITY',	'TXT_KEY_POLICY_BRANCH_PROSPERITY',		'TXT_KEY_POLICY_BRANCH_PROSPERITY_HELP',	'TXT_KEY_PROSPERITY_TITLE',		'ERA_POSTMODERN',	1,				1);

INSERT INTO Policies
		(Type,								AllCityFreeBuilding,			Description,								Civilopedia,									Help,											PolicyBranchType,				CultureCost, Level, PortraitIndex, IconAtlas,           IconAtlasAchieved)
VALUES	('POLICY_POP_ART',					'BUILDINGCLASS_POP_ART',		'TXT_KEY_POLICY_POP_ART',					'TXT_KEY_POLICY_POP_ART_PEDIA',					'TXT_KEY_POLICY_POP_ART_HELP',					'POLICY_BRANCH_PROSPERITY',		10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_COMMODITIES_EXCHANGE',		'BUILDINGCLASS_STOCK_EXCHANGE',	'TXT_KEY_POLICY_COMMODITIES_EXCHANGE',		'TXT_KEY_POLICY_COMMODITIES_EXCHANGE_PEDIA',	'TXT_KEY_POLICY_COMMODITIES_EXCHANGE_HELP',		'POLICY_BRANCH_PROSPERITY',		10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_LOBBYISTS',				NULL,							'TXT_KEY_POLICY_LOBBYISTS',					'TXT_KEY_POLICY_LOBBYISTS_PEDIA',				'TXT_KEY_POLICY_LOBBYISTS_HELP',				'POLICY_BRANCH_PROSPERITY',		10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_GOSPEL_OF_WEALTH',			NULL,							'TXT_KEY_POLICY_GOSPEL_OF_WEALTH',			'TXT_KEY_POLICY_GOSPEL_OF_WEALTH_PEDIA',		'TXT_KEY_POLICY_GOSPEL_OF_WEALTH_HELP',			'POLICY_BRANCH_PROSPERITY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_INSIDER_TRADING',			NULL,							'TXT_KEY_POLICY_INSIDER_TRADING',			'TXT_KEY_POLICY_INSIDER_TRADING_PEDIA',			'TXT_KEY_POLICY_INSIDER_TRADING_HELP',			'POLICY_BRANCH_PROSPERITY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_TOO_BIG_TO_FAIL',			NULL,							'TXT_KEY_POLICY_TOO_BIG_TO_FAIL',			'TXT_KEY_POLICY_TOO_BIG_TO_FAIL_PEDIA',			'TXT_KEY_POLICY_TOO_BIG_TO_FAIL_HELP',			'POLICY_BRANCH_PROSPERITY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_SOFT_POWER',				NULL,							'TXT_KEY_POLICY_SOFT_POWER',				'TXT_KEY_POLICY_SOFT_POWER_PEDIA',				'TXT_KEY_POLICY_SOFT_POWER_HELP',				'POLICY_BRANCH_PROSPERITY',     10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_BRAND_AMBASSADOR',			NULL,							'TXT_KEY_POLICY_BRAND_AMBASSADOR',			'TXT_KEY_POLICY_BRAND_AMBASSADOR_PEDIA',		'TXT_KEY_POLICY_BRAND_AMBASSADOR_HELP',			'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_TONNAGE_WAR',				NULL,							'TXT_KEY_POLICY_TONNAGE_WAR',				'TXT_KEY_POLICY_TONNAGE_WAR_PEDIA',				'TXT_KEY_POLICY_TONNAGE_WAR_HELP',				'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_PANOPTICISM',				NULL,							'TXT_KEY_POLICY_PANOPTICISM',				'TXT_KEY_POLICY_PANOPTICISM_PEDIA',				'TXT_KEY_POLICY_PANOPTICISM_HELP',				'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_INDIGO_ERA',				NULL,							'TXT_KEY_POLICY_INDIGO_ERA',				'TXT_KEY_POLICY_INDIGO_ERA_PEDIA',				'TXT_KEY_POLICY_INDIGO_ERA_HELP',				'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_CORPORATE_PERSONHOOD',		NULL,							'TXT_KEY_POLICY_CORPORATE_PERSONHOOD',		'TXT_KEY_POLICY_CORPORATE_PERSONHOOD_PEDIA',	'TXT_KEY_POLICY_CORPORATE_PERSONHOOD_HELP',		'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_COMPANY_TOWNS',			NULL,							'TXT_KEY_POLICY_COMPANY_TOWNS',				'TXT_KEY_POLICY_COMPANY_TOWNS_PEDIA',			'TXT_KEY_POLICY_COMPANY_TOWNS_HELP',			'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_EVERGREEN_PATENTS',		NULL,							'TXT_KEY_POLICY_EVERGREEN_PATENTS',			'TXT_KEY_POLICY_EVERGREEN_PATENTS_PEDIA',		'TXT_KEY_POLICY_EVERGREEN_PATENTS_HELP',		'POLICY_BRANCH_PROSPERITY',     10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_CAMPAIGN_CONTRIBUTIONS',	NULL,							'TXT_KEY_POLICY_CAMPAIGN_CONTRIBUTIONS',	'TXT_KEY_POLICY_CAMPAIGN_CONTRIBUTIONS_PEDIA',	'TXT_KEY_POLICY_CAMPAIGN_CONTRIBUTIONS_HELP',	'POLICY_BRANCH_PROSPERITY',		10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_HORIZONTAL_INTEGRATION',	NULL,							'TXT_KEY_POLICY_HORIZONTAL_INTEGRATION',	'TXT_KEY_POLICY_HORIZONTAL_INTEGRATION_PEDIA',	'TXT_KEY_POLICY_HORIZONTAL_INTEGRATION_HELP',	'POLICY_BRANCH_PROSPERITY',		10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
		('POLICY_PRIVATE_SPACEFLIGHT',		NULL,							'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT',		'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_PEDIA',		'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_HELP',		'POLICY_BRANCH_PROSPERITY',		10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2');


--------------------------------------------------------------------------------------------------------
-- Pop Art 
--------------------------------------------------------------------------------------------------------
INSERT INTO BuildingClasses
        (Type,                      DefaultBuilding,    Description,                NoLimit)
VALUES  ('BUILDINGCLASS_POP_ART',   'BUILDING_POP_ART', 'TXT_KEY_BUILDING_POP_ART',	1);

INSERT INTO Buildings
        (Type,                  BuildingClass,              Description,				Cost,	FaithCost,	GreatWorkCount,     NukeImmune, HurryCostModifier,    ConquestProb,   NeverCapture,    IconAtlas,  PortraitIndex,   IsDummy)
VALUES  ('BUILDING_POP_ART',	'BUILDINGCLASS_POP_ART',	'TXT_KEY_BUILDING_POP_ART',	-1,      -1,         -1,                 1,          -1,                   0,              1,               'WTC_ATLAS',0,               1);

INSERT INTO Building_YieldFromYieldPercent
		(BuildingType, 			 YieldIn, 			 YieldOut, 		Value)
VALUES	('BUILDING_POP_ART', 	'YIELD_TOURISM', 	'YIELD_GOLD', 	20);

INSERT INTO Policy_BuildingClassYieldChanges
		(PolicyType,                BuildingClassType,           YieldType,   		YieldChange)
VALUES	('POLICY_POP_ART',      	'BUILDINGCLASS_HOTEL',      'YIELD_CULTURE', 	5),
		('POLICY_POP_ART',      	'BUILDINGCLASS_STADIUM',	'YIELD_CULTURE', 	5),
		('POLICY_POP_ART',      	'BUILDINGCLASS_AIRPORT',	'YIELD_CULTURE', 	5),
		('POLICY_POP_ART',      	'BUILDINGCLASS_HOTEL',      'YIELD_PRODUCTION', 3),
		('POLICY_POP_ART',      	'BUILDINGCLASS_STADIUM',	'YIELD_PRODUCTION', 3),
		('POLICY_POP_ART',      	'BUILDINGCLASS_AIRPORT',	'YIELD_PRODUCTION', 3);

--------------------------------------------------------------------------------------------------------
-- Commodities Exchange
--------------------------------------------------------------------------------------------------------
UPDATE Policies
SET MinorResourceBonus = '1'
WHERE Type = 'POLICY_COMMODITIES_EXCHANGE';
--------------------------------------------------------------------------------------------------------
-- Lobbyists
--------------------------------------------------------------------------------------------------------
UPDATE Policies
SET MinorFriendshipDecayMod = '-25'
WHERE Type = 'POLICY_LOBBYISTS';

--TODO: add lua to give 5 Gold and 5 Culuture per turn in your Capital for each Delegate you control

--------------------------------------------------------------------------------------------------------
-- Gospel of Wealth
--------------------------------------------------------------------------------------------------------
INSERT INTO UnitPromotions
		(Type,				Description,				Help,							Sound,				OrderPriority,	DiploMissionInfluence,	PortraitIndex,	IconAtlas,			PediaType,			PediaEntry)
VALUES 	('PROMOTION_GOW',	'TXT_KEY_PROMOTION_GOW',	'TXT_KEY_PROMOTION_GOW_HELP',	'AS2D_IF_LEVELUP',	3, 				200,					41,				'PROMOTION_ATLAS',	'PEDIA_ATTRIBUTES',	'TXT_KEY_PROMOTION_GOW');

INSERT INTO Policy_FreePromotions
		(PolicyType, 				PromotionType)
VALUES	('POLICY_GOSPEL_OF_WEALTH', 'PROMOTION_GOW');

INSERT INTO UnitPromotions_CivilianUnitType
		(PromotionType, 	UnitType)
VALUES	('PROMOTION_GOW', 	'UNIT_MERCHANT');

UPDATE Policies
SET InvestmentModifier = '-10'
WHERE Type = 'POLICY_GOSPEL_OF_WEALTH';

--------------------------------------------------------------------------------------------------------
-- Insider Trading
--------------------------------------------------------------------------------------------------------
UPDATE Policies
SET FreeTradeRoute = '2'
WHERE Type = 'POLICY_INSIDER_TRADING';

UPDATE Policies
SET InternalTradeGold = '1'
WHERE Type = 'POLICY_INSIDER_TRADING';

--TODO: lua: +5:c5gold:Gold and :c5food:Food in your :c5capital: Capital for every Active :trade: Trade Route

--------------------------------------------------------------------------------------------------------
-- Too Big To Fail
--------------------------------------------------------------------------------------------------------
INSERT INTO Policy_BuildingClassYieldChanges
		(PolicyType,				BuildingClassType,           	YieldType,   	YieldChange)
VALUES	('POLICY_TOO_BIG_TO_FAIL',	'BUILDINGCLASS_BANK',			'YIELD_GOLD', 	3),
		('POLICY_TOO_BIG_TO_FAIL',	'BUILDINGCLASS_STOCK_EXCHANGE',	'YIELD_GOLD', 	3);


INSERT INTO Policy_ImprovementYieldChanges
		(PolicyType,				ImprovementType, 					YieldType, 		Yield)
VALUES	('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_TRADING_POST', 			'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_CUSTOMS_HOUSE', 		'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_ACADEMY', 				'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_MANUFACTORY', 			'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_TERRACE_FARM', 			'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_SPAIN_HACIENDA', 		'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_EKI', 					'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_KUNA', 					'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_ENCAMPMENT_SHOSHONE',	'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_POLDER', 				'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_CHATEAU', 				'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_KASBAH', 				'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_BRAZILWOOD_CAMP', 		'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_MOAI', 					'YIELD_GOLD', 	4),
		('POLICY_TOO_BIG_TO_FAIL', 'IMPROVEMENT_FEITORIA', 				'YIELD_GOLD', 	4);

--------------------------------------------------------------------------------------------------------
-- Soft Power
--------------------------------------------------------------------------------------------------------

INSERT INTO UnitPromotions
		(Type,						Description,					Help,									Sound,				OrderPriority,	DiploMissionInfluence,	PortraitIndex,	IconAtlas,			PediaType,		PediaEntry)
VALUES 	('PROMOTION_SOFT_POWER',	'TXT_KEY_PROMOTION_SOFT_POWER',	'TXT_KEY_PROMOTION_SOFT_POWER_HELP',	'AS2D_IF_LEVELUP',	3, 				30,						40,				'PROMOTION_ATLAS',	'PEDIA_DIPLO',	'TXT_KEY_PROMOTION_SOFT_POWER');

INSERT INTO Policy_FreePromotions
		(PolicyType, 				PromotionType)
VALUES	('POLICY_SOFT_POWER', 'PROMOTION_SOFT_POWER');

INSERT INTO UnitPromotions_UnitCombats
		(PromotionType,				UnitCombatType)
VALUES	('PROMOTION_SOFT_POWER',	'UNITCOMBAT_DIPLOMACY');

--TODO: DLL: reduce purchase cooldown for units

--------------------------------------------------------------------------------------------------------
-- Brand Ambassador
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Tonnage War
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Panopticism
--------------------------------------------------------------------------------------------------------

--TODO: DLL: disabling yield penalties

--------------------------------------------------------------------------------------------------------
-- Indigo Era
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Corporate Personhood
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Company Towns
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Evergreen Patents
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Campaign Contributions
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Horizontal Integration
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Private Spaceflight
--------------------------------------------------------------------------------------------------------