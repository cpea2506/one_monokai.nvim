---@class one_monokai.highlights
local highlights = {}

---Set highlight groups.
---@param groups one_monokai.highlights.groups #Highlight groups.
local function set_highlight(groups)
    local logs = require "one_monokai.logs"
    local set_hl = vim.api.nvim_set_hl

    for name, attrs in pairs(groups) do
        local status_ok, err = pcall(set_hl, 0, name, attrs)

        if not status_ok then
            logs.error("highlights(%s): %s", name, err)
        end
    end
end

---Load all highlight groups.
function highlights.load()
    local config = require "one_monokai.config"
    local default = require "one_monokai.highlights.groups"

    set_highlight(default)

    if config.highlights then
        local colors = require "one_monokai.colors"

        set_highlight(config.highlights(colors))
    end
end

return highlights
