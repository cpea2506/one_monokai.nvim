local M = {}

local set = vim.api.nvim_command
local config = require "one_monokai.config"
local themes = require "one_monokai.themes"
local utils = require "one_monokai.utils"

M.setup = function(user_config)
    if not utils.meet_minimum_requirements() then
        return
    end

    set "hi clear"

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    -- load user config and themes
    config:extend(user_config)
    themes:new():load()

    set "colorscheme one_monokai"
end

return M
