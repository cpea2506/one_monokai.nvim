local M = {}

local set = vim.api.nvim_command
local config = require "one_monokai.config"
local themes = require "one_monokai.themes"

M.setup = function(user_config)
    if vim.g.colors_name then
        set [[hi clear]]
    end

    if vim.fn.exists "syntax_on" then
        set [[syntax reset]]
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    -- load user config and themes
    config:extend(user_config)
    themes:new():load()

    set [[colorscheme one_monokai]]
end

return M
