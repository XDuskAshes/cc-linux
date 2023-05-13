--NOT FOR USE RIGHT NOW!

local rootDirs = {
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

local rootDirsSubDirs = {
    "dev/advperiph",
    "dev/ccperiph",
    "sys/boot",
    "usr/bin",
    "usr/exec",
    "usr/local",
    "usr/sysbin"
}

local a = "a"

term.clear()
term.setCursorPos(1,1)
print("CC-Linux Installer")
print("This will install CC-Linux on your system.")
print("Process begins in 5 seconds to allow terminate time.")
sleep(5)
print("Step 1: Create root filesystem")
sleep(1)
for k,v in pairs(rootDirs) do
    if fs.exists(v) then
        printError("dir",v,"already exists.")
    else
        fs.makeDir(v)
        print(k,"|",v)
    end
    sleep(0.1)
end
print("Step 2: Sub-folders")
sleep(1)
for k,v in pairs(rootDirsSubDirs) do
    if fs.exists(v) then
        printError("dir",v,"already exists.")
    else
        fs.makeDir(v)
        print(k,"|",v)
    end
    sleep(0.1)
end

--+==================================================+--
--User creation

print(" ")
print("Create user")
write("Username: ")
local input = read()
print("Make dir:",input)
fs.makeDir("home/",input) --I am well aware this does not work, if anyone knows what will do tell/request merge after fix.
--Of course I'll be trying to figure it out on my own as well

--Any further dirs
--+==================================================+--
--Then from here to end of it it'll wget everything to the right spots (for when it's completed)