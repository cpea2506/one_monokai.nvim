local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
    BufferLineDiagnostic = { fg = colors.dark_gray },
    BufferLineDiagnosticSelected = { fg = colors.light_gray, bold = true, italic = config.italics },
    BufferLineDiagnosticVisible = { fg = colors.dark_gray },
    BufferLineErrorDiagnostic = { fg = colors.dark_gray, sp = colors.red },
    BufferLineErrorDiagnosticSelected = { fg = colors.red, sp = colors.red, bold = true, italic = config.italics },
    BufferLineErrorDiagnosticVisible = { fg = colors.red },
    BufferLineHintDiagnostic = { fg = colors.dark_gray, sp = colors.light_gray },
    BufferLineHintDiagnosticSelected = {
        fg = colors.light_gray,
        sp = colors.light_gray,
        bold = true,
        italic = config.italics,
    },
    BufferLineHintDiagnosticVisible = { fg = colors.light_gray },
    BufferLineIndicatorSelected = { fg = colors.aqua },
    BufferLineInfoDiagnostic = { fg = colors.dark_gray, sp = colors.green },
    BufferLineInfoDiagnosticSelected = {
        fg = colors.green,
        sp = colors.green,
        bold = true,
        italic = config.italics,
    },
    BufferLineInfoDiagnosticVisible = { fg = colors.green },
    BufferLineModified = { fg = colors.pink },
    BufferLineModifiedSelected = { fg = colors.pink },
    BufferLineModifiedVisible = { fg = colors.pink },
    BufferLineNumbers = { fg = colors.purple },
    BufferLineNumbersSelected = { fg = colors.purple },
    BufferLineNumbersVisible = { fg = colors.purple },
    BufferLineWarningDiagnostic = { fg = colors.dark_gray, sp = colors.yellow },
    BufferLineWarningDiagnosticSelected = {
        fg = colors.yellow,
        sp = colors.yellow,
        bold = true,
        italic = config.italics,
    },
    BufferLineWarningDiagnosticVisible = { fg = colors.yellow },
}

return groups
