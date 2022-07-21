local M = {}

M.log = function(s, ...)
    local message = string.format(s, ...)

    vim.schedule(function()
        vim.notify_once(message, vim.log.levels.ERROR, {
            title = "One Monokai",
        })
    end)
end

M.meet_minimum_requirements = function()
    local nvim_version = "0.7.0"

    if vim.fn.has("nvim-" .. nvim_version) ~= 1 then
        M.log("Require minimum Neovim version: " .. nvim_version)

        return false
    end

    return true
end

return M
