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

--Screen message handler/displayer
function scrMSG(process,type,msg)
    --Type is a number. 1 = Good (Green). 2 = Warning/Could be bad (Yellow), and 3 = Error (Red, obviously.)
    if type == 1 then
        term.setTextColor(colors.green)
        print("(OK)","[",process,"]",msg)
    elseif type == 2 then
        term.setTextColor(colors.yellow)
        print("(WARN)","[",process,"]",msg)
    elseif type == 3 then
        printError("(ERROR)","[",process,"]",msg)
    end
    term.setTextColor(colors.white)
end