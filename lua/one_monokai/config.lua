local config = {}

---@class config
config.default = {
    ---@type boolean #whether to enable transparent background
    transparent = false,
    ---@type table<string, string> #custom colors
    colors = {},
    ---custom highlight groups
    ---@param _ table<string, string>|nil #colors table
    ---@return table #list of configured highlight groups
    themes = function(_)
        return {}
    end,
    ---@type boolean #whether to italicize some highlight groups
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
