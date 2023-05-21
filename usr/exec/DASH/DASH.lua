--This WILL be a terminal for the end user, it's just not yet. Most you'll see is small changes as CC-Linux progresses.

--DASH - Dusk's Absolute Shell Hell

local mode = 0 --Modes
--[[
    0 = main
    1 = su/su! (superuser/sudo)
]]
local wd = "/"

local function fetch()
    print("HOST:",_HOST)
    print("LUA",_VERSION)
end

local cmds = {
    [ "EXT" ] = error(),
    [ "FETCH" ] = fetch,

}

local function cursor()
    local id = os.getComputerID()
    write("[",id,"]@",wd,"$")
end

print("DASH SHELL - Read the manual on github.")

while true do
cursor()
local input = read():upper()
    for k,v in pairs(cmds) do
        if input == k then
            v()
        end
    end
end
