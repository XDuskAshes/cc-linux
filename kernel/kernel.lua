--1.0.0

--[[

+============================================+
|  ____   _____  _ _ _  _____  _____  __ __  |
| |    \ |  _  || | | ||   | ||     ||  |  | |
| |  |  ||     || | | || | | ||-   -||-   -| |
| |____/ |__|__||_____||_|___||_____||__|__| |
|               KERNEL v1.0.0                |
+============================================+

Version: 1.0.0
Developed from: 4/18/2023 - [DATE]
Developer: Dusk (Dusk#0834/XDuskAshesReal)
Codename: "EUREKA"

Total lines of code: (when it's done, goes here.)

]]

--[[+=====================================================================================+]]--

--PACKAGES

--OPTIONAL (in kernel/pkgs/)

if fs.exists("kernel/pkgs/*") == true then
    require("kernel/pkgs/*")
end

--[[+=====================================================================================+]]--

--MEMORY

--Temp folder and manipulation

local function tmp(a)
    if a == "make" then
        fs.makeDir("tmp/")
    end

    if a == "clear" then
        if fs.exists("tmp/") == true then
            shell.run("rm tmp/*")
        end
    end

    if a == "delete" then
        if fs.exists("tmp/") == true then
            fs.delete("tmp/")
        end
    end
end


--TEMPTABLES
--If anything needs, three tables can supply temporary storage in kernel

local tTable1 = {}
local tTable2 = {}
local tTable3 = {}

local function flushTTable(a)
    if a == 1 then
        tTable1 = {}
    end

    if a == 2 then
        tTable2 = {}
    end

    if a == 3 then
        tTable3 = {}
    end
end

--[[+=====================================================================================+]]--

local function kernelInfo() --Kernel info
    print("Version: 1.0.0")
    print("Developed from: 4/18/2023 - [DATE]")
    print("Lead Developer: Dusk (Dusk#0834/XDuskAshesReal)")
    print("Codename: 'EUREKA'")
end

local function logo()
    print(" ____   _____  _ _ _  _____  _____  __ __ ")
    print("|    } |  _  || | | ||   | ||     ||  |  |")
    print("|  |  ||     || | | || | | ||-   -||-   -|")
    print("|____/ |__|__||_____||_|___||_____||__|__|")
end

--[[+=====================================================================================+]]--

--Kernel Console

local consoleTT = {} --console ttable, only for the console

local function flushcTTable(t)
    t = consoleTT
    for k,v in pairs(t) do
        t[k] = nil
      end
end

local cmds = {
    "ext",
    "cmds",
    "dnix",
    "ver",
    "dira"
}

local dnixCMDS = {
    "ext",
    "cmds",
    "update"
}

local diraCMDS = {
    "ext",
    "cd",
    "dir",
    "tmpmk",
    "tmpclr",
    "tmpdel"
}

local consolever = "1.0.0"

local function consoleInfo()
    print("DAWNIX KernelConsole (DAWNIX-KC)")
    print("Version", consolever)
end

local function dnix()
    term.clearLine(term.getCursorPos)
    write("*dnix;")
    while true do
        local input = read()

            if input == dnixCMDS[1] then
                print(" ")
                break
            end

            if input == dnixCMDS[2] then
                for k,v in pairs(dnixCMDS) do
                    print(k,"|",v)
                end
            end

            if input == dnixCMDS[3] then
                printError("Not yet implemented")
            end

        write("*dnix;")
    end
end

local function dira()
    term.clearLine(term.getCursorPos)
    write("*dira;")
    while true do
        local input = read()

    write("*dira;")
    end
end

local function CMD(a)
    if a == cmds[1] then --ext
        print("Rebooting...")
        sleep(0.5)
        os.reboot()
    end

    if a == cmds[2] then --cmds
        for k,v in pairs(cmds) do
            print(k,"|",v)
        end
    end

    if a == cmds[3] then --dnix
        dnix()
    end

    if a == cmds[4] then
        consoleInfo()
    end

    if a == cmds[5] then --wdir
        dira()
    end
end

local function kernelConsole()
    term.clear()
    term.setCursorPos(1,1)
    print("DAWNIX Kernel Console - 'cmds' for command list")
    write("*;")
        while true do
        local input = read()
        CMD(input)
        write("*;")
        end
end

--[[+=====================================================================================+]]--

--DAWNIX global function

function dawnix(a)
    if a == "info" then
        kernelInfo()
    end

    if a == "logo" then
        logo()
    end

    if a == "console" then
        term.clear()
        term.setCursorPos(1,1)
        print("Opening console")
        sleep(0.5)
        kernelConsole()
    end
end

--[[+=====================================================================================+]]--

--[[

    +============================================+
    |  ____   _____  _ _ _  _____  _____  __ __  |
    | |    \ |  _  || | | ||   | ||     ||  |  | |
    | |  |  ||     || | | || | | ||-   -||-   -| |
    | |____/ |__|__||_____||_|___||_____||__|__| |
    |               KERNEL v1.0.0                |
    +============================================+

]]

--455552454b41
