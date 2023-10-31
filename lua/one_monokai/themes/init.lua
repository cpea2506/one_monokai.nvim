local themes = {}

---Set highlight groups
---@param groups groups
local function set_highlight(groups)
    local logs = require "one_monokai.logs"
    local set_hl = vim.api.nvim_set_hl

    for name, attrs in pairs(groups) do
        local status_ok, err = pcall(set_hl, 0, name, attrs)

        if not status_ok then
            logs.error.notify("themes(%s): %s", name, err)
        end
    end
end

function themes.load()
    local config = require "one_monokai.config"
    local colors = require "one_monokai.colors"
    local default = require "one_monokai.themes.groups"

    set_highlight(default)
    set_highlight(config.themes(colors))
end

return themes
