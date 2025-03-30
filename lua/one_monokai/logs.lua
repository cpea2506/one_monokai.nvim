---@class logs
local logs = {}

---Display a notification to the user
---@param log_level string
---@param s string
local function notify(log_level, s, ...)
    local message = string.format(s, ...)

    vim.notify_once(message, log_level, {
        title = "One Monokai",
    })
end

---@class notify
---@field error fun(s:string, ...) #Show error message
---@field warning fun(s: string, ...) #Show warning message
logs.notify = {
    error = function(s, ...)
        notify(vim.log.levels.ERROR, s, ...)
    end,
    warning = function(s, ...)
        notify(vim.log.levels.WARNING, s, ...)
    end,
}

return logs
