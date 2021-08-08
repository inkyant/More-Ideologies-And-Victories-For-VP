
--Cooperation removal
DELETE FROM Belief_YieldPerBirth WHERE Type = 'BELIEF_PEACE_GARDENS';
DELETE FROM Beliefs WHERE Type = 'BELIEF_PEACE_GARDENS';

--Mandirs 

DELETE FROM Building_YieldModifiers WHERE BuildingType = 'BUILDING_MANDIR';

INSERT INTO Building_YieldFromBirth
		(BuildingType, 			YieldType, 				Yield)
VALUES	('BUILDING_MANDIR', 	'YIELD_FOOD', 			5),
		('BUILDING_MANDIR', 	'YIELD_SCIENCE', 		5),
		('BUILDING_MANDIR', 	'YIELD_CULTURE', 		5),
		('BUILDING_MANDIR', 	'YIELD_PRODUCTION', 	5),
		('BUILDING_MANDIR', 	'YIELD_FAITH', 			5),
		('BUILDING_MANDIR', 	'YIELD_GOLD', 			5);

UPDATE Language_en_US
SET Text = 'Gain 5 [ICON_FOOD] Food, [ICON_PRODUCTION] Production, [ICON_GOLD] Gold, [ICON_CULTURE] Culture, [ICON_RESEARCH] Science, and [ICON_PEACE] Faith when a new [ICON_CITIZEN] Citizen is born in the City, scaling with Era.[NEWLINE][NEWLINE]Boosts Pressure of [ICON_RELIGION] Religious Majority emanating from this City by 25%, and increases the City''s resistance to conversion by 10%.[NEWLINE][NEWLINE]Has a slot for a [ICON_GREAT_WORK] Great Work of Music. -1 [ICON_HAPPINESS_3] Unhappiness from [ICON_GOLD] Poverty.'
WHERE Tag = 'TXT_KEY_BUILDING_MANDIR_HELP';

UPDATE Language_en_US
SET Text = 'Can only be built in cities following a religion with the Mandirs belief. Construct this building by purchasing it with [ICON_PEACE] Faith. Build the Mandir to gain Faith, Food, and a Great Work of Music slot in the City. Provides a small amount of all yields whenever the city grows'
WHERE Tag = 'TXT_KEY_BUILDING_MANDIR_STRATEGY';
