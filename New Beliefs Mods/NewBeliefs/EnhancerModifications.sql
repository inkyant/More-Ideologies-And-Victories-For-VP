--change Orthodoxy to Ecumenism
UPDATE Beliefs SET SpreadDistanceModifier = 20 WHERE Type = 'BELIEF_HOLY_ORDER';
UPDATE Beliefs SET SpreadStrengthModifier = 20 WHERE Type = 'BELIEF_HOLY_ORDER';

UPDATE Beliefs SET PressureChangeTradeRoute = 0 WHERE Type = 'BELIEF_HOLY_ORDER';
UPDATE Beliefs SET FriendlyCityStateSpreadModifier = 0 WHERE Type = 'BELIEF_HOLY_ORDER';
UPDATE Beliefs SET ExtraVotes = 2 WHERE Type = 'BELIEF_HOLY_ORDER';

INSERT INTO Belief_HolyCityYieldChanges
		(BeliefType, 			YieldType, 		Yield)
VALUES	('BELIEF_HOLY_ORDER', 	'YIELD_GOLD', 	5),
		('BELIEF_HOLY_ORDER', 	'YIELD_FAITH', 	5);
-- Revert changes to Zealotry and Global Commandments
UPDATE Beliefs SET SpreadStrengthModifier = 0 WHERE Type = 'BELIEF_CHARITABLE_MISSIONS';
UPDATE Beliefs SET OtherReligionPressureErosion = 0 WHERE Type = 'BELIEF_HEATHEN_CONVERSION';

--Remove Policy Reduction from Prophecy
UPDATE Beliefs SET ReducePolicyRequirements = 0 WHERE Type = 'TXT_KEY_BELIEF_MESSIAH';

--rework Symbolism
UPDATE Beliefs SET HappinessPerFollowingCity = 0.25 WHERE Type = 'BELIEF_UNDERGROUND_SECT';
DELETE FROM Belief_HolyCityYieldChanges WHERE BeliefType = 'BELIEF_ITINERANT_PREACHERS';
DELETE FROM Belief_GreatPersonPoints WHERE BeliefType = 'BELIEF_ITINERANT_PREACHERS';

INSERT INTO Belief_GreatPersonPoints
		(BeliefType, 					GreatPersonType, 			Value)
VALUES	('BELIEF_ITINERANT_PREACHERS', 	'GREATPERSON_ARTIST', 		2),
		('BELIEF_ITINERANT_PREACHERS', 	'GREATPERSON_MUSICIAN', 	2),
		('BELIEF_ITINERANT_PREACHERS', 	'GREATPERSON_WRITER', 		2);

UPDATE Beliefs SET PolicyReductionWonderXFollowerCities = 8 WHERE Type = 'BELIEF_ITINERANT_PREACHERS';
UPDATE Beliefs SET CityScalerLimiter = 24 WHERE Type = 'BELIEF_ITINERANT_PREACHERS';

--Rework Mendicancy
DELETE FROM Belief_YieldPerGPT WHERE BeliefType = 'BELIEF_RELIQUARY';
UPDATE Beliefs SET OtherReligionPressureErosion = 15 WHERE Type = 'BELIEF_RELIQUARY';

INSERT INTO Belief_GreatPersonPoints
		(BeliefType, 			GreatPersonType, 			Value)
VALUES	('BELIEF_RELIQUARY', 	'GREATPERSON_MONK', 		3);

--Rework Abode of Peace / Legates
DELETE FROM Belief_YieldChangePerXForeignFollowers WHERE BeliefType = 'BELIEF_JUST_WAR';
UPDATE Beliefs SET MissionaryInfluenceCS = 10 WHERE Type = 'BELIEF_JUST_WAR';


-- Rework Syncretism / Universalism so it's a 2-way street
DELETE FROM Belief_YieldPerOtherReligionFollower WHERE BeliefType = 'BELIEF_RELIGIOUS_UNITY';

INSERT INTO Belief_YieldChangePerXForeignFollowers
		(BeliefType, 			YieldType, 		Yield)
VALUES	('BELIEF_RELIGIOUS_UNITY', 	'YIELD_GOLD', 	10),
		('BELIEF_RELIGIOUS_UNITY', 	'YIELD_FAITH', 	10);

INSERT INTO Belief_YieldPerOtherReligionFollower
		(BeliefType, 			YieldType, 			Yield)
VALUES	('BELIEF_RELIGIOUS_UNITY', 	'YIELD_PRODUCTION', 5),
		('BELIEF_RELIGIOUS_UNITY', 	'YIELD_SCIENCE', 	5);
