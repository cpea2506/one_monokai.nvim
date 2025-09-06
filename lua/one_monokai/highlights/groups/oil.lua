local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    OilFile = { link = "Normal" },
    OilDir = { link = "Directory" },
    OilDirIcon = { fg = colors.yellow },
    OilLink = { fg = colors.pink, bold = true },
    OilLinkTarget = { link = "OilLink" },
}

return groups
