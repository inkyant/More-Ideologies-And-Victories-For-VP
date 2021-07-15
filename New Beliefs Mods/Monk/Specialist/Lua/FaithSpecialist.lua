-- Faith Specialists
-- Author: FramedArchitecture
-- DateCreated: 10/18/2012 11:32:51 PM
--------------------------------------------------------------

include("FaithSpecialist_Utils.lua");

GameEvents.PlayerDoTurn.Add(
function(iPlayer) 
	
	local player = Players[iPlayer]

	if (not player:IsMinorCiv()) then
		if (player:IsAlive()) then
			local iFaith = player:GetFaithFromSpecialists()
			if ( iFaith > 0 ) then
				player:ChangeFaith(iFaith);
				print(player:GetName() ..": " ..iFaith .." faith from Specialists.")
			end
		end
	end
end)