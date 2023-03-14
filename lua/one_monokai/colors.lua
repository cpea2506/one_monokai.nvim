local logs = require "one_monokai.logs"
local config = require "one_monokai.config"

local colors = {}

colors.default = {
    fg = "#abb2bf",
    bg = "#282c34",
    gray = "#676e7b",
    pink = "#e06c75",
    green = "#98c379",
    cyan = "#56b6c2",
    aqua = "#61afef",
    yellow = "#e5c07b",
    purple = "#c678dd",
    peanut = "#f6d5a4",
    orange = "#d19a66",
    dark_pink = "#ff008c",
    dark_cyan = "#2b8db3",
    red = "#f75f5f",
    dark_red = "#d03770",
    white = "#d7d7ff",
    light_gray = "#9ca3b2",
    dark_gray = "#4b5261",
    vulcan = "#383a3e",
    dark_green = "#2d2e27",
    dark_blue = "#26292f",
    black = "#1e2024",
    none = "NONE",
}

---Check if color is valid before setting it
---@param name string #name of the color
---@param value any # value of the color
local function is_valid_color(name, value)
    local type_ok, err = pcall(vim.validate, {
        ["colors(" .. name .. ")"] = { value, "string" },
    })

    if not type_ok then
        logs.error.notify(err)

        return false
    end

    if value:lower() == "none" then
        return true
    end

    if vim.api.nvim_get_color_by_name(value) == -1 then
        logs.error.notify("colors(%s): %q is not a valid color", name, value)

        return false
    end

    return true
end

function colors:get()
    local user_colors = config.colors

    if vim.tbl_isempty(user_colors) then
        return self.default
    end

    for name, value in pairs(user_colors) do
        if not is_valid_color(name, value) then
            return self.default
        end
    end

    return vim.tbl_extend("force", self.default, user_colors)
end

return colors:get()
