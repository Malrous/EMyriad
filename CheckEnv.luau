--[[
== EMyriad's Official replicate testing script ==

This is used for checking the environment's Roblox repliation
]]--

local checks = {}

-- check 1
checks[#checks+1] = function()
    return not game.PlaceId == 0 and not game.GameId == 0
end
