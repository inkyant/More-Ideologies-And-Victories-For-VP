
INSERT INTO BuildingClasses
    (Type,                  DefaultBuilding,    Description,            MaxGlobalInstances)
VALUES
    ('BUILDINGCLASS_WTC',   'BUILDING_WTC',     'TXT_KEY_BUILDING_WTC', 1);

INSERT INTO Buildings
    (Type,              BuildingClass,          Description,            Help,                       Civilopedia,                Quote,                      Cost,   PolicyBranchType,               PrereqTech,             MaxStartEra,    SpecialistType,         GreatPeopleRateChange,  NukeImmune, HurryCostModifier,  MinAreaSize,    TradeRouteRecipientBonus,   TradeRouteTargetBonus,  ConquestProb,   ExtraLeagueVotes,   NumTradeRouteBonus, TradeRouteLandDistanceModifier, TradeRouteLandGoldBonus, FreePolicies,      IconAtlas,  PortraitIndex,  WonderSplashImage,  WonderSplashAnchor, WonderSplashAudio)
VALUES
    ('BUILDING_WTC',    'BUILDINGCLASS_WTC',    'TXT_KEY_BUILDING_WTC', 'TXT_KEY_WONDER_WTC_HELP',  'TXT_KEY_WONDER_WTC_PEDIA', 'TXT_KEY_WONDER_WTC_QUOTE', 1600,   'POLICY_BRANCH_PROSPERITY',     'TECH_ELECTRONICS',     'ERA_FUTURE',   'SPECIALIST_MERCHANT',  1,                      1,          -1,                 -1,             4,                          2,                      100,            2,                  1,                  25,                             100,                     1,                 'WTC_ATLAS',0,              'WTC_Splash.dds',   'R,B',              'AS2D_WONDER_SPEECH_WTC');

INSERT INTO Building_YieldChanges
    (BuildingType,      YieldType,          Yield)
VALUES
    ('BUILDING_WTC',    'YIELD_CULTURE',    2),
    ('BUILDING_WTC',    'YIELD_GOLD',       6);

INSERT INTO Building_Flavors
    (BuildingType,      FlavorType,             Flavor)
VALUES
    ('BUILDING_WTC',    'FLAVOR_CULTURE',       20),
    ('BUILDING_WTC',    'FLAVOR_GREAT_PEOPLE',  25),
    ('BUILDING_WTC',    'FLAVOR_GOLD',          30),
    ('BUILDING_WTC',    'FLAVOR_WONDER',        50);

INSERT INTO Building_FreeUnits
    (BuildingType,    UnitType,       NumUnits)
VALUES
    ('BUILDING_WTC',  'UNIT_CARAVAN', 1);

INSERT INTO Civilization_BuildingClassOverrides
    (CivilizationType,          BuildingClassType)
VALUES
    ('CIVILIZATION_BARBARIAN',  'BUILDINGCLASS_WTC'),
    ('CIVILIZATION_MINOR',      'BUILDINGCLASS_WTC');