local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    GitConflictCurrent = { bg = colors.cyan:darken(0.3) },
    GitConflictIncoming = { bg = colors.aqua:darken(0.3) },
    GitConflictCurrentLabel = { fg = colors.fg, bg = colors.cyan:darken(0.6) },
    GitConflictIncomingLabel = { fg = colors.fg, bg = colors.aqua:darken(0.6) },
}

return groups
