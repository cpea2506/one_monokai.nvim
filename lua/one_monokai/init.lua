local M = {}

local did_setup = false
local config = require "one_monokai.config"
local compiler = require "one_monokai.lib.compiler"
local utils = require "one_monokai.utils"

function M.load()
    if not did_setup then
        M.setup()
    end

    local compiled_path = utils.join_paths(config.compile_path, "themes")
    local f = loadfile(compiled_path)

    if not f then
        compiler.compile()

        f = assert(loadfile(compiled_path), "could not load cache")
    end

    f()
end

function M.setup(opts)
    local hasher = require "one_monokai.lib.hasher"

    did_setup = true
    config:extend(opts)

    -- Get cached hash
    local cached_hash_path = utils.join_paths(config.compile_path, "hash")
    local file = io.open(cached_hash_path)
    local cached_hash = nil

    if file then
        cached_hash = file:read()
        file:close()
    end

    -- Get current hash
    local git_path = debug.getinfo(1).source:sub(2, -24) .. ".git"
    local git = vim.fn.getftime(git_path) -- 2x faster vim.loop.fs_stat
    local hash = hasher.hash(config.options)
        .. (git == -1 and git_path or git) -- no .git in /nix/store -> cache path
        .. (vim.o.winblend == 0 and 1 or 0) -- :h winblend
        .. (vim.o.pumblend == 0 and 1 or 0) -- :h pumblend

    -- Recompile if hash changed
    if cached_hash ~= hash then
        compiler.compile()
        file = io.open(cached_hash_path, "wb")

        if file then
            file:write(hash)
            file:close()
        end
    end
end

return M
