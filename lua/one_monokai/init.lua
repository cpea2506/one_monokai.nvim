local M = {}

local utils = require "one_monokai.utils"

M.setup = function()
    vim.cmd "hi clear"

    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    if vim.g.one_monokai_no_bg then
        vim.notify(
            "Option one_monokai_no_bg has been deprecated. Please update follow the README",
            vim.log.levels.WARN,
            { title = "One Monokai" }
        )
    end

    utils.load_themes()
end

return M
