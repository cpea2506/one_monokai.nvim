local M = {}

function M.setup(opts)
    local set = vim.cmd
    local config = require "one_monokai.config"
    local highlights = require "one_monokai.highlights"

    if vim.g.colors_name then
        set.hi "clear"
    end

    if vim.fn.exists "syntax_on" then
        set.syntax "reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    config.extend(opts)
    highlights.load()
end

return M
