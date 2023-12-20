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

[Exercises](https://github.com/Jayitha/Notes/blob/main/Misc/Lua/chapter_5.lua)

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

```lua title:"Functions can return multiple values" hl:2
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

- You can use `{...}` to collect all the extra arguments, however, there's no way to know if explicit trailing `{lua} nil` were provided as some arguments -> use `table.pack` which also has an extra field "`n`" with the total number of arguments

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

[Exercises](https://github.com/Jayitha/Notes/blob/main/Misc/Lua/chapter_6.lua)

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

[Exercises](https://github.com/Jayitha/Notes/blob/main/Misc/Lua/chapter_7.lua)

- [ ] 7.3 I'm not sure about the exact answer to the second part. This [Link](https://luajit.org/ext_buffer.html#:~:text=The%20maximum%20size%20of%20a,memory%20limit%20of%20your%20OS.) says the maximum size of the Lua string is just under 2GB 

## 8 Filling Some Gaps

Local variables and blocks:
- By default, variables are global in Lua.
- Local variables are scope-limited to the declaration block
- in interactive mode each line is a chunk, so if you were to use `local a = 1`, `a` goes out of scope immediately after
- To define blocks as in other languages using `{}`, you can use `do ... end` blocks in Lua
- It is good programming practice to use Local variables to avoid cluttering the global environment
- Book encourages declarations in the middle of blocks so we don't forget to initialize them

```lua
-- blocks
do
	-- something
end

-- common idiom
local foo = foo -- done to preserve global foo
```

Control Structures
- `if then else`:
	- Lua has no `switch` statement
- `while`
- `repeat-until`
	- An interesting aspect of Lua's `repeat` clause is that local variables declared in the `repeat` block are accessible in the `until` condition
- Numerical for
	- `for var = expr1, expr2, expr3` where `expr3` is the step size. 
	- All three expressions are computed only once at the beginning of the loop
	- `expr3` is optional; default 1
	- The control variable is local to the loop and should not be reassigned inside the loop; it'll lead to unexpected behavior
- Generic for
	- Traverses all values returned by an iterator function
	- Covered in detail in [[ierusalimschy2006programming#18 Iterators and the Generic For|18 Iterators and the Generic For]]
- `break`
- `return`
	- Implicit return at end of every function
	- `return` can only appear as the last statement of a block
	- If you want to use `return` in the middle of a block, use a `do ... end` block
- `goto`
	- Labels have a (intentionally) convoluted syntax `::label::`
	- Labels follow the usual visibility rules; cannot jump into a block because a label inside a block is not visible outside it
	- Cannot jump out of a function (why?)
	- Cannot jump into the scope of a local variable (labels are *void* statements). Scope of a local variable ends on the last *non-void* statement of the block where the label is defined
	- Usually used to simulate programming constructs from other languages like `redo` and `continue`
	- Good at directly translating state machines

```lua
-- if then else
if op == '+' then
	r = a + b
elseif op == '-' then
	r = a - b
else -- optional
	error("invalid operation")

-- while
local i = 1
while a[i] do
	print(a[i])
	i = i + 1
end

-- repeat-until
-- computes square root of 'x' using Newton-Raphson method
local sqr = x / 2
repeat
	sqr = (sqr + x/sqr) / 2
	local error = math.abs(sqr^2 - x)
until error < x / 10000                -- local 'error' 

-- Numerical for
-- syntax
for var = expr2, expr2, expr3 do
	-- something
end

-- when you want a loop without an upper limit, use math.huge
for i = 1, math.huge do                 -- what's the value of math.huge?
	-- something
end

--- goto
-- simulate redo and continue
while some_condition do
	::redo::
	if some_other_condition then goto continue
	else if yet_another_condition then goto redo
	end
	-- some code
	::continue::
end

-- labels are void statements
while some_condition do
	if some_other_condition then goto continue end
	local var = something
	::continue::                  -- scope of 'var' ends before continue
end

-- state machine to check if input has even number of zeros
::s1:: do                 -- does this not automatically start executing?
	local c = io.read(1)
	if c == '0' then goto s2
	elseif c == nil then print "ok"; return
	else goto s1
	end
end

::s2:: do
	local c = io.read(1)
	if c == '0' then goto s1
	elseif c == nil then print "not ok"; return
	else goto s2
	end
end

goto s1            -- not needed to start the program
```

[Exercises](https://github.com/Jayitha/Notes/blob/main/Misc/Lua/chapter_8.lua)

- [x] what's the value of `math.huge` ?
- The [Link](http://lua-users.org/wiki/MathLibraryTutorial) says `math.huge` is a constant and represents infinity

## 18 Iterators and the Generic For
#todo










