local M = {}

M.log = function(message)
    vim.schedule(function()
        vim.notify_once(message, vim.log.levels.ERROR, {
            title = "One Monokai",
        })
    end)
end

M.check_colors = function(name, value)
    if value:lower() == "none" then
        return true
    end

    if vim.api.nvim_get_color_by_name(value) == -1 then
        M.log(string.format("colors(%s): %q is not a valid color", name, value))

        return false
    end

    return true
end

return M
