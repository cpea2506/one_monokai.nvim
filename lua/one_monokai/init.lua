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

    -- load user config into default config
    if not vim.g.one_monokai_config or not vim.g.one_monokai_config.loaded then
        vim.g.one_monokai_config = vim.tbl_extend("force", default_config, user_config or {})
        vim.g.one_monokai_config.loaded = true
    end

    utils.load_themes()

    vim.api.nvim_command "colorscheme one_monokai"
end

return M
