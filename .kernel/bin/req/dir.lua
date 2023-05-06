--1.0.0

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