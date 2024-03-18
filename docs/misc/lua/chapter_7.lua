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
    for _, l in ipairs(lines) do
        output_stream:write(l, "\n")
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
function sort_file_with_permission(...)
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

    -- check if output file exists
    if (exists(output_file)) then
        io.write("File " .. output_file .. " already exists. Are you sure you want to overwrite it? [y/N] ")
        local answer = io.read()
        if answer == "N" then
            print("Aborting.")
            return
        end
    end

    -- write to output
    local output_stream = output_file and assert(io.open(output_file, "w")) or io.stdout
    for _, l in ipairs(lines) do
        output_stream:write(l, "\n")
    end
    output_stream:close()
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

-- Help from - https://stackoverflow.com/a/71547888/7496319
function large_random_file()
    local op_stream = assert(io.open("large_file.txt", "w"))
    --[[
    1GB = 2^30 bytes (2^30 chars in total) of which you randomly pepper in "\n" maybe with a 1/1000 chance.
    --]]
    local chars = "abcdefghijklmnopqrstuvwxyz" -- The Char Library
    for _ = 1, 2 ^ 30 do
        if math.random(1, 1000) == 1 then
            op_stream:write("\n")
        else
            local rint = math.random(1, #chars) -- 1 out of length of chars
            local rchar = chars:sub(rint, rint) -- Pick it
            op_stream:write(rchar)
        end
    end
    op_stream:close()
end

function open_streams()
    local inp_stream = assert(io.open("large_file.txt", "r"))
    local op_stream = assert(io.open("large_file_copied.txt", "w"))
    return inp_stream, op_stream
end

function close_streans(inp_stream, op_stream)
    inp_stream:close()
    op_stream:close()
end

function byte_by_byte()
    local inp_stream, op_stream = open_streams()
    while true do
        local byte = inp_stream:read(1)
        if byte == nil then break end
        op_stream:write(byte)
    end
    close_streans(inp_stream, op_stream)
end

function line_by_line()
    local inp_stream, op_stream = open_streams()
    while true do
        local line = inp_stream:read("l")
        if line == nil then break end
        op_stream:write(line, "\n")
    end
    close_streans(inp_stream, op_stream)
end

function chunk_by_chunk()
    local inp_stream, op_stream = open_streams()
    local chunk_size = 2 ^ 13
    while true do
        local chunk = inp_stream:read(chunk_size)
        if chunk == nil then break end
        op_stream:write(chunk)
    end
    close_streans(inp_stream, op_stream)
end

function whole_file()
    local inp_stream, op_stream = open_streams()
    local file_contents = inp_stream:read("a")
    op_stream:write(file_contents)
    close_streans(inp_stream, op_stream)
end

function time_all()
    -- byte by byte
    local start = os.clock()
    byte_by_byte()
    local end_ = os.clock()
    print("Byte by byte " .. end_ - start)

    -- line by line
    local start = os.clock()
    line_by_line()
    local end_ = os.clock()
    print("Line by line " .. end_ - start)

    -- chunk by chunk
    local start = os.clock()
    chunk_by_chunk()
    local end_ = os.clock()
    print("Chunk by chunk " .. end_ - start)

    -- whole file
    local start = os.clock()
    whole_file()
    local end_ = os.clock()
    print("Whole file " .. end_ - start)
end

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

local function reverse(tab)
    for i = 1, #tab // 2, 1 do
        tab[i], tab[#tab - i + 1] = tab[#tab - i + 1], tab[i]
    end
    return tab
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
function create_directory(dirname)
    os.execute("mkdir " .. dirname)
end

function delete_directory(dirname)
    os.execute("rm -rf " .. dirname)
end

function directory_contents(dirname)
    local f = assert(io.popen("ls -a " .. dirname))
    local dir = {}
    for file in f:lines() do
        dir[#dir + 1] = file
    end
    f:close()
    return dir
end

--- 7.7
--[[
    os.execute spaws a child process and so the "change directory" command is only applicable to the child process.
    https://itecnote.com/tecnote/r-lua-change-current-working-dir-linux-without-lfs-or-any-non-std-modules/
--]]
