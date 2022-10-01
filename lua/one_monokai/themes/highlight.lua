local highlight = { groups = {} }

highlight.__index = highlight

---Create new highlight instance with defined groups.
---@param groups table|nil #list of highlight groups.
---@return table #highlight instance.
function highlight:new(groups)
    local object = {}

    setmetatable(object, self)
    object.groups = groups

    return object
end

local set_hl = vim.api.nvim_set_hl

---Set highlight.
function highlight:set()
    for name, attrs in pairs(self.groups) do
        local status_ok, err = pcall(set_hl, 0, name, attrs)

        if not status_ok then
            error(string.format("themes(%s): %s", name, err))
        end
    end
end

---Extend current highlight groups with user's highlight groups.
---@param user_groups any[] #user defined highlight groups.
---@return table #highlight instance.
function highlight:extend(user_groups)
    local extended_groups = vim.tbl_extend("force", self.groups, user_groups)

    return highlight:new(extended_groups)
end

return highlight
