--Remove or rework Way of the Pilgrim / Way of Noble Truths
--UPDATE Beliefs SET MissionaryInfluenceCS = 0 WHERE Type = 'BELIEF_TITHE';

DELETE FROM Belief_YieldFromForeignSpread WHERE Type = 'BELIEF_TITHE';
DELETE FROM Beliefs WHERE Type = 'BELIEF_TITHE';
--Rework Apsotolic Tradition 
DELETE FROM Belief_YieldFromTechUnlock WHERE BeliefType = 'BELIEF_PILGRIMAGE';

INSERT INTO Belief_YieldFromForeignSpread
		(BeliefType, 			YieldType, 			Yield)
VALUES	('BELIEF_PILGRIMAGE', 	'YIELD_TOURISM', 	15);

UPDATE Belief_YieldFromSpread SET Yield = 15 WHERE BeliefType = 'BELIEF_PILGRIMAGE';

UPDATE Language_en_US
SET Text = 'Unlocks [COLOR_POSITIVE_TEXT]Apostolic Palace National Wonder[ENDCOLOR] (+4 [ICON_PEACE] Faith, +4 [ICON_GOLDEN_AGE] Golden Age Points; +5 [ICON_GOLDEN_AGE] Golden Age Points from [ICON_RELIGION] Holy Sites; unlocks [COLOR_POSITIVE_TEXT]Reformation Belief[ENDCOLOR]). When you spread your [ICON_RELIGION] Religion to foreign Cities, gain +15 [ICON_FOOD] Food in Holy City, scaling with the number of new Followers of your [ICON_RELIGION] Religion, and 15 [ICON_TOURISM] Tourism, scaling with the number of Followers of other [ICON_RELIGION] Religions in the City.'
WHERE Tag = 'TXT_KEY_BELIEF_PILGRIMAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

--Rename Transcendent Thoughts
UPDATE Language_en_US
SET Text = 'Transcendence'
WHERE Tag = 'TXT_KEY_BELIEF_INITIATION_RITES_SHORT';