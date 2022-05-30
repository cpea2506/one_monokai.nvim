local legacy = require "one_monokai.legacy"

local M = {}

M.options = {
    transparent = false,
    colors = {},
    ---@diagnostic disable-next-line: unused-local
    themes = function(colors)
        return {}
    end,
}

M.extend = function(user_config)
    if user_config then
        M.options = vim.tbl_deep_extend("force", M.options, user_config)
    end
end

M.load_theme = function()
    local themes = require "one_monokai.themes"

    for group, attrs in pairs(themes) do
        local ok, err = pcall(vim.api.nvim_set_hl, 0, group, attrs)

        if not ok then
            legacy.log(err)
        end
    end
end

return M
