--Rework Way of the Pilgrim
UPDATE Beliefs SET MissionaryInfluenceCS = 0 WHERE Type = 'BELIEF_TITHE';
DELETE FROM Belief_YieldFromForeignSpread WHERE BeliefType = 'BELIEF_TITHE';

--Rework Apsotolic Tradition 
INSERT INTO Belief_YieldFromForeignSpread
		(BeliefType, 			YieldType, 			Yield)
VALUES	('BELIEF_PILGRIMAGE', 	'YIELD_TOURISM', 	15);

UPDATE Belief_YieldFromSpread SET Yield = 15 WHERE BeliefType = 'BELIEF_PILGRIMAGE';

