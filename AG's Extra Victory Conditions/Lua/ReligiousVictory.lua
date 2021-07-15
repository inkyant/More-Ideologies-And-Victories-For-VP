-- ReligiousVictory
-- Author: amateurgamer88
-- DateCreated: 4/4/2020 11:19:30 AM
--------------------------------------------------------------

--Global Tables
g_EVCReligiousSpread = {};
g_EVCReligiousFaith = {};

--Global Variables
g_EVCReligiousVictoryWon = false;
g_EVCFaithTarget = 20000;

--Persistent Data
local db = Modding.OpenSaveData();

-- Check to see if the victory is enabled
local religiousVictory = GameInfo.Victories["VICTORY_RELIGIOUS"];
local bVictoryEnabled = true;
if db.GetValue("EVC_VICTORY_"..religiousVictory.ID) == 0 then
	bVictoryEnabled = false;
end
-- bVictoryEnabled is true by default, to make it compatible with previous version saves

-- Populates the global variables when the game starts or is reloaded
function InitializeReligiousVictoryProgress()
	if bVictoryEnabled then
		GetReligionSpread();
		GetAmassedFaith();
	end
end

Events.SequenceGameInitComplete.Add(InitializeReligiousVictoryProgress);

-- Calculates Religious Victory progress at the start of each players' turn
function CalculateReligiousVictoryProgress(iPlayer)
	if bVictoryEnabled then
		GetReligionSpread();
		GetAmassedFaith();

		-- Determines if the current player has won, and declares them the victor
		-- if they have met the conditions
		local pPlayer = Players[iPlayer];
		if pPlayer:HasCreatedReligion() then
			local eReligion = pPlayer:GetReligionCreatedByPlayer();
			--print("Testing for Religious Victory");
			--print("Player "..iPlayer.." Spread: "..g_EVCReligiousSpread[eReligion]);
			--print("Player "..iPlayer.." Followers: "..g_EVCReligiousFollowers[eReligion]);
			--print("Player "..iPlayer.." Holy Cities: "..g_EVCReligiousHolyCities[eReligion]);
			if (g_EVCReligiousSpread[eReligion] >= 90 and g_EVCReligiousFaith[iPlayer] >= g_EVCFaithTarget) then
				--print("Religious Victory Declared!");
				g_EVCReligiousVictoryWon = true;
				Game.SetWinner(pPlayer:GetTeam(), GameInfo.Victories["VICTORY_CULTURAL"].ID);
			end
		end
	end
end

GameEvents.PlayerDoTurn.Add(CalculateReligiousVictoryProgress);

-- Updates the spread table with the new percentages for each religion
function GetReligionSpread()
	--print("GetReligionSpread fires");

	for iPlayerLoop = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
		
		local pPlayer = Players[iPlayerLoop];

		if pPlayer:IsEverAlive() then
			if pPlayer:HasCreatedReligion() then
				
				local eReligion = pPlayer:GetReligionCreatedByPlayer();
				--local religion = GameInfo.Religions[eReligion];
				--print(religion.Description);
				local iCitiesFollowing = Game.GetNumCitiesFollowing(eReligion);
				--print("Cities Following: "..iCitiesFollowing);
				local iTotalCities = Game.GetNumCities();
				--print("Total Cities: "..iTotalCities);
				local fSpread = round((iCitiesFollowing/iTotalCities)*100);
				--print("Spread: "..fSpread);

				g_EVCReligiousSpread[eReligion] = fSpread;
			end
		end
	end
end

function GetAmassedFaith()
	--print("GetAmassedFaith fires");
	for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do	

		local pPlayer = Players[iPlayer];

		if not pPlayer:IsMinorCiv() and pPlayer:IsEverAlive() then
			local iFaith = pPlayer:GetFaith();
			--print(pPlayer:GetName().." Faith: "..iFaith);

			g_EVCReligiousFaith[iPlayer] = iFaith;
		end
	end 
end

-- Handy function (borrowed) for rounding numbers, so we can turn floats into integers
function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

print("OK loaded ReligiousVictory.lua from AG EVC")