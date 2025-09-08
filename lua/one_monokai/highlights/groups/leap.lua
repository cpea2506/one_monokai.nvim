local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    LeapBackdrop = { fg = colors.gray },
    LeapLabelPrimary = { fg = colors.dark_pink },
    LeapLabelSecondary = { fg = colors.dark_cyan },
    LeapMatch = { fg = colors.dark_pink, underline = true },
}

return groups
