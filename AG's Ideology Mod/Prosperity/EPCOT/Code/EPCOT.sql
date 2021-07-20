
INSERT INTO BuildingClasses
    (Type,                      DefaultBuilding,    Description,                MaxGlobalInstances)
VALUES
    ('BUILDINGCLASS_EPCOT',     'BUILDING_EPCOT',   'TXT_KEY_BUILDING_EPCOT',   1);

INSERT INTO Buildings
        (Type,              BuildingClass,          Description,                Help,                         Civilopedia,                  Quote,                         Cost,  PolicyBranchType,               PrereqTech,               MaxStartEra,  NukeImmune, HurryCostModifier,  MinAreaSize,    ConquestProb,    FreePolicies, WonderSplashImage,  WonderSplashAnchor,    IconAtlas,      PortraitIndex)
VALUES  ('BUILDING_EPCOT',  'BUILDINGCLASS_EPCOT',  'TXT_KEY_BUILDING_EPCOT',   'TXT_KEY_WONDER_EPCOT_HELP',  'TXT_KEY_WONDER_EPCOT_PEDIA', 'TXT_KEY_WONDER_EPCOT_QUOTE',  1600,  'POLICY_BRANCH_PROSPERITY',     'TECH_CORPORATIONS',     'ERA_FUTURE',  1,          -1,                 -1,             100,             1,            'EpcotSplash.dds',  'L,T',                 'EPCOT_ATLAS',  0);

INSERT INTO Building_YieldChanges
    (BuildingType,      YieldType,          Yield)
VALUES
    ('BUILDING_EPCOT',    'YIELD_CULTURE',    1),
    ('BUILDING_EPCOT',    'YIELD_SCIENCE',    1);

INSERT INTO Building_Flavors
    (BuildingType,      FlavorType,             Flavor)
VALUES
    ('BUILDING_EPCOT',    'FLAVOR_SCIENCE',       30),
    ('BUILDING_EPCOT',    'FLAVOR_CULTURE',       30),
    ('BUILDING_EPCOT',    'FLAVOR_WONDER',        50);

INSERT INTO Building_YieldFromTech
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_EPCOT', 'YIELD_SCIENCE', 50);

INSERT INTO Building_YieldFromPolicyUnlock
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_EPCOT', 'YIELD_SCIENCE', 50);

INSERT INTO Civilization_BuildingClassOverrides
    (CivilizationType,          BuildingClassType)
VALUES
    ('CIVILIZATION_BARBARIAN',  'BUILDINGCLASS_EPCOT'),
    ('CIVILIZATION_MINOR',      'BUILDINGCLASS_EPCOT');