---
title: Programming in lua
authors: Roberto Ierusalimschy
year: 2006
url: ""
Zotero URI: zotero://select/items/@ierusalimschy2006programming
tags:
  - reading
aliases:
  - Programming in Lua
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
["*"]  = "mul",
["/"]  = "div",
}
```

- A *sequence* is a table where the positive numeric keys comprise a set $\{1,\ldots,n\}$ for some $n$ i.e. none of the indices store `nil` values (a key with `nil` is technically not in the table)
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

- Suppose you want to know if a given function exists in a given library (`lib.foo`) you can use `lib and lib.foo`. In C#, you can instead use the *safe navigation operator* (`?`). For `a?.b` if `a` is `nil` so is `a?.b`. You can emulate this behavior in Lua by generating an empty table if `a` is `nil` -- `(a or {}).b`

```lua
zip = company and company.director and company.director.address and company.director.address.zipcode

-- In C#, you can instead use ? but not in Lua
zip = company?.director?.address?.zipcode

-- In Lua, you can emulate it
zip = (((company or {}).director or {}).address or {}).zipcode
```

- Table operations are not efficient since they involve *moving* i.e. copying elements to fill gaps
```lua
table.insert(t, <index>, value) -- inserts value at index moving elements down, defaults to end

table.remove(t, <index>) -- removes element from position moving all elements up, defaults to end

table.move(t, start, end, position, <table2>) -- moves elements in table from index start until end (inclusive) to position

table.move(a, 1, #a, 1, {}) -- copies table a into provided table and returns table

table.move(a, 1, #a, #b + 1, b) -- appends all elements from list a to end of list b
```

#### Exercises

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
a["a"] -- which is a again and is referenced over and over 
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

- Parentheses are optional if function has only one argument that is either a string literal or a table constructor

```lua
print "Hello World"
f{x=10, y=20}
type{}
```

- A Lua program can use functions in both Lua and C (or any other host language). Typically, C is used for better performance and to access facilities not easily accessible directly from Lua, like OS facilities
- All function arguments are optional, `nil`s are tail-padded

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
--- three dots '...' (called varag expression) indicate the function is variadic

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
select("#", ...) --> returns total number of extra arguments

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

#### Exercises

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
	return table.unpack(table.move(args, 1, args.n - 1, 1, {}))
end

-- 6.4 using the Fisher-Yates shuffle
function shuffle(a)
	for i = 1,#a - 1 do
		j = math.random(i, #a)
		a[i], a[j] = a[j], a[i]
	end                            -- since Lua uses table references, you don't have to return the table
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
Sometimes, a language with proper-tail calls is called properly tail recursive, with the argu- ment that this property is relevant only when we have recursive calls. (Without recursive calls, the maxi- mum call depth of a program would be statically fixed.)

Show that this argument does not hold in a dynamic language like Lua: write a program that performs an unbounded call chain without recursion. (Hint: see the section called “Compilation”.)
]]
```

- [Passing Parameters by Reference. Lua forces copy semantics for simple value types (nil, boolean, number, string, light userdata) and reference semantics for complex types (function, table, userdata).](https://lua-l.lua.narkive.com/IQTSNTjf/passing-parameters-by-reference#:~:text=Passing%20Parameters%20by%20Reference&text=Lua%20forces%20copy%20semantics%20for,table%2C%20userdata).)

- [ ] Exercise 6.6

## 7 The External World

- Lua doesn't offer much to communicate with the external world. Like ISO C, it only offers basic file manipulation plus some extras. Most I/O is done either by the host application or through external libraries

The I/O library uses two models for file manipulations

1. *Simple Model*
		- Assumes the existence of a *current input* and a *current output* streams set using the `io.input` and `io.output` functions resp and initialized to `stdin` and `stdout` resp
		- `io.write` takes an arbitrary number of strings or numbers and writes them to the output stream (avoid explicit concatenation and avoid using `print` unless for dirty debugging)
		- `io.read` reads strings controlled by the arguments passed to it
		- Can only read from (write to) a single file at a point

```lua
-- to control the conversion of numbers to string, use string.format
io.write("sin(3) = ", math.sin(3), "\n") --> sin(3) = 0.14112000805987
io.write(string.format("sin(3) = %.4f\n", math.sin(3))) --> sin(3) = 0.1411

--[[
-- io.read reads strings based on the arguments passed to it

a - read whole file, return empty string if file is empty
l - default; read next line dropping newline, return nil if file is empty
L - read next line keeping newline, same as above
n - reads a number skipping whitespaces; if not number, return nil
num - reads st most num chars as string if eof, returns nil

io.read(0) returns nil if eof, else empty string ""
--]]

-- Lua handles strings well, filters can be written like
t = io.read("a") -- read whole file
t = string.gsub(t, "bad", "good") -- do job
io.write(t) -- write the file

-- copy input to output with line numbers
local count = 0
for line in io.lines() do 
	count = count + 1
	io.write(string.format("%6d ", count), line, "\n")
end

-- Sort a file
local lines = {}
-- read lines to table lines
for line in io.lines() do
	lines[#lines + 1] = line
end
-- sort
table.sort(lines)
-- write
for _,l in ipairs(lines) do
	io.write(l, "\n")
end

-- Efficient: Copy input to output in blocks
while true do
	local block = io.read(2^13)           -- block size = 8K
	if not block then break end
	io.write(block)
end

-- You can call read with multiple args
while true do
	local n1, n2, n3 = io.read("n", "n", "n")
	if not n1 then break end
	print(math.max(n1, n2, n3))
end
```

2. *Complete I/O Model* 
	- `io.open(<name>, <mode>)` opens file `name` (as a stream) in one of three modes (`r` - read, `w` - truncate and write, `a` - append, `b` - optional; binary)
	- You can use methods  (on the stream objects) `read` and `write` to read from and write to the opened stream

```lua
print(io.open("non-existent-file", "r")) --> nil non-existent-file: No such file or directory 2
print(io.open("/etc/passwd", "w")) --> nil /etc/passwd: Permission denied 13

-- idiomatic way
local f = assert(io.open(filename, mode)) -- error message goes to second arg of assert

-- Read whole file
local f = assert(io.open(filename, "r"))
local t = f:read("a")
f:close()

-- Accessing predefined C streams - io.stdin, io.stdout and io.stderr
io.stderr:write(message)

-- Mix both models by setting streams
local temp = io.input() -- save current input stream (which is returned when no args are passed)
io.input("newinput") -- open new current stream
-- do something with stream
io.input():close() -- close current stream
io.input(temp) -- restore original input stream

-- io.read(args) === io.input():read(args)
-- io.write(args) === io.output():write(args)

-- io.lines provides an iterator that reads from a stream
-- You can provide a file name to io.lines which will open a stream over the file in read mode and will close it after reachine eof
-- iterate over blocks
for block in io.input():lines(2^13) so -- lines accepts same args as read
	io.write(block)
end
```

- Other operations on files include
	- `io.tmpfile` - returns stream over temporary file that gets deleted when program ends
	- `flush` - executes all pending write to file
	- `setvbuf` - sets buffering mode; accepts two arguments - 1. (`"no"` - no buffering, `"full"` - write when buffer is full and `"line"` - write when newline is output) 2. Size of buffer
		- `io.stderr` is not buffered and `io.stdout` is line buffered
	- `f:seek(whence, offset)` - `seek` can both get and set the current position of a stream; 
		- `whence`: 
			- `"set"` - offsets related to beginning of file, 
			- `"cur"` - default; offsets relative to current position and 
			- `"end"` - offsets relative to end of file)
		- `offset`
			- `0` - default
		- Returns current position of stream measured in bytes from the beginning of the file. 
	- `os.rename` - changes name of file
	- `os.remove` - deletes a file
	- All functions return `nil` + error message in case of errors

```lua
-- file:seek(whence, offset)
file:seek() --> current stream position
file:seek("set") --> resets position to beginning and returns 0
file:seek("end") --> sets position to eof and returns its size

function fsize (file)
	local current = file:seek()   -- save current position
	local size = file:seek("end") -- get file size
	file:seek("set", current)     -- restore position
	return size
end
```

Other system calls:
- `os.exit(status)` - terminates execution of program
	- `status` - (`0/true` - successful execution)
- `os.getenv(var)` - gets value of an environment variable; returns `nil` for undefined variables
- `os.execute` - runs a system command and returns command status; returns three results
	1. Boolean 
		- `true` - program exited with no errors
	2. String 
		- `"exit"` - terminated normally
		- `"signal"` - interrupted by a signal
	3. return status if terminated normally or the number of the signal that terminated the program
- `os.popen` - also runs system command but also connects the command output (or input) to a new local stream and returns that stream

For more extended capabilities, use libraries `LuaFileSystem` and `luaposix`

```lua
--- os.getenv
print(os.getenv("HOME")) --> /home/lua

-- Create new directories
function createDir (dirname)
	os.execute("mkdir " .. disname)
end

-- Build table with entries in current directories
local f = io.popen("ls .", "r") -- "r" means to read; default
local dir = {}
for entry in f:lines() so
	dir[#dir + 1] = entry
end

-- Send email
local subject = "some news"
local address = "someone@somewhere.org"
local cmd = string.format("mail -s '%s' '%s'", subject, address)
local f = io.popen(cmd, "w") -- in write mode
f:write([[
Nothing important to say.
-- me
]])
f:close()
```

#### Exercises

```lua 
-- 7.1 Works except for stdin, how does it know when to stop reading from stdin?
function sort_file(...)
	local input_file, output_file = ...
	output_file = output_file or input_file or nil
	
	-- read lines
	local input_stream = input_file and assert(io.open(input_file, "r")) or io.stdin
	local lines = {}
	for line in input_stream:lines() do
		lines[#lines + 1] = line
	end
	input_stream:close()

	-- sort lines
	table.sort(lines)

	-- write to output
	local output_stream = output_file and assert(io.open(output_file, "w")) or io.stdout
	for _,l in ipairs(lines) do
		output_stream:write(l,"\n")
	end
	output_stream:close()
end

-- 7.2 

--- https://stackoverflow.com/a/40195356/7496319
--- Check if a file or directory exists in this path
function exists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	return ok, err
end

-- Added lines after sorting
-- check if output file exists

if (exists(output_file)) then
	io.write("File " .. output_file .. " already exists. Are you sure you want to overwrite it? [y/N] ")
	local answer = io.read()
	if answer == "N" then
		print("Aborting.")
		return
	end
end

-- 7.3

--[[
Generated a 1GB file of random-lenth lines with of lowercase alphabets. 
	Byte by byte 531.462083
	Line by line 5.488547
	Chunk by chunk 1.788245
	Whole file 2.788003

See more here - https://www.lua.org/pil/21.2.1.html
--]]

-- 7.4 & 7.5

local function whole_file_read(f)
-- First character has been read
	return f:seek() == 1
end

  
function last_line_from_stream(f)
	local last_line = ""
	while true do
		f:seek("cur", -2)
		local c = f:read(1)
		if c == "\n" or c == nil then break end
		last_line = c .. last_line
		if whole_file_read(f) then break end
	end
	return last_line
end

function last_n_lines(input_file, n)
	local f = assert(io.open(input_file, "r"))
	f:seek("end")
	local lines = {}
	for _ = 1, n do
		lines[#lines + 1] = last_line_from_stream(f)
		if whole_file_read(f) then break end
	end
	lines = reverse(lines)
	return table.concat(lines, "\n")
end

--- 7.6



```

- [ ] 7.3 I'm not sure about the exact answer to the second part. This [Link](https://luajit.org/ext_buffer.html#:~:text=The%20maximum%20size%20of%20a,memory%20limit%20of%20your%20OS.) says the maximum size of the Lua string is just under 2GB 
















