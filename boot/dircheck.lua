--1.0.0

--CC-Linux dirchecker
--On boot, check if directories exist, and throw errors for nonexistent.

require("/kernel")

local root = { --root
    "boot",
    "conf",
    "dev",
    "exec",
    "home",
    "lib",
    "sys",
    "temp",
    "usr"
}

local sub_root = { --sub-root
    "sys/boot",
    "usr/bin",
    "usr/exec",
    "usr/local",
    "usr/sysbin"
}

local sub_root_opt = { --optional sub-root dirs
    "dev/advperiph"
}

for k,v in pairs(root) do
    if fs.exists(v) then
        scrMSG("rootcheck",1,"Checked dir exists")
    elseif fs.exists(v) ~= true then
        scrMSG("rootcheck",3,"Checked dir doesn't exist")
    end
    sleep(0.001)
end

for k,v in pairs(sub_root) do
    if fs.exists(v) then
        scrMSG("subrootcheck",1,"Checked dir exists")
    elseif fs.exists(v) ~= true then
        scrMSG("subrootcheck",3,"Checked dir doesn't exist")
    end
    sleep(0.001)
end

for k,v in pairs(sub_root_opt) do
    if fs.exists(v) then
        scrMSG("subrootoptcheck",1,"Checked dir exists")
    elseif fs.exists(v) ~= true then
        scrMSG("subrootoptcheck",2,"optional dir doesnt exist")
    end
end

shell.run("/boot/pgmcheck.lua")