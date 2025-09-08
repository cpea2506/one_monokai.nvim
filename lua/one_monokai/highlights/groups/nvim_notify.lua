local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    NotifyDEBUGBody = { fg = colors.fg },
    NotifyDEBUGBorder = { fg = colors.purple },
    NotifyDEBUGIcon = { fg = colors.purple },
    NotifyDEBUGTitle = { fg = colors.purple },
    NotifyERRORBody = { fg = colors.fg },
    NotifyERRORBorder = { fg = colors.red },
    NotifyERRORIcon = { fg = colors.red },
    NotifyERRORTitle = { fg = colors.red },
    NotifyINFOBody = { fg = colors.fg },
    NotifyINFOBorder = { fg = colors.green },
    NotifyINFOIcon = { fg = colors.green },
    NotifyINFOTitle = { fg = colors.green },
    NotifyTRACEBody = { fg = colors.fg },
    NotifyTRACEBorder = { fg = colors.white },
    NotifyTRACEIcon = { fg = colors.white },
    NotifyTRACETitle = { fg = colors.white },
    NotifyWARNBody = { fg = colors.fg },
    NotifyWARNBorder = { fg = colors.yellow },
    NotifyWARNIcon = { fg = colors.yellow },
    NotifyWARNTitle = { fg = colors.yellow },
}

return groups
