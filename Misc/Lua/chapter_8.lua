--- 8.1
--[[
    I'm guessing this has to do with the clunky ends.
    For instance this program

    if op == '+' then
	    r = a + b
    elseif op == '-' then
	    r = a - b
    elseif op == '*' then
        r = a * b
    elseif op == '/' then
        r = a / b
    else -- optional
	    error("invalid operation")

    would have to be written as

    if op == '+' then
        r = a + b
    else
        if op == '-' then
            r = a - b
        else
            if op == '*' then
                r = a * b
            else
                if op == '/' then
                    r = a / b
                else -- optional
                    error("invalid operation")
            end
        end
    end

    Given that Lua has no 'switch' construct, large switch statements would be impractical to code up.

    More information at
    1. https://www.reddit.com/r/learnprogramming/comments/162hilr/coding_for_30_years_just_realized_else_if_is_not/ and
    2. https://langdev.stackexchange.com/a/182 (dangling else + end avalanche)
]]

--- 8.2

--[[
    while true do
        something
    end

    repeat
        something
    until false

    ::st:: do
        something
        goto ::st::
    end

    for _ = 1,math.huge do
        something
    end
]]

-- 8.3
--[[
    I like that the until clause can use local variables when evaluating the termination condition. C has the do...while construct.
    Not sure?
--]]

-- 8.4
-- initial room
function room1()
    local move = io.read()
    if move == "south" then
        return room3()
    elseif move == "east" then
        return room2()
    else
        print("invalid move")
        return room1() -- stay in the same room
    end
end

function room2()
    local move = io.read()
    if move == "south" then
        return room4()
    elseif move == "west" then
        return room1()
    else
        print("invalid move")
        return room2()
    end
end

function room3()
    local move = io.read()
    if move == "north" then
        return room1()
    elseif move == "east" then
        return room4()
    else
        print("invalid move")
        return room3()
    end
end

function room4()
    print("Congratulations, you won!")
end

--- 8.5
--[[
    https://stackoverflow.com/a/18646535/7496319

    The goto statement and its destination must be on the same stack frame.
]]

--- 8.6
--[[
function getlabel()
    return function() -- returns a function
        goto L1
    end

    ::L1::            -- but scope defines it only within this function
    return 0
end

function f(n)
    if n == 0 then
        return getlabel()
    else
        local res = f(n - 1)
        print(n)
        return res
    end end

x = f(10)
x()                  -- label L1 undefined?
--]]
