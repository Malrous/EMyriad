--[[
== EMyriad's Official replicate testing script ==

This is used for checking the environment's Roblox repliation
e-uc checks are ported to this along with more stuff
]]--

local checks = {}

-- == CORE LUA ==

-- _G has no __index or __newindex
checks[#checks+1] = function()
    return _G["__index"] == nil and _G["__newindex"] == nil
end
-- _G rawget and rawqual consistent
checks[#checks+1] = function()
    local t = {
        "a",
        7
        0x6f,
        {},
        function() return "test" end,
        Enum.HumanoidStateType.Dead
    }
    return rawget(t[1]) == "a" and rawget(t[2]) == 7 and rawget(t[3]) == 0x6f and typeof(rawget(t[4])) == "table" and typeof(rawget(t[5])) == "function" and rawget(t[6]) == Enum.HumanoidStateType.Dead
    local t = nil
end
-- buffer.create exists
checks[#checks+1] = function()
    return typeof(buffer.create) ~= nil
end
