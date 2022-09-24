local M = {}

local set = vim.cmd
local config = require "one_monokai.config"
local themes = require "one_monokai.themes"
local utils = require "one_monokai.utils"

function M.setup(user_config)
    if not utils.meet_minimum_requirements() then
        return
    end

    set "hi clear"

    if vim.fn.exists "syntax_on" then
        set "syntax reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    -- load user config and themes
    config:extend(user_config)
    themes.load()

    if config.options.use_cmd then
        set "colorscheme one_monokai"
    end
end

M.colors = require "one_monokai.colors"

return M
