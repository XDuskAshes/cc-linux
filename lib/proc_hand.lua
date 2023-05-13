--[[
    Process Handler Lib for CC-Linux
    This will have far, far more in it
]]

function hang(a) --going to allow this to run a coroutine as the process calling the hang remains hung
    if a <= 60 then
        print("Hanging!")
        sleep(a)
        print("Hang complete!")
    elseif a > 60 then
        printError("Invalid hangtime was input, failed!")
    end
end