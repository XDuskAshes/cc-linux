--This WILL be a terminal for the end user, it's just not yet. Most you'll see is small changes as CC-Linux progresses.

--DASH - Dusk's Absolute Shell Hell

require("/kernel")

local mode = 0 --Modes
local wd = "/"
--[[
    0 = main
    1 = su/su! (superuser/sudo)
]]

local g = { --global terminal commands
    "ext",
    "fetch"
}

local m = { --Main terminal commands.
    "cd",
    "ls",
    "rm",
    "su!",
    "wd",
    "help",
    "mode-sw"
}

local function fetch()
    
end

local function cd(a)
    local owd = wd
    wd = a
    print("[cd] Working dir changed from",owd,"to",wd)
end

local function ls()
    shell.run("ls", wd)
end

local function PASS(a)
    if a == g[1] then
        if mode == 0 then
            os.reboot()
        elseif mode == 1 then
            mode = 0
            print(" ")
        end
    end

    if a == g[2] then
        fetch()
    end
end