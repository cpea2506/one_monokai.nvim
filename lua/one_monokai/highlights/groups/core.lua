local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
    Normal = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg },
    Visual = { bg = colors.dark_gray },

    NormalFloat = { link = "Normal" },
    FloatTitle = { fg = colors.pink },

    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorColumn = { bg = colors.vulcan },
    CursorLine = { bg = colors.vulcan },
    CursorLineNr = { fg = colors.fg },
    LineNr = { fg = colors.dark_gray },

    StatusLine = { fg = colors.light_gray, bg = colors.black },
    StatusLineNC = { fg = colors.light_gray, bg = colors.dark_blue },

    WinBar = { link = "Normal" },
    WinBarNC = { link = "NormalNC" },

    ColorColumn = { bg = colors.dark_blue },
    MatchParen = { bg = colors.dark_gray, bold = true },
    ModeMsg = { fg = colors.yellow },
    MoreMsg = { fg = colors.yellow },
    Nontext = { fg = colors.dark_gray:lighten(0.8) },
    Whitespace = { fg = colors.dark_gray:darken(0.91) },
    Question = { fg = colors.yellow },
    Search = { fg = colors.bg, bg = colors.yellow },
    SignColumn = {},
    TabLine = { fg = colors.fg, bg = config.transparent and colors.none or colors.dark_blue },
    VertSplit = { fg = colors.fg },
    Directory = { fg = colors.aqua },
    SpecialKey = { fg = colors.pink },
    Title = { fg = colors.yellow },
    Ignore = { fg = colors.yellow },
    Underlined = { fg = colors.green, underline = true },

    QuickFixLine = { bg = colors.vulcan },

    FoldColumn = { bg = colors.dark_blue },
    Folded = { fg = colors.gray, bg = colors.dark_blue },

    Pmenu = { link = "NormalFloat" },
    PmenuSel = { link = "Visual" },
    PmenuThumb = { fg = colors.dark_green, bg = colors.dark_gray },

    OkMsg = { fg = colors.green },
    ErrorMsg = { fg = colors.red },
    WarningMsg = { fg = colors.yellow },

    DiagnosticOk = { fg = colors.green },
    DiagnosticError = { fg = colors.red },
    DiagnosticHint = { fg = colors.light_gray },
    DiagnosticInfo = { fg = colors.white },
    DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
    DiagnosticUnderlineHint = { sp = colors.light_gray, undercurl = true },
    DiagnosticUnderlineInfo = { sp = colors.green, undercurl = true },
    DiagnosticUnderlineWarn = { sp = colors.yellow, undercurl = true },
    DiagnosticWarn = { fg = colors.yellow },

    -- Do not exceed this line. All further additions should be placed above.
    Boolean = { fg = colors.cyan },
    Character = { fg = colors.yellow },
    Constant = { fg = colors.aqua },
    Float = { fg = colors.purple },
    Number = { fg = colors.purple },
    String = { fg = colors.yellow },

    StorageClass = { fg = colors.cyan },
    Structure = { fg = colors.cyan },
    Type = { fg = colors.aqua },
    Typedef = { fg = colors.aqua },

    Function = { fg = colors.green },
    Identifier = { fg = colors.green },

    Keyword = { fg = colors.cyan },
    Label = { fg = colors.pink },
    Operator = { fg = colors.pink },
    Statement = { fg = colors.pink },

    Define = { fg = colors.pink },
    Include = { fg = colors.pink },
    Macro = { fg = colors.green },
    PreCondit = { fg = colors.pink },
    PreProc = { fg = colors.green },
    Conceal = { fg = colors.light_gray },

    Delimiter = { fg = colors.pink },
    Special = { fg = colors.purple },
    SpecialChar = { fg = colors.pink },
    SpecialComment = { fg = colors.cyan },
    Tag = { fg = colors.pink },

    Comment = { fg = colors.gray, italic = config.italics },
    Todo = { fg = colors.orange, bold = true, italic = config.italics },
}

return groups
