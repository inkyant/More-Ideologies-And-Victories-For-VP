-- Faith Specialist Utils 
-- Author: FramedArchitecture
-- DateCreated: 11/4/2012 12:49:44 AM
--------------------------------------------------------------

LuaEvents.Player =	LuaEvents.Player	or function(player)	 end
LuaEvents.City =	LuaEvents.City		or function(city)	 end

PlayerClass = getmetatable(Players[0]).__index

LuaEvents.Player.Add(PlayerClass.GetFaithFromSpecialists)
LuaEvents.City.Add(City_GetFaithFromSpecialists)


function PlayerClass.GetFaithFromSpecialists(player)	
	local iFaith = 0;
	-- Loop through player cities to add up faith from preachers
	if (player ~= nil) then
		for city in player:Cities() do
			if (city ~= nil) then
				iFaith = iFaith + City_GetFaithFromSpecialists(city);
			end
		end
	else
		print("Scripting error - player is nil when looking for faith specialist.");
	end

	return iFaith;
end

function City_GetFaithFromSpecialists(city)	
	local iFaith = 0
	
	if (city ~= nil) then
		for specialist in GameInfo.Specialists() do
			local specialistID = specialist.ID
			local yieldID = GameInfo.Yields["YIELD_FAITH"].ID
			local faithYield = city:GetSpecialistYield(specialistID, yieldID);
			if ( faithYield > 0 ) then
				iFaith = iFaith + (city:GetSpecialistCount( specialistID ) * faithYield );
			end
		end
	end

	return iFaith;
end

