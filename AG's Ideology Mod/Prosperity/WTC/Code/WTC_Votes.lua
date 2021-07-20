
local eWTC = GameInfoTypes.BUILDING_WTC
local eWTCDummy = GameInfoTypes.BUILDING_WTC_D

function giveVotes(iPlayer)

    local pPlayer = Players[iPlayer]

    if not (pPlayer and pPlayer:CountNumBuildings(eWTC) > 0) then return end

    local pTeam = Teams[pPlayer:GetTeam()]
    local iOpenBorders = 0

    for eOtherTeam, _ in pairs(Teams) do
        if pTeam:IsAllowsOpenBordersToTeam(eOtherTeam) then
            iOpenBorders = iOpenBorders+1
        end
    end

    pPlayer:GetCapitalCity():SetNumRealBuilding(eWTCDummy, math.floor(iOpenBorders/2));
end

GameEvents.PlayerDoTurn.Add(giveVotes)