local colors = require "one_monokai.colors"

---@type one_monokai.highlights.groups
local groups = {
    MiniStatuslineDevinfo = { fg = colors.fg, bg = colors.vulcan },
    MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" },
    MiniStatuslineFilename = { fg = colors.fg, bg = colors.black },
    MiniStatuslineInactive = { link = "MiniStatuslineFilename" },
    MiniStatuslineModeNormal = { fg = colors.dark_blue, bg = colors.green, bold = true },
    MiniStatuslineModeInsert = { fg = colors.dark_blue, bg = colors.yellow, bold = true },
    MiniStatuslineModeVisual = { fg = colors.dark_blue, bg = colors.purple, bold = true },
    MiniStatuslineModeCommand = { fg = colors.dark_blue, bg = colors.aqua, bold = true },
    MiniStatuslineModeReplace = { fg = colors.dark_blue, bg = colors.pink, bold = true },
    MiniStatuslineModeOther = { fg = colors.dark_blue, bg = colors.green, bold = true },

    MiniAnimateCursor = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = { link = "NormalFloat" },

    MiniClueBorder = { link = "FloatBorder" },
    MiniClueDescGroup = { link = "DiagnosticWarn" },
    MiniClueDescSingle = { link = "NormalFloat" },
    MiniClueNextKey = { link = "DiagnosticHint" },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticError" },
    MiniClueSeparator = { link = "DiagnosticInfo" },
    MiniClueTitle = { bg = colors.vulcan, bold = true },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { underline = true },
    MiniCursorwordCurrent = { underline = true },

    MiniDiffOverAdd = { fg = colors.green, bg = colors.green, blend = 20 },
    MiniDiffOverChange = { fg = colors.white, bg = colors.white, blend = 20 },
    MiniDiffOverContext = { bg = colors.black },
    MiniDiffOverDelete = { fg = colors.red, bg = colors.red, blend = 20 },
    MiniDiffSignAdd = { fg = colors.green },
    MiniDiffSignChange = { fg = colors.white },
    MiniDiffSignDelete = { fg = colors.red },

    MiniFilesBorder = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticWarn" },
    MiniFilesCursorLine = { link = "CursorLine" },
    MiniFilesDirectory = { link = "Directory" },
    MiniFilesFile = { fg = colors.fg },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { link = "FloatTitle" },
    MiniFilesTitleFocused = { fg = colors.pink, bg = colors.vulcan, bold = true },

    MiniHipatternsFixme = { fg = colors.bg, bg = colors.red, bold = true },
    MiniHipatternsHack = { fg = colors.bg, bg = colors.yellow, bold = true },
    MiniHipatternsNote = { fg = colors.bg, bg = colors.cyan, bold = true },
    MiniHipatternsTodo = { fg = colors.bg, bg = colors.aqua, bold = true },

    MiniIndentscopeSymbol = { fg = colors.light_gray },
    MiniIndentscopeSymbolOff = { fg = colors.yellow },

    MiniJump = { sp = colors.yellow, undercurl = true },
    MiniJump2dDim = { fg = colors.gray },
    MiniJump2dSpot = { fg = colors.yellow, bold = true, nocombine = true },
    MiniJump2dSpotAhead = { fg = colors.green, bg = colors.black, nocombine = true },
    MiniJump2dSpotUnique = { fg = colors.pink, bold = true, nocombine = true },

    MiniMapNormal = { link = "NormalFloat" },
    MiniMapSymbolCount = { link = "Special" },
    MiniMapSymbolLine = { link = "Title" },
    MiniMapSymbolView = { link = "Delimiter" },

    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle = { link = "FloatTitle" },

    MiniOperatorsExchangeFrom = { link = "IncSearch" },

    MiniPickBorder = { link = "FloatBorder" },
    MiniPickBorderBusy = { link = "DiagnosticWarn" },
    MiniPickBorderText = { bg = colors.vulcan },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile = { link = "NormalFloat" },
    MiniPickHeader = { link = "DiagnosticHint" },
    MiniPickMatchCurrent = { link = "CursorLine" },
    MiniPickMatchMarked = { link = "Visual" },
    MiniPickMatchRanges = { fg = colors.green },
    MiniPickNormal = { link = "NormalFloat" },
    MiniPickPreviewLine = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt = { bg = colors.vulcan, bold = true },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = colors.gray },
    MiniStarterHeader = { link = "Title" },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { link = "Delimiter" },
    MiniStarterItemPrefix = { link = "WarningMsg" },
    MiniStarterSection = { fg = colors.pink },
    MiniStarterQuery = { link = "MoreMsg" },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent = { fg = colors.fg, bg = colors.vulcan, bold = true },
    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineHidden = { fg = colors.gray, bg = colors.vulcan },
    MiniTablineModifiedCurrent = { fg = colors.vulcan, bg = colors.fg, bold = true },
    MiniTablineModifiedHidden = { fg = colors.vulcan, bg = colors.gray },
    MiniTablineModifiedVisible = { fg = colors.vulcan, bg = colors.fg },
    MiniTablineTabpagesection = { link = "Search" },
    MiniTablineVisible = { fg = colors.fg, bg = colors.vulcan },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = colors.red, bold = true },
    MiniTestPass = { fg = colors.green, bold = true },

    MiniTrailspace = { bg = colors.red },
}

return groups
