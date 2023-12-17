-- 5.1
sunday = "monday"; monday = "sunday"
t = { sunday = "monday", [sunday] = monday }
--[[
in full form
t = {
	["sunday"] = "monday",
	["monday"] = "sunday"
}
--]]

print(t.sunday, t[sunday], t[t.sunday])
--[[
expanding defs
t.sunday = t["sunday"] --> monday
t[sunday] = t["monday"] --> sunday
t[t.sunday] = t["monday"] --> sunday
--]]

-- 5.2
a = {}
a.a = a -- a["a"] = a
--[[
Remember, you are not copying a table but are creating references to the same table. So it won't be
a["a"] = {}
--]]
-- a.a.a.a -- same as table a
a.a.a.a = 3
--[[
Let's expand this line using the generic notation
a["a"] -- which is a again and is referenced over and over
Therefore, a.a.a.a translated to a["a"]
a["a"] = 3
--]]

-- 5.3
literal_strings = {
    ["\a"] = "bell",
    ["\b"] = "back space",
    ["\f"] = "form feed",
    ["\n"] = "newline",
    --- ...
}

-- 5.4
function eval_poly(a_coeff, x)
    sum = 0
    for n, a in ipairs(a_coeff) do
        sum = sum + a * x ^ (n - 1)
    end
    return sum
end

-- 5.5 but this doesn't seem right, I'm using 2n multiplications
function eval_poly(a_coeff, x)
    local x_exp, sum = 1, 0
    for n, a in ipairs(a_coeff) do
        sum = sum + a * x_exp
        x_exp = x_exp * x
    end
    return sum
end

-- 5.6
--[[
    Start by getting the max index and then check to make sure there are no holes
--]]
function is_seq(s)
    local max_ind = 0
    for k, _ in pairs(s) do
        max_ind = math.type(k) == "integer" and k > max_ind and k or max_ind
    end
    for i = 1, max_ind do
        if s[i] == nil then return false end
    end
    return true
end

-- 5.7 this function copies over elements of b
function insert_all_into_list(a, b, position)
    table.move(a, 1, #a, position, b)
end

-- 5.8
function concat(l)
    local s = ""
    for _, v in ipairs(l) do
        s = s .. v
    end
    return s
end

test_table = {}
for i = 1, 100000 do
    test_table[i] = tostring(i)
end

-- performance of table command
start = os.clock()
_ = table.concat(test_table)
end_ = os.clock()
print("table.concat: " .. end_ - start)

-- performance of concat command
start = os.clock()
_ = concat(test_table)
end_ = os.clock()
print("concat: " .. end_ - start)

--[[
	OOF, the `table.concat` command is MUCH faster. This is expected since each time I concat, Lua has to reallocate memory. `table.concat` is supposedly optimized
table.concat: 0.004008
concat: 1.61916
--]]
