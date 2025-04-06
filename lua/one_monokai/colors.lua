local colors = {}

---@class colors
local defaults = {
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

---@type colors
colors = vim.deepcopy(defaults)

---Converts a hex color to an RGB table
---@param color string #Hex color
---@return integer[] #RGB table {r, g, b}
local function hex2rgb(color)
    color = color:lower()

    return {
        tonumber(color:sub(2, 3), 16),
        tonumber(color:sub(4, 5), 16),
        tonumber(color:sub(6, 7), 16),
    }
end

---Blends two hex colors together based on the alpha value.
---
---[View source](https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua)
---@param fg string #Foreground hex color
---@param bg string #Background hex color
---@param alpha number #Blend factor between 0 (only bg) and 1 (only fg)
---@return string #Hex color of the resulting blended color
local function blend(fg, bg, alpha)
    local bg_rgb = hex2rgb(bg)
    local fg_rgb = hex2rgb(fg)

    local r = alpha * fg_rgb[1] + (1 - alpha) * bg_rgb[1] + 0.5
    local g = alpha * fg_rgb[2] + (1 - alpha) * bg_rgb[2] + 0.5
    local b = alpha * fg_rgb[3] + (1 - alpha) * bg_rgb[3] + 0.5

    return ("#%02x%02x%02x"):format(r, g, b)
end

---Darkens the current hex color
---@param s string
---@param alpha number #Value between 0 and 1
function string.darken(s, alpha)
    return blend(s, "#000000", alpha)
end

---Lightens the current hex color
---@param s string
---@param alpha number #Value between 0 and 1
function string.lighten(s, alpha)
    return blend(s, "#ffffff", alpha)
end

---Resolve and retrieve the value of a color
---@param name string #Name of the color
---@param value string|number #Value of the color
---@return string|number? #Hex color or 24-bit RGB value, or default if invalid
local function resolve_color(name, value)
    local color_type = type(value)

    -- Resolve string first to optimize the common case
    if color_type == "string" then
        if value:lower() == "none" then
            return value
        end

        local rgb = vim.api.nvim_get_color_by_name(value)

        if rgb ~= -1 then
            return value
        end
    end

    if color_type == "number" and value >= 0 and value <= 0xFFFFFF then
        return value
    end

    local logs = require "one_monokai.logs"
    local default = defaults[name]

    logs.error(
        "colors(%s): expected hex color (#rrggbb) or 24-bit RGB color, got %q. Fallback to %q.",
        name,
        value,
        default
    )

    return default
end

local config = require "one_monokai.config"

for name, value in pairs(config.colors or {}) do
    colors[name] = resolve_color(name, value)
end

return colors
