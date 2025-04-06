---@class logs
local logs = {}

---Display a notification to the user
---@param level vim.log.levels
---@param s string
local function notify(level, s, ...)
    local message = string.format(s, ...)

    vim.notify_once(message, level, {
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
        notify(vim.log.levels.WARN, s, ...)
    end,
}

return logs
