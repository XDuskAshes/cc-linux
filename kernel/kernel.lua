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

local cmds = {
    "cmds",
    "dnix",
    "ver",
    "ext"
}

local dnix = {
    "update",
    "ttflush",
    "ttstore",
    "ttread"
}

local function dnix(a)
    if a == "update" then
        printError("Not available yet")
    end

    if a == "ttstore" then
        print("1 2 3")
        write("*dnix/ttstore;")
        local input = read()
            if input == "1" then
                print("Input:")
                write("*dnix/ttstore/1;")
                local input = read()
                table.insert(tTable1, math.random(1,8), input)
            end

            if input == "2" then
                print("Input:")
                write("*dnix/ttstore/2;")
                local input = read()
                table.insert(tTable2, math.random(1,8), input)
            end

            if input == "3" then
                print("Input:")
                write("*dnix/ttstore/3;")
                local input = read()
                table.insert(tTable3, math.random(1,8), input)
            end
    end
end

local function CMD(a)
    if a == cmds[1] then
        print("Commands:", cmds[1], cmds[2], cmds[3], cmds[4])
    end

    if a == cmds[2] then
        print("update ttflush ttstore ttread")
        write("*dnix;")
        local input = read()
        dnix(input)
    end
end

function kernelConsole()
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
