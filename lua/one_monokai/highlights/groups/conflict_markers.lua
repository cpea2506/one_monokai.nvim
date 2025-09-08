local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    ConflictOurs = { bg = colors.cyan:darken(0.3) },
    ConflictTheirs = { bg = colors.aqua:darken(0.3) },
    ConflictOursMarker = { fg = colors.fg, bg = colors.cyan:darken(0.6) },
    ConflictTheirsMarker = { fg = colors.fg, bg = colors.aqua:darken(0.6) },
    ConflictMid = { fg = colors.white, bg = colors.vulcan },
}

return groups
