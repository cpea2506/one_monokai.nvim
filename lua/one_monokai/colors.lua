local config = require "one_monokai.config"
local utils = require "one_monokai.utils"

local colors = {
    default = {
        -- main colors
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
        none = "NONE",

        -- support colors
        dark_pink = "#ff008c",
        dark_cyan = "#2b8db3",
        red = "#f75f5f",
        white = "#d7d7ff",
        light_gray = "#9ca3b2",
        dark_gray = "#4b5261",
        vulcan = "#383a3e",
        dark_green = "#2d2e27",
        dark_blue = "#26292f",
        black = "#1e2024",
    },
}

local function is_valid_color(name, value)
    local value_type = type(value)

    if value_type ~= "string" then
        utils.log_error("colors(%s): expected string, got %s", name, value_type)

        return false
    end

    if value:lower() == "none" then
        return true
    end

    if vim.api.nvim_get_color_by_name(value) == -1 then
        utils.log_error("colors(%s): %q is not a valid color", name, value)

        return false
    end

    return true
end

local user_colors = config.options.colors

function colors:set()
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

return colors:set()
