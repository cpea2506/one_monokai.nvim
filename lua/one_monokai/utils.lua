local M = {}

---Display error message.
---
---NOTE: This function receives params that will be passed to `string.format`.
---@param s any
---@param ... any
M.log_error = function(s, ...)
    local message = string.format(s, ...)

    vim.schedule(function()
        vim.notify_once(message, vim.log.levels.ERROR, {
            title = "One Monokai",
        })
    end)
end

---Check if user has met requirements before setting up colorscheme.
M.meet_minimum_requirements = function()
    local nvim_version = "0.7"

    if vim.fn.has("nvim-" .. nvim_version) ~= 1 then
        M.log_error("Require minimum Neovim version: " .. nvim_version)

        return false
    end

    return true
end

return M
