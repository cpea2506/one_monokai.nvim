local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    DiffAdd = { bg = colors.green:darken(0.3) },
    DiffChange = { bg = colors.white:darken(0.3) },
    DiffDelete = { bg = colors.red:darken(0.3) },
    DiffText = { bg = colors.cyan:darken(0.3) },

    diffAdded = { fg = colors.green },
    diffChanged = { fg = colors.white },
    diffFile = { fg = colors.white },
    diffIndexLine = { fg = colors.cyan },
    diffLine = { fg = colors.purple },
    diffRemoved = { fg = colors.pink },
    diffSubname = { fg = colors.cyan },
}

return groups
