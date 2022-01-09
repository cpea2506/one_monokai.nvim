local M = {}

local themes = require "one_monokai.themes"
local colors = require "one_monokai.colors"
local utils = require "one_monokai.utils"

M.setup = function()
    vim.cmd "hi clear"

    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    vim.opt.background = "dark"
    vim.opt.termguicolors = true
    vim.g.colors_name = "one_monokai"

    if vim.g.one_monokai_no_bg then
        themes.editor.Normal = { fg = colors.white }
        themes.editor.SignColumn = { fg = colors.white }
        themes.editor.LineNr = { fg = colors.grey }
        themes.editor.CursorLineNr = { fg = colors.white }
    end

    for _, theme in pairs(themes) do
        utils.load(theme)
    end
end

return M
