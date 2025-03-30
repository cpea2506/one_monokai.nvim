local config = {}

---@class options
---@field transparent boolean #Whether to enable transparent background
---@field colors colors #Custom colors
---@field highlights? fun(colors:colors):groups #Custom highlight groups
---@field italics boolean #Whether to apply italics to certain highlight groups
local defaults = {
    transparent = false,
    colors = {},
    ---@deprecated
    themes = nil,
    highlights = nil,
    italics = true,
}

---@type options
local options = vim.deepcopy(defaults)

---Extend default with user's config
---@param opts options
function config.extend(opts)
    if not opts or vim.tbl_isempty(opts) then
        return
    end

    local logs = require "one_monokai.logs"

    if opts.themes then
        logs.notify.warning(
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
