local config = {
    options = {
        -- whether to call vim.cmd.colorscheme on setup
        use_cmd = false,
        -- enable transparent background
        transparent = false,
        -- custom colors
        colors = {},
        ---Define custom highlighting groups
        ---@param _ table|nil #colors table
        ---@return table #list of configured highlighting groups
        themes = function(_)
            return {}
        end,
    },
}

function config:extend(user_config)
    if not user_config then
        return
    end

    self.options = vim.tbl_deep_extend("force", self.options, user_config)
end

return config
