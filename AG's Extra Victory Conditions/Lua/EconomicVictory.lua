-- EconomicVictory
-- Author: amateurgamer88
-- DateCreated: 4/5/2020 10:11:56 PM
--------------------------------------------------------------

-- Global Tables
g_EVCEconomicGold = {};
g_EVCPlayerNumMonopoly = {};
g_EVCMonopolyTarget = {};

-- Global Variables
g_EVCEconomicVictoryWon = false;
g_EVCGoldTarget = 1000000;


-- Economic Variables
local tPlayerMonopoly = {};


-- Persistent Data
local db = Modding.OpenSaveData();

-- Check to see if the victory is enabled
local economicVictory = GameInfo.Victories["VICTORY_ECONOMIC"];
local bVictoryEnabled = true;
if db.GetValue("EVC_VICTORY_"..economicVictory.ID) == 0 then
	bVictoryEnabled = false;
end
-- bVictoryEnabled is true by default, to make it compatible with previous version saves

-- Populates the global variables when the game starts or is reloaded
function InitializeEconomicVictoryProgress()
	if bVictoryEnabled then
		GetAmassedGold();
		GetPlayerMonopoly();
		GetMonopoly();
	end
end

Events.SequenceGameInitComplete.Add(InitializeEconomicVictoryProgress);

-- Calculates Economic Victory progress at the start of each players' turn
function CalculateEconomicVictoryProgress(iPlayer)
	if bVictoryEnabled then
		GetAmassedGold();
		GetPlayerMonopoly();
		GetMonopoly();

		-- Determines if the current player has won, and declares them the victor
		-- if they have met the conditions
		local pPlayer = Players[iPlayer];
		local iFranchises = pPlayer:GetNumberofGlobalFranchises();
		--print("Testing for Economic Victory");
		if not pPlayer:IsMinorCiv() then
			--print("Player "..iPlayer.." Gold: "..(g_EVCEconomicGold[iPlayer] or "nil"));
			--print("Player "..iPlayer.." GPT Streak: "..(g_EVCEconomicGPTStreak[iPlayer] or "nil"));
			--print("Player "..iPlayer.." Luxuries: "..(tPlayerMonopoly[iPlayer] or "nil"));
			if (g_EVCEconomicGold[iPlayer] >= g_EVCGoldTarget and g_EVCPlayerNumMonopoly[iPlayer] >= g_EVCMonopolyTarget) then
				--print("Economic Victory Declared!");
				g_EVCEconomicVictoryWon = true;
				Game.SetWinner(pPlayer:GetTeam(), GameInfo.Victories["VICTORY_ECONOMIC"].ID);
			end
		end
	end
end

GameEvents.PlayerDoTurn.Add(CalculateEconomicVictoryProgress);

function GetAmassedGold()
	--print("GetAmassedGold fires");
	for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
		
		local pPlayer = Players[iPlayer];

		if not pPlayer:IsMinorCiv() and pPlayer:IsEverAlive() then
			local iGold = pPlayer:GetGold();
			--print(pPlayer:GetName().." Gold: "..iGold);

			g_EVCEconomicGold[iPlayer] = iGold;
		end
	end
end

function GetMonopoly()
	--print("GetMonopoly fires");
	local iMonopolyCount = 0;
	for pResource in GameInfo.Resources() do	
		iMonopolyCount = iMonopolyCount + 1;
		iMapSize = round(Map.GetWorldSize());
		g_EVCMonopolyTarget = round((iMonopolyCount/10)*iMapSize-(iMapSize-1)*3);		
	end
	--print("Target Luxes: "..iTargetMonopoly);
end

function GetPlayerMonopoly()
	--print("GetPlayerResources fires");

	for iPlayer = 0, GameDefines.MAX_MAJOR_CIVS-1, 1 do
		
		local pPlayer = Players[iPlayer];
		if pPlayer:IsEverAlive() then
			tPlayerMonopoly[iPlayer] = 0;
			for pResource in GameInfo.Resources() do
				if(pResource.IsMonopoly == 1) and pPlayer:GetMonopolyPercent(pResource.ID)>= 51 then
						tPlayerMonopoly[iPlayer] = tPlayerMonopoly[iPlayer] + 1;
						g_EVCPlayerNumMonopoly[iPlayer] = tPlayerMonopoly[iPlayer];
				end
			end
			--print(pPlayer:GetName().." Luxes: "..tPlayerMonopoly[iPlayer]);
		end
	end
end

-- Handy function (borrowed) for rounding numbers, so we can turn floats into integers
function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

print("OK loaded EconomicVictory.lua from AG EVC")