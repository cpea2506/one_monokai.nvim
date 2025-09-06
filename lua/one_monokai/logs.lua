---@class one_monokai.logs
local logs = {}

---Display a notification to the user.
---@param level vim.log.levels
---@param s string|number
---@param ... any
local function notify(level, s, ...)
    local message = string.format(s, ...)

    vim.notify(message, level, {
        title = "One Monokai",
    })
end

---Display an error message to the user.
---@param s string|number
---@param ... any
logs.error = function(s, ...)
    notify(vim.log.levels.ERROR, s, ...)
end

---Display a warning message to the user.
---@param s string|number
---@param ... any
logs.warning = function(s, ...)
    notify(vim.log.levels.WARN, s, ...)
end

return logs
