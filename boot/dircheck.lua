--1.0.0

--CC-Linux dirchecker
--On boot, check if directories exist, and throw errors for nonexistent.

local root = {
    "boot",
    "conf",
    "dev",
    "exec",
    "home",
    "lib",
    "root",
    "sys",
    "temp",
    "usr"
}

local sub_root = {
    "dev/advperiph",
    "dev/ccperiph",
    "sys/boot",
    "usr/bin",
    "usr/exec",
    "usr/local",
    "usr/sysbin"
}

for k,v in pairs(root) do
    if fs.exists(v) then
        term.setTextColor(colors.green)
        print("[ EXISTS ]",v)
    else
        printError("[ ERROR ] dir does not exist:",v)
    end
    term.setTextColor(colors.white)
    sleep(0.1)
end

for k,v in pairs(sub_root) do
    if fs.exists(v) then
        term.setTextColor(colors.green)
        print("[ EXISTS ]",v)
    else
        printError("[ ERROR ] dir does not exist:",v)
    end
    term.setTextColor(colors.white)
    sleep(0.1)
end

if fs.exists("boot/pgmcheck.lua") then
    shell.run("boot/pgmcheck.lua")
end