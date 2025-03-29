local M = {}

function M.setup(opts)
    local set = vim.cmd
    local config = require "one_monokai.config"
    local themes = require "one_monokai.themes"

    if vim.g.colors_name then
        set.hi "clear"
    end

    if vim.fn.exists "syntax_on" then
        set.syntax "reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    config:extend(opts)
    themes.load()
end

return M
