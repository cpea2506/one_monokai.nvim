local highlight = { groups = {} }

function highlight:new(groups)
    self.groups = groups

    return self
end

function highlight:set()
    for group, attrs in pairs(self.groups) do
        local status_ok, err = pcall(vim.api.nvim_set_hl, 0, group, attrs)

        if not status_ok then
            error(string.format("themes(%s): %s", group, err), 0)
        end
    end
end

return highlight
