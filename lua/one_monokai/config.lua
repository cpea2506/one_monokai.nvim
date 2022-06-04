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

return M
