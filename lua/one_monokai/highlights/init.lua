---@class one_monokai.highlights
local highlights = {}

---Set highlight groups.
---@param groups one_monokai.highlights.groups #Highlight groups.
local function set_highlight(groups)
    local logs = require "one_monokai.logs"
    local set_hl = vim.api.nvim_set_hl

    for name, attrs in pairs(groups) do
        local ok, err = pcall(set_hl, 0, name, attrs)

        if not ok then
            logs.error("highlights(%s): %s", name, err)
        end
    end
end

---Load all highlight groups.
function highlights.load()
    -- Core groups should be loaded first to prevent screen flickering.
    local core_groups = require "one_monokai.highlights.groups.core"
    set_highlight(core_groups)

    ---@type uv.uv_async_t?
    local async = nil

    async = vim.uv.new_async(vim.schedule_wrap(function()
        local groups = require "one_monokai.highlights.groups"
        set_highlight(groups)

        if async ~= nil then
            async:close()
        end
    end))

    if async ~= nil then
        async:send()
    end
end

return highlights
