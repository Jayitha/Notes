-- 6.1
function print_all(a)
    for _, v in ipairs(a) do print(v) end
end

-- 6.2
function foo(...)
    return select(2, ...)
end

--- 6.3
function foo(...)
    local args = table.pack(...)
    return table.unpack(table.move(args, 1, args.n - 1, 1, {}))
end

-- 6.4 using the Fisher-Yates shuffle
function shuffle(a)
    for i = 1, #a - 1 do
        j = math.random(i, #a)
        a[i], a[j] = a[j], a[i]
    end -- since Lua uses table references, you don't have to return the table
end

-- 6.5 This implmentation is probably pretty inefficient since I'm copying over tables
--[[
A better approach might have been to use indices over one shares table array
--]]
function combinations(a, m)
    local n = #a
    if n < m then return {} end
    if m == 0 then return { {} } end
    local first_elem = a[1]
    local rem_elems = table.move(a, 2, #a, 1, {}) -- copying all but first element up
    -- C(n, m) = (c1 = C(n - 1, m - 1)) and (c2 = C(n - 1, m))
    local c1 = combinations(rem_elems, m - 1)
    -- for each result in c1, add first_elem to list
    for _, v in pairs(c1) do table.insert(v, 1, first_elem) end
    local c2 = combinations(rem_elems, m)
    table.move(c2, 1, #c2, #c1 + 1, c1)
    return c1
end

-- 6.6 circling back
--[[
Sometimes, a language with proper-tail calls is called properly tail recursive, with the argument that this property is relevant only when we have recursive calls. (Without recursive calls, the maxi- mum call depth of a program would be statically fixed.)

Show that this argument does not hold in a dynamic language like Lua: write a program that performs an unbounded call chain without recursion. (Hint: see the section called “Compilation”.)
]]
