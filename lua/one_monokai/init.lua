local M = {}

local default_config = {
    transparent = false,
}

M.setup = function(user_config)
    local utils = require "one_monokai.utils"

    vim.cmd "hi clear"

    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "one_monokai"

    utils.set_config(default_config, user_config)
    utils.load_themes()

    vim.api.nvim_command "colorscheme one_monokai"
end

return M
