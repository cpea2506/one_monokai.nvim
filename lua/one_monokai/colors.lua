local colors = {}

local config = require "one_monokai.config"
local logs = require "one_monokai.logs"

---@class Palette
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

---Convert hex value to rgb
---@param color string
local function hex2rgb(color)
    color = string.lower(color)

    return {
        tonumber(color:sub(2, 3), 16),
        tonumber(color:sub(4, 5), 16),
        tonumber(color:sub(6, 7), 16),
    }
end

---@param fg string foreground color
---@param bg string background color
---@param alpha number number between 0 and 1.
---@source: https://github.com/folke/tokyonight.nvim/blob/main/lua/tokyonight/util.lua#L9-L37
local function blend(fg, bg, alpha)
    local bg_rgb = hex2rgb(bg)
    local fg_rgb = hex2rgb(fg)

    local blend_channel = function(i)
        local ret = (alpha * fg_rgb[i] + ((1 - alpha) * bg_rgb[i]))

        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return ("#%02x%02x%02x"):format(blend_channel(1), blend_channel(2), blend_channel(3))
end

---@param alpha number number between 0 and 1
function string:darken(alpha)
    return blend(self, "#000000", alpha)
end

---@param alpha number number between 0 and 1
function string:lighten(alpha)
    return blend(self, "#ffffff", alpha)
end

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

---@type Palette
colors.extended = vim.deepcopy(colors.default)

for name, value in pairs(config.colors) do
    if is_valid_color(name, value) then
        colors.extended[name] = value
    end
end

return colors.extended
