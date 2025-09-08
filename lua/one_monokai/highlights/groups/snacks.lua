local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
    SnacksNormal = { link = "NormalFloat" },
    SnacksWinBar = { link = "Title" },
    SnacksBackdrop = { fg = colors.vulcan },
    SnacksNormalNC = { link = "NormalFloat" },
    SnacksWinBarNC = { link = "SnacksWinBar" },

    SnacksNotifierInfo = { fg = colors.green },
    SnacksNotifierIconInfo = { fg = colors.green },
    SnacksNotifierTitleInfo = { fg = colors.green, italic = true },
    SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },
    SnacksNotifierBorderInfo = { fg = colors.green },

    SnacksNotifierWarn = { fg = colors.yellow },
    SnacksNotifierIconWarn = { fg = colors.yellow },
    SnacksNotifierTitleWarn = { fg = colors.yellow, italic = true },
    SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },
    SnacksNotifierBorderWarn = { fg = colors.yellow },

    SnacksNotifierDebug = { fg = colors.orange },
    SnacksNotifierIconDebug = { fg = colors.orange },
    SnacksNotifierTitleDebug = { fg = colors.orange, italic = true },
    SnacksNotifierFooterDebug = { link = "DiagnosticHint" },
    SnacksNotifierBorderDebug = { fg = colors.orange },

    SnacksNotifierError = { fg = colors.red },
    SnacksNotifierIconError = { fg = colors.red },
    SnacksNotifierTitleError = { fg = colors.red, italic = true },
    SnacksNotifierFooterError = { link = "DiagnosticError" },
    SnacksNotifierBorderError = { fg = colors.red },

    SnacksNotifierTrace = { fg = colors.white },
    SnacksNotifierIconTrace = { fg = colors.white },
    SnacksNotifierTitleTrace = { fg = colors.white, italic = true },
    SnacksNotifierFooterTrace = { link = "DiagnosticHint" },
    SnacksNotifierBorderTrace = { fg = colors.white },

    SnacksDashboardNormal = { link = "Normal" },
    SnacksDashboardDesc = { fg = colors.green },
    SnacksDashboardFile = { fg = colors.cyan },
    SnacksDashboardDir = { link = "Nontext" },
    SnacksDashboardFooter = { fg = colors.yellow, italic = true },
    SnacksDashboardHeader = { fg = colors.green },
    SnacksDashboardIcon = { fg = colors.pink, bold = true },
    SnacksDashboardKey = { fg = colors.orange },
    SnacksDashboardTerminal = { link = "SnacksDashboardNormal" },
    SnacksDashboardSpecial = { link = "Special" },
    SnacksDashboardTitle = { link = "Title" },

    SnacksIndent = { fg = colors.dark_gray },
    SnacksIndentScope = { fg = colors.light_gray },

    SnacksPicker = { link = "NormalFloat" },
    SnacksPickerInputBorder = { link = "SnacksPickerBorder" },
    SnacksPickerBorder = { link = "FloatBorder" },
    SnacksPickerSelected = {
        fg = config.transparent and colors.pink or colors.fg,
        bg = config.transparent and colors.none or colors.vulcan,
        bold = true,
    },
    SnacksPickerMatch = { fg = colors.green },
}

return groups
