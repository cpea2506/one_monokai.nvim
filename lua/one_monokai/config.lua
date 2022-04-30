local M = {}

local colors = require "one_monokai.colors"

M.options = {
    transparent = false,
    colors = colors,
    themes = function(user_colors)
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

    for group, setting in pairs(themes) do
        vim.api.nvim_set_hl(0, group, setting)
    end
end

return M
