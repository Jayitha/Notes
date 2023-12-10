---
title: Programming in lua
authors: Roberto Ierusalimschy
year: 2006
url: ""
Zotero URI: zotero://select/items/@ierusalimschy2006programming
tags:
  - reading
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

- Parentheses are optional is function has only one argument that is either a string literal or a table constructor

```lua
print "Hello World"
f{x=10, y=20}
type{}
```

- A Lua program can use functions in both Lua and C (or any other host language). Typically, C is used for better performance and to access facilities not easily accessible directly from Lua, like OS facilities
- All function arguments are optional, `nil`s are padded

```lua
function incCount (n)
	n = n or 1 -- If n is nil, set n to 1, default
	globalCounter = globalCounter + n
end
```

- Lua functions can return multiple values which can be destructed using multiple assignments, arguments to function calls, table constructors or return statements. 

```lua
function foo()
	return a, b, c
end

x, y = foo() -- x = a, y = b
x, y, z, w = foo() -- x, y, z, w = nil
x, y = foo(), 20 -- x = a, y = 20

-- when function is last or only call to another function, all results are passed

print(x, foo()) --> x a b c
print(foo(), x) --> a x

-- table constructor collects all results

t = {foo()} --> {a, b, c}

-- return also returns all results

return foo() --> a, b, c

-- you can force use of one single argument by using parentheses

print((foo())) --> a
```

- Lua functions can be *variadic* i.e. take a variable number of arguments like `print` in C using the *varag* expression (`...`)

```lua
--- three dots '...' (called varag expressions) indicate the function is variadic

function add (...)
	local s = 0
	for _, v in ipairs{...} do
		s = s + v
	end
	return s
end

print(add(3, 4, 10, 25, 12)) --> 54

--[[
local a, b = ... (truncates to first two arguments or uses nil)

function foo (a, b, c) == function foo (...) local a,b,c = ...
--]]

function fwrite(fmt, ...)
	return io.write(string.format(fmt, ...))
end
```

- You can use `{...}` to collect all the extra arguments, however, there's no way to know if explicit trailing `nils` were provided as some arguments -> use `table.pack` which also has an extra field "`n`" with the total number of arguments

```lua
function nonils(...)
	local arg = table.pack(...)
	for i = 1, arg.n do
		if arg[i] == nil then return false end
	end
	return true
end

print(nonils(2, 3, nil)) --> false
print(nonils()) --> true
```

- Another method to traverse extra arguments is to use the `select` function

```lua
select(n, ...) --> returns all arguments after the nth one
select(#, ...) --> returns total number of extra arguments

select(1, "a", "b", "c") --> a b c
select(3, "a", "b", "c") --> c
select("#", "a", "b", "c") --> 3

-- select typically used when number of results truncated to one
-- this version of add is faster when few arguments since it avoids creation of new table however cost of multiple selects adds up as the number increases 
-- this version has quadratic cost
function add (...)
	local s = 0
	for i = 1, select("#", ...) do
		s = s + select(i, ...) -- truncates to first argument
	end
	return s
end
```

- `table.unpack` takes a list and returns all elements as results. Important in *generic call mechanism* which allows us to call any function with any arguments dynamically. Function usually works on sequences since it uses length operator however you can provide explicit limits

```lua
table.unpack{10, 20, 30} --> 10 20 30

print(table.unpack({"Sun", "Mon", "Tue", "Wed"}, 2, 3)) --> Mon    Tue
```

- Lua functions do *tail-call elimination*. A *tail call* is a goto dressed as a call. It happens when a function calls another as its last action and has nothing else to do after

```lua
function f (x) x = x + 1; 
	return g(x)           -- tail call, without return it isn't a tail call since f has to discard g results
end 

--[[
The program does not need to keep any information about f on the stack once g is called. Lua eliminates f information from the stack and therefore tail calls use no stack space
]]

-- In Lua, you can use an infinite number of nested tail calls and the stack will never overflow

function foo (n)
	 if n > 0 then return foo(n - 1) end
end
```

**Exercises**

```lua
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
	return table.unpack(table.move(args, 1, args.n - 1, {}))
end

-- 6.4

```









