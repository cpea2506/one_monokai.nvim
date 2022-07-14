local M = {}

M.log = function(s, ...)
    local message = string.format(s, ...)

    vim.schedule(function()
        vim.notify_once(message, vim.log.levels.ERROR, {
            title = "One Monokai",
        })
    end)
end

return M
