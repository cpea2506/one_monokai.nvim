local config = {
    options = {
        transparent = false,
        colors = {},
        themes = function(_)
            return {}
        end,
    },
}

function config:extend(user_config)
    if user_config then
        self.options = vim.tbl_deep_extend("force", self.options, user_config)
    end
end

return config
