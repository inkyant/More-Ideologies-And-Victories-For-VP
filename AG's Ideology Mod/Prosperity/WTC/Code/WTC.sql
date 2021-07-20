
INSERT INTO BuildingClasses
    (Type,                  DefaultBuilding,    Description,            MaxPlayerInstances)
VALUES
    ('BUILDINGCLASS_WTC',   'BUILDING_WTC',     'TXT_KEY_BUILDING_WTC', 1);

INSERT INTO Buildings
        (Type,              BuildingClass,          Description,            Help,                           Civilopedia,                  Strategy,                         Cost,   NumCityCostMod, NationalPopRequired,   PolicyBranchType,               PrereqTech,             MaxStartEra,    SpecialistType,               SpecialistCount,  GreatPeopleRateChange,  NukeImmune, HurryCostModifier,  MinAreaSize,    ConquestProb,   NeverCapture,   ExtraLeagueVotes,   NumTradeRouteBonus,    IconAtlas,  PortraitIndex)
VALUES  ('BUILDING_WTC',    'BUILDINGCLASS_WTC',    'TXT_KEY_BUILDING_WTC', 'TXT_KEY_BUILDING_WTC_HELP',    'TXT_KEY_BUILDING_WTC_PEDIA', 'TXT_KEY_BUILDING_WTC_STRATEGY',  125,    10,             60,                   'POLICY_BRANCH_PROSPERITY',     'TECH_ELECTRONICS',     'ERA_FUTURE',   'SPECIALIST_CIVIL_SERVANT',   1,                1,                      1,          -1,                 -1,             0,              1,              2,                  1,                      'WTC_ATLAS',0);

INSERT INTO Building_ResourceQuantity
    (BuildingType,      ResourceType,       Quantity)
VALUES
    ('BUILDING_WTC',    'RESOURCE_PAPER',   1);

INSERT INTO Building_ClassesNeededInCity
    (BuildingType,      BuildingClassType)
VALUES
    ('BUILDING_WTC',    'BUILDINGCLASS_WIRE_SERVICE');

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