local config = require "one_monokai.config"
local legacy = require "one_monokai.legacy"

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
        error = {
            fg = "#be5046",
            bg = "#5f0000",
        },
        git = {
            add = "#d7ffaf",
            del = "#f75f5f",
            change = "#d7d7ff",
        },
    },
}

function colors:check_colors(name, value)
    if value:lower() == "none" then
        return true
    end

    if vim.api.nvim_get_color_by_name(value) == -1 then
        legacy.log(string.format("colors(%s): %q is not a valid color", name, value))

        return false
    end

    return true
end

function colors:extend(user_colors)
    return vim.tbl_deep_extend("force", self.default, user_colors)
end

function colors:set(user_colors)
    for name, value in pairs(user_colors) do
        if type(value) == "table" then
            return self:set(value)
        else
            if not self.check_colors(name, value) then
                return self.default
            end
        end
    end

    return self:extend(user_colors)
end

return colors:set(config.options.colors)
