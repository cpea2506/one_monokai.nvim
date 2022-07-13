local highlight = { groups = {} }

---Create new highlight instance with defined groups
---@param groups table|nil #list of highlight groups
---@return table #highlight instance
function highlight:new(groups)
    self.groups = groups

    return self
end

---Set highlight
function highlight:set()
    for group, attrs in pairs(self.groups) do
        local status_ok, err = pcall(vim.api.nvim_set_hl, 0, group, attrs)

        if not status_ok then
            error(string.format("themes(%s): %s", group, err), 0)
        end
    end
end

---Extend current highlight groups with user's highlight groups
---@param user_groups any
---@return table #highlight instance
function highlight:extend(user_groups)
    local extended_groups = vim.tbl_deep_extend("force", self.groups, user_groups)

    return self:new(extended_groups)
end

return highlight
