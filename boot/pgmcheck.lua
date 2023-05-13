--1.0.0

--CC-Linux pgmchecker
--On boot, check if programs exist, and throw errors for nonexistent.

local dev = {
    "dev/ccperiph/drive.lua",
    "dev/ccperiph/modem.lua",
    "dev/ccperiph/monitor.lua",
}

local lib = {
    "lib/proc_hand.lua"
}

local usr = {
    "usr/exec/D-BASH.lua"
}

for k,v in pairs(dev) do
    if fs.exists(v) then
        term.setTextColor(colors.green)
        print("[ EXISTS ]",v)
    else
        printError("[ ERROR ] program does not exist:",v)
    end
    sleep(0.1)
    term.setTextColor(colors.white)
end

for k,v in pairs(lib) do
    if fs.exists(v) then
        term.setTextColor(colors.green)
        print("[ EXISTS ]",v)
    else
        printError("[ ERROR ] program does not exist:",v)
    end
    sleep(0.1)
    term.setTextColor(colors.white)
end

for k,v in pairs(usr) do
    if fs.exists(v) then
        term.setTextColor(colors.green)
        print("[ EXISTS ]",v)
    else
        printError("[ ERROR ] program does not exist:",v)
    end
    sleep(0.1)
    term.setTextColor(colors.white)
end