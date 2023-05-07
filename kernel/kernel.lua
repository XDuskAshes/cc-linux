--1.0.0

shell.run("kernel/ext/precheck.lua")

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

--BINARIES

--OPTIONAL (in kernel/obin/)

if fs.exists("kernel/bin/*") == true then
    require("kernel/bin/*")
end

-----

--REQUIRED (in kernel/rbin/)

--[[
    Now these will be double checked.
    These are required binaries.
    These will be forcefully dl'd if unpresent.
]]

--[[+=====================================================================================+]]--

--MEMORY

--Temp folder and manipulation

function tmp(a)
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
