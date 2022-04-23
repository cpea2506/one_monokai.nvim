local M = {}

local set = vim.cmd

local config = require "one_monokai.config"

M.setup = function(user_config)
    set [[hi clear]]

    if vim.fn.exists "syntax_on" then
        set [[syntax reset]]
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    -- load user config and themes
    config.extend(user_config)
    config.load_theme()

    set [[colorscheme one_monokai]]
end

return M
