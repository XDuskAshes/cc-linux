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

--[[
    BINARIES
    All required binaries are in the repo and **should** be auto-installed. If not, there's a function for that.
    All binaries must be placed in the 'bin/' folder.
]]

local drive = false
local modem = false
local monitor = false

if fs.exists(".kernel/bin/drive.lua") == true then
    drive = true
    require(".kernel/bin/drive")
elseif fs.exists(".kernel/bin/drive.lua") == false then
    drive = false
end

if fs.exists("bin/modem.lua") == true then
    modem = true
    require(".kernel/bin/modem")
elseif fs.exists(".kernel/bin/modem.lua") == false then
    modem = false
end

if fs.exists(".kernel/bin/monitor.lua") == true then
    monitor = true
    require(".kernel/bin/monitor")
elseif fs.exists(".kernel/bin/monitor.lua") == false then
    monitor = false
end
--[[+=====================================================================================+]]--

--MEMORY

--TEMPTABLES
--If anything needs, three tables can supply temporary storage in kernel

local tTable1 = {}
local tTable2 = {}
local tTable3 = {}

--[[+=====================================================================================+]]--

function kernelInfo() --Kernel info
    print("Version: 1.0.0")
    print("Developed from: 4/18/2023 - [DATE]")
    print("Lead Developer: Dusk (Dusk#0834/XDuskAshesReal)")
    print("Codename: 'EUREKA'")
end

function logo()
    print(" ____   _____  _ _ _  _____  _____  __ __ ")
    print("|    } |  _  || | | ||   | ||     ||  |  |")
    print("|  |  ||     || | | || | | ||-   -||-   -|")
    print("|____/ |__|__||_____||_|___||_____||__|__|")
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