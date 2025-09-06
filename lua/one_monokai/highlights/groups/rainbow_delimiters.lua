local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    RainbowDelimiterRed = { fg = colors.dark_red },
    RainbowDelimiterOrange = { fg = colors.orange },
    RainbowDelimiterYellow = { fg = colors.yellow },
    RainbowDelimiterGreen = { fg = colors.green },
    RainbowDelimiterBlue = { fg = colors.aqua },
    RainbowDelimiterViolet = { fg = colors.purple },
    RainbowDelimiterCyan = { fg = colors.cyan },
}

return groups
