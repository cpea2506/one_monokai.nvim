local logs = {}

logs.error = {
    msg = "",
    msg_displayed = false,
    ---Display error message.
    ---
    ---NOTE: This function receives params that will be passed to `string.format`.
    ---@param s any
    ---@param ... any
    notify = function(s, ...)
        local message = string.format(s, ...)

        logs.error.msg = message

        vim.schedule(function()
            logs.error.msg_displayed = vim.notify_once(message, vim.log.levels.ERROR, {
                title = "One Monokai",
            })
        end)
    end,
}

return logs
