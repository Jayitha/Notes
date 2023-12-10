---
title: "Programming in lua"
authors: Roberto Ierusalimschy
year: 2006
url: ""
Zotero URI: "zotero://select/items/@ierusalimschy2006programming"
tags: to-read
---

# Programming in lua  
_Roberto Ierusalimschy (2006)_

Tags: `=join(this.file.tags, " ")`

> [!abstract]-
> 

## 5 Tables

- Tables are the only data structures in Lua. Even a function from a library like `math.sin` actually translates to "index table named `math` using string `sin` as key"
- Tables are not values or variables, they are objects. Variables reference tables, when a table has no references the garbage collector deletes the table

```lua
> a = {}
> a["x"] = 10
> b = a -- 'b' refers to the same table as 'a'
> b["x"] --> 10
> b["x"] = 20
> a["x"] --> 20
> a = nil
> b = nil -- table dropped
```

- Structures are represented using field names as indices

```lua
> a = {}
> a.x = 10 -- same as a["x"] = 10
> a.x --> 10
```

- When used as a key, any float value that can be converted to an integer is converted
```lua
> a = {}
> a[2.0] = 10
> a[2] --> 10
```

- Creating a table with a proper constructor is more efficient because the table is created with the right size
- There is a general form constructor format where indices are written as expressions between square brackets

```lua
opnames = {
["+"]  = "add",
["-"]  = "sub",
["**"]  = "mul",
["/"]  = "/",
}
```

- A *sequence* is a table where the positive numeric keys comprise a set $\{1,\ldots,n\}$ where for some $n$ i.e. none of the indices store `nil` values (a key with `nil` is technically not in the table)
- A table with no numeric keys is a sequence with length zero
- The length operator (`#`) behaves well for sequences but not tables with holes
- You can traverse all key-value pairs using the `pairs` iterator however the order is undefined

```lua
-- for tables
t = {10, print, x = 12, k = "hi"}
for k, v in pairs(t) do
	print(k, v)
end
--[[
1 10
k hi
2 function: xxxx
x 12
--]]

-- for lists use ipairs, here order is preserved
t = {10, print, 12, "hi"}
for k, v in ipairs(t) do
	print(k, v)
end
--[[
1 10
2 function: xxxx
3 12
4 hi
--]]

-- for sequences
for k = 1,#t do
	print(k, t[k])
end
```

- Suppose you want to know if a given function exists in a given library (`lib.foo`) you can use `lib and lib.foo`. In C#, you can instead use the *safe navigation operator* (`?`). For `a?.b` is `a` is `nil` so is `a?.b`. You can emulate this behavior in Lua by generating an empty table if `a` is `nil` -- `(a or {}).b`

```lua
zip = company and company.director and company.director.address and company.director.address.zipcode

-- In C#, you can instead use ? but not in Lua
zip = company?.director?.address?.zipcode

-- In Lua, you can emulate it
zip = (((company or {}).director or {}).address or {}).zipcode
```

- Table operations are not efficient since the involve *moving* i.e. copying elements to fill gaps
```lua
table.insert(t, <index>, value) -- inserts value at index moving elements down, defaults to end

table.remove(t, <index>) -- removes element from position moving all elements up, defaults to end

table.move(t, start, end, position, <table2>) -- moves elements in table from index start until end (inclusive) to position

table.move(a, 1, #a, 1, {}) -- copies table a into provided table and returns table

table.move(a, 1, #a, #b + 1, b) -- appends all elements from list a to end of list b
```

**Exercises**

```lua
-- 5.1
sunday = "monday"; monday = "sunday"
t = {sunday = "monday", [sunday] = monday}
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
a.a.a.a -- same as table a
a.a.a.a = 3
--[[
Let's expand this line using the generic notation
a["a"] -- which is a again is references over and over 
Therefore, a.a.a.a translated to a["a"]
a["a"] = 3
--]]

-- 5.3
literal_strings = {
["\a"] = "bell",
["\b"] = "back space"
["\f"] = "form feed"
["\n"] = "newline"...
}

-- 5.4
function eval_poly(a_coeff, x)
	sum = 0
	for n, a in ipairs(a_coeff) do
		sum = sum + a * x^(n - 1)
	end
	return sum
end

-- 5.5 but this doesn't seem right, I'm using 2n multiplications
function eval_poly(a_coeff, x)
	local x_exp , sum = 1, 0
	for n, a in ipairs(a_coeff) do
		sum = sum + a * x_exp
		x_exp = x_exp * x
	end
	return sum
end

-- 5.6
[[Start by getting the max index and then check to make sure there are no holes]]
function is_seq(s)
	local max_ind = 0
	for k,_ in pairs(s) do
		max_ind = math.type(k) == "integer" and k > max_ind and k or max_ind
	end
	for i = 1,max_ind do
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

[[To measure time, you can use `os.clock()`]]
-- something like this
-- performance of table command
start = os.clock()
_ = table.concat(test_table)
end_ = os.clock()
print("table.concat: " .. end_ - start)

--[[
	OOF, the `table.concat` command is MUCH faster. This is expected since each time I concat, Lua has to reallocate memory. `table.concat` is supposedly optimized
table.concat: 0.004008
concat: 1.61916
--]]
```

- [ ] Why does `table.concat` perform better? How is this function implemented?

## 6 Functions





