---@class one_monokai.highlights
local highlights = {}

local hash_str = function(str)
    local result = 5381

    for i = 1, #str do
        result = bit.lshift(result, 5) + result + string.byte(str, i)
    end

    return result
end

---Compute hash string from provided value.
---Source: https://github.com/catppuccin/nvim/blob/main/lua/catppuccin/lib/hashing.lua
local function hashing(value)
    local type = type(value)

    if type == "table" then
        local result = 0

        for p, u in pairs(value) do
            result = bit.bxor(result, hash_str(p .. hashing(u)))
        end

        return tostring(result)
    elseif type == "function" then
        return hashing(value(require "one_monokai.colors"))
    end

    return tostring(value)
end

---Create cache file.
---@param path string
local function write_cache_file(path)
    local logs = require "one_monokai.logs"
    local file, err = io.open(path, "wb")

    if not file then
        logs.error("highlights: unable to open cache file (%s).", err)
        return
    end

    local lines = {
        [[return string.dump(function()
local logs = require "one_monokai.logs"
local set_hl = vim.api.nvim_set_hl
local function set_highlight(name, attrs)
    local ok, err = pcall(set_hl, 0, name, attrs)
    if not ok then
        logs.error("highlights(%s): %s.", name, err)
    end
end]],
    }

    for name, attrs in pairs(require "one_monokai.highlights.groups") do
        table.insert(lines, ("set_highlight(%q, %s)"):format(name, vim.inspect(attrs)))
    end

    table.insert(lines, "end, true)")

    local f = load(table.concat(lines, "\n"))

    if f then
        file:write(f())
        file:close()
    end
end

local function should_update_cache()
    local config = require "one_monokai.config"

    local saved_hash = nil
    local saved_hash_path = vim.fs.joinpath(config.cache.path, "hash")
    local saved_hash_file = io.open(saved_hash_path)

    if saved_hash_file then
        saved_hash = saved_hash_file:read()
        saved_hash_file:close()
    end

    local hash = hashing(config.options)

    if hash ~= saved_hash then
        saved_hash_file = io.open(saved_hash_path, "wb")

        if saved_hash_file then
            saved_hash_file:write(hash)
            saved_hash_file:close()
        end

        return true
    end

    return false
end

---Load all highlight groups.
function highlights.load()
    local config = require "one_monokai.config"

    if vim.fn.getftime(config.cache.path) == -1 then
        vim.fn.mkdir(config.cache.path, "p")
    end

    local highlights_path = vim.fs.joinpath(config.cache.path, "highlights")

    if should_update_cache() then
        write_cache_file(highlights_path)
    end

    dofile(highlights_path)
end

return highlights
