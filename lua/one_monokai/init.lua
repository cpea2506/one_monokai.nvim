local M = {}

M.setup = function()
    local utils = require "one_monokai.utils"

    vim.cmd "hi clear"

    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    utils.load_themes()

    vim.cmd [[colorscheme one_monokai]]
end

return M
