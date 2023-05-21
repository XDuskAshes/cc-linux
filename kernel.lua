--1.0.0

--[[

CC-LINUX Kernel
Version: 1.0.0
Developed from: 4/18/2023 - [DATE]
Developer: Dusk (Dusk#0834/XDuskAshesReal)
Codename: "EUREKA"

Total lines of code: (when it's done, goes here.)

]]

--[[
    I am going to entirely re-code this, but I'll explain it's purpose in this blurb.
    The point of this file will to be the handler for all processes of CC-Linux, as well as be an actual kernel.
    This will be the point where all the things are called in functions, so that one can simply call from kernel.
    All contribution to brainstorming and code changes in this file are welcome in here. Just don't touch this blurb. Add your own darn blurbs!
    -Dusk, 5/9/2023 (6:20 pm)
]]

local expect = require "cc.expect"

--Memory storage in the kernel
--Processes can place things in here temporarily to index, then clear when needed

    local ttable = {}

    local function ttinput(input) --Input something into the ttable
        table.insert(ttable,input)
        if error then
            scrMSG("kernel:ttinput",3,"Failed to input to ttable or other error.")
        end
    end
    
    local function ttread() --write contents of the ttable
        for k,v in pairs(ttable) do
            print("Content of ttable:", "(@",k,")","|",v," ")
        if error then
            scrMSG("kernel:ttread",3,"Failed to read ttable content or other error.")
        end
    end    
    end
    
    local function ttclear() --clear ttable
        for k in pairs(ttable) do
            ttable[k] = nil
        if error then
            scrMSG("kernel:ttclear",3,"Failed to clear ttable or other error.")
        end
        end
    end

function scrMSG(process,type,msg) --Screen message handler/displayer.
    expect(1, process, "string")
    expect(2, type, "number")
    expect(3, msg, "string")
    --Type is a number. 1 = Good (Green). 2 = Warning/Could be bad (Yellow), and 3 = Error (Red, obviously.)
    if type == 1 then
        term.setTextColor(colors.green)
        print("(OK)","[",process,"]",msg)
    elseif type == 2 then
        term.setTextColor(colors.yellow)
        print("(WARN)","[",process,"]",msg)
    elseif type == 3 then
        printError("(ERROR)","[",process,"]",msg)
    elseif error() then
        printError("[ kernel:scrMSG ] encountered an error:",error)
    end
    term.setTextColor(colors.white)
end

function halt(haltthis,dothis) --Stop a function short, run a different one.
    expect(1, haltthis, "function")
    expect(1, dothis, "function")
    error(haltthis)
    dothis()
    --this wont work at all will it
end

function checkrootfs() --check the root filesystem of CC-Linux to ensure it exists, and error if something doesn't.
    local root = { --root, stole from boot/dircheck.lua
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

    for k,v in pairs(root) do
        if fs.exists(v) then
            scrMSG("kernel:checkrootfs",1,"checked dir exists") --yes I use my own functions in the kernel, hush
        else
            scrMSG("kernel:checkrootfs",3,"checked dir does not exist")
            printError("Create directory:",v,"and it's contents")
            error("Please create root directory listed above.")
        end
    end
end

dircontent = {}

function getContent(dir) --Get contents from a directory and put it in a table.
    expect(1,dir,"string")
    local fullPath = shell.resolve(dir)
    
    if not fs.exists(fullPath) or not fs.isDir(fullPath) then
        error("Directory does not exist: " .. dir)
    end

    for _, item in ipairs(fs.list(fullPath)) do
        local path = fs.combine(dir, item)
        table.insert(dircontent, path)
    end
end

function displayContent() --Displays contents gotten from 'getContent()'
    for k,v in pairs(dircontent) do
        print(k,"|",v)
    end
end

function purgeContents() --Purge the contents gotten from 'getContent()'
    for k in pairs(dircontent) do
        dircontent[k] = nil
    end
end