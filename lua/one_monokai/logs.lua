local logs = {}

logs.error = {
    ---Display error message.
    ---
    ---NOTE: This function receives params that will be passed to `string.format`.
    ---@param s string
    ---@param ... any
    notify = function(s, ...)
        local message = string.format(s, ...)

        vim.notify_once(message, vim.log.levels.ERROR, {
            title = "One Monokai",
        })
    end,
}

return logs
