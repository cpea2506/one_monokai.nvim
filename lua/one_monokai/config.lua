---@class one_monokai.config
---@field transparent boolean
---@field colors? one_monokai.colors
---@field highlights? fun(colors:one_monokai.colors):one_monokai.highlights.groups
---@field italics boolean
local config = {}

---@type one_monokai.config
local defaults = {
    transparent = false,
    colors = nil,
    ---@deprecated
    themes = nil,
    highlights = nil,
    italics = true,
}

local options = vim.deepcopy(defaults)

---Extend default with user's config.
---@param opts one_monokai.config
function config.extend(opts)
    if not opts or vim.tbl_isempty(opts) then
        return
    end

    local logs = require "one_monokai.logs"

    if opts.themes then
        logs.warning(
            "config: %q option has been deprecated and will be removed soon. Please update your config to use %q instead.",
            "themes",
            "highlights"
        )

        opts.highlights = opts.themes
    end

    options = vim.tbl_deep_extend("force", options, opts)
end

setmetatable(config, {
    __index = function(_, k)
        return options[k]
    end,
})

return config
