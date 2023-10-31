local logs = {}

logs.error = {
    ---Display error message.
    ---
    ---NOTE: This function receives params that will be passed to `string.format`.
    ---@param s any
    ---@param ... any
    notify = function(s, ...)
        local message = string.format(s, ...)

        vim.schedule(function()
            vim.notify_once(message, vim.log.levels.ERROR, {
                title = "One Monokai",
            })
        end)
    end,
}

return logs
