local config = {}

---@alias colors table<string,string> #colors table
---
---@class config
---@field transparent boolean #whether to enable transparent background
---@field colors colors #custom colors
---@field themes fun(colors:colors):table #custom highlight groups
---@field italics boolean #whether to italicize some highlight groups
config.default = {
    transparent = false,
    colors = {},
    themes = function(_)
        return {}
    end,
    italics = true,
}

---@type config
config.extended = vim.deepcopy(config.default)

---Extend default with user config
---@param user_config config
function config:extend(user_config)
    self.extended = vim.tbl_deep_extend("force", self.extended, user_config or {})
end

return setmetatable(config, {
    __index = function(_, key)
        return config.extended[key]
    end,
})
