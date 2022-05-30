local M = {}

M.log = function(message)
    vim.schedule(function()
        vim.notify_once(message, vim.log.levels.ERROR, { title = "One Monokai" })
    end)
end

M.check_color = function(name, color)
    if color:lower() == "none" then
        return true
    end

    if vim.api.nvim_get_color_by_name(color) == -1 then
        M.log(string.format("{ %s = %q } is not a valid color value", name, color))

        return false
    end

    return true
end

return M
