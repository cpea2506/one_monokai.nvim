local M = {}

local highlight = function(group, color)
    local fg = color.fg and "guifg=" .. color.fg or "guifg=None"
    local bg = color.bg and "guibg=" .. color.bg or "guibg=None"
    local style = color.style and "gui=" .. color.style or "gui=None"

    local highlight = table.concat({ "highlight", group, fg, bg, style }, " ")

    vim.cmd(highlight)
end

M.load_themes = function()
    local themes = require "one_monokai.themes"

    for _, theme in pairs(themes) do
        for group, color in pairs(theme) do
            highlight(group, color)
        end
    end
end

M.set_config = function(default_config, user_config)
    if not vim.g.one_monokai_config or not vim.g.one_monokai_config.loaded then
        vim.g.one_monokai_config = vim.tbl_extend("keep", vim.g.one_monokai_config or {}, default_config)
        vim.g.one_monokai_config.loaded = true
    end

    -- load user config into default config
    if user_config then
        vim.g.one_monokai_config = vim.tbl_extend("force", vim.g.one_monokai_config, user_config)
    end
end

return M
