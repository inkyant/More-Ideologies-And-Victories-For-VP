
local eToBigToFail = GameInfoTypes.POLICY_TOO_BIG_TO_FAIL
local eFaith = GameInfoTypes.YIELD_FAITH
local eGold = GameInfoTypes.YIELD_GOLD
local eSpainTrait = GameInfoTypes.TRAIT_SEVEN_CITIES

function improvementsClaimTerritory(iPlayer, _, iPlotX, iPlotY, iBuild)

    local pPlayer = Players[iPlayer]
    local eImprovement = GameInfo.Builds[iBuild].ImprovementType

    if pPlayer:HasPolicy(eToBigToFail) and (eImprovement == "IMPROVEMENT_MANUFACTORY" or eImprovement == "IMPROVEMENT_CUSTOMS_HOUSE" or eImprovement == "IMPROVEMENT_ACADEMY") then
		local count = 0
		for direction = 0, DirectionTypes.NUM_DIRECTION_TYPES - 1, 1 do
			local pAdjacentPlot = Map.PlotDirection(iPlotX, iPlotY, direction)

			if pAdjacentPlot and pAdjacentPlot:GetOwner() ~= iPlayer then
				pAdjacentPlot:SetOwner(iPlayer)
				count = count+1
			end
		end
        --Give yields from trait
		if pPlayer:HasTrait(eSpainTrait) then
			local iCapital = pPlayer:GetCapitalCity():GetID()
			local iEraModifier = math.max(pPlayer:GetCurrentEra(), 1)
			
			pPlayer:DoInstantYield(eFaith, 4*iEraModifier*count, false, iCapital)
			pPlayer:DoInstantYield(eGold, 10*iEraModifier*count, false, iCapital)
		end
    end
end

print("this is Prosperity.lua")

GameEvents.PlayerBuilt.Add(improvementsClaimTerritory)