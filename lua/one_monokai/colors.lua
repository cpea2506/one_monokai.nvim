local config = require "one_monokai.config"
local utils = require "one_monokai.utils"

local colors = {
    default = {
        -- main colors
        fg = "#abb2bf",
        bg = "#282c34",
        warm_gray = "#676e7b",
        pink = "#e06c75",
        green = "#98c379",
        cyan = "#56b6c2",
        aqua = "#61afef",
        yellow = "#e5c07b",
        purple = "#c678dd",
        roman = "#ee6f73",
        peanut = "#f6d5a4",
        orange = "#d19a66",
        none = "NONE",

        -- support colors
        light_black = "#2d2e27",
        vulcan = "#383a3e",
        dark_black = "#26292f",
        darker_black = "#1e2024",
        gray = "#4b5261",
        light_gray = "#9ca3b2",
        dark_gray = "#64645e",
        git_add = "#d7ffaf",
        git_del = "#f75f5f",
        git_change = "#d7d7ff",
    },
}

local function is_valid_color(name, value)
    local value_type = type(value)

    if value_type ~= "string" then
        utils.log_error("colors(%s): expected string value, got %s", name, value_type)

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
    for name, value in pairs(user_colors) do
        if not is_valid_color(name, value) then
            return self.default
        end
    end

    return vim.tbl_extend("force", self.default, user_colors)
end

return colors:set()
