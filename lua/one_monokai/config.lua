local M = {}

local default_config = {
    transparent = false,
}

M.extend = function(user_config)
    if not vim.g.one_monokai_config or not vim.g.one_monokai_config.loaded then
        vim.g.one_monokai_config = vim.tbl_extend("keep", vim.g.one_monokai_config or {}, default_config)
        vim.g.one_monokai_config.loaded = true
    end

    -- load user config into default config
    if user_config then
        vim.g.one_monokai_config = vim.tbl_extend("force", vim.g.one_monokai_config, user_config)
    end
end

M.load_theme = function()
    local themes = require "one_monokai.themes"

    for _, theme in pairs(themes) do
        for group, setting in pairs(theme) do
            vim.api.nvim_set_hl(0, group, setting)
        end
    end
end

return M
