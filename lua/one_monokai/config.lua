local config = {}

---@class options
---@field transparent boolean #Whether to enable transparent background
---@field colors colors #Custom colors
---@field themes fun(colors:colors):groups #Custom highlight groups
---@field italics boolean #Whether to italicize some highlight groups
local defaults = {
    transparent = false,
    colors = {},
    themes = function(_)
        return {}
    end,
    italics = true,
}

config.options = vim.deepcopy(defaults)

---Extend default with user's config
---@param opts options
function config:extend(opts)
    self.options = vim.tbl_deep_extend("force", self.options, opts or {})
end

return setmetatable(config, {
    __index = function(_, key)
        return config.options[key]
    end,
})
