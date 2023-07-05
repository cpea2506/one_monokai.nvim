local groups = {}

local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@class group
groups.default = {
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

    Error = { fg = colors.red },
    Ignore = { fg = colors.yellow },
    Underlined = { fg = colors.green, underline = true },

    ColorColumn = { bg = colors.dark_blue },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorColumn = { bg = colors.vulcan },
    CursorLine = { bg = colors.vulcan },
    CursorLineNr = { fg = colors.fg },
    ErrorMsg = { fg = colors.red },
    FloatTitle = { fg = colors.pink },
    LineNr = { fg = colors.dark_gray },
    MatchParen = { bg = colors.dark_gray, bold = true },
    ModeMsg = { fg = colors.yellow },
    MoreMsg = { fg = colors.yellow },
    Nontext = { fg = colors.dark_gray },
    Normal = { fg = colors.fg, bg = config.transparent and colors.none or colors.bg },
    Question = { fg = colors.yellow },
    Search = { fg = colors.bg, bg = colors.yellow },
    SignColumn = {},
    StatusLine = { fg = colors.light_gray, bg = colors.black },
    StatusLineNC = { fg = colors.light_gray, bg = colors.dark_blue },
    Tabline = { fg = colors.fg, bg = colors.dark_blue, reverse = true },
    VertSplit = { fg = colors.fg },
    Visual = { bg = colors.dark_gray },
    WarningMsg = { fg = colors.yellow },

    Directory = { fg = colors.aqua },
    SpecialKey = { fg = colors.pink },
    Title = { fg = colors.yellow },

    -- checkhealth
    healthSuccess = { fg = colors.green },
    healthWarning = { fg = colors.yellow },
    helpCommand = { fg = colors.orange },
    helpHyperTextJump = { fg = colors.aqua },
    helpHeader = { fg = colors.white },
    helpSectionDelim = { fg = colors.green },

    -- treesitter
    ["@annotation"] = { link = "PreProc" },
    ["@attribute"] = { link = "PreProc" },
    ["@boolean"] = { fg = colors.cyan },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@comment"] = { link = "Comment" },
    ["@conditional"] = { link = "Conditional" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = colors.aqua },
    ["@constant.macro"] = { link = "Define" },
    ["@constructor"] = { fg = colors.aqua },
    ["@debug"] = { link = "Debug" },
    ["@define"] = { link = "Define" },
    ["@error"] = { link = "Error" },
    ["@exception"] = { link = "Exception" },
    ["@field"] = { link = "Identifier" },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@include"] = { link = "Include" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = colors.pink },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.return"] = { fg = colors.pink },
    ["@label"] = { link = "Label" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },
    ["@namespace"] = { link = "Include" },
    ["@none"] = {},
    ["@number"] = { link = "Number" },
    ["@operator"] = { link = "Operator" },
    ["@parameter"] = { fg = colors.orange, italic = config.italics },
    ["@parameter.reference"] = { link = "@parameter" },
    ["@preproc"] = { link = "PreProc" },
    ["@property"] = { link = "Identifier" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },
    ["@repeat"] = { link = "Repeat" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@string"] = { link = "String" },
    ["@string.escape"] = { link = "SpecialChar" },
    ["@string.regex"] = { link = "String" },
    ["@string.special"] = { link = "SpecialChar" },
    ["@symbol"] = { link = "Identifier" },
    ["@tag"] = { link = "Label" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@text"] = { link = "Normal" },
    ["@text.danger"] = { link = "WarningMsg" },
    ["@text.emphasis"] = { italic = config.italics },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.literal"] = { link = "String" },
    ["@text.math"] = { link = "Special" },
    ["@text.note"] = { link = "SpecialComment" },
    ["@text.reference"] = { link = "Constant" },
    ["@text.strike"] = { strikethrough = true },
    ["@text.strong"] = { bold = true },
    ["@text.title"] = { link = "Title" },
    ["@text.underline"] = { underline = true },
    ["@text.uri"] = { fg = colors.aqua, undercurl = true },
    ["@text.warning"] = { link = "WarningMsg" },
    ["@todo"] = { link = "Todo" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "Type" },
    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.pink },

    -- semantic tokens
    ["@lsp.mod.deprecated"] = { fg = colors.light_gray, strikethrough = true },
    ["@lsp.mod.documentation"] = { link = "@constant" },
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.macro"] = { link = "@function" },
    ["@lsp.type.method"] = { link = "@function" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type" },

    -- nvim-ts-rainbow 2
    TSRainbowRed = { fg = colors.dark_red },
    TSRainbowOrange = { fg = colors.orange },
    TSRainbowYellow = { fg = colors.yellow },
    TSRainbowGreen = { fg = colors.green },
    TSRainbowBlue = { fg = colors.aqua },
    TSRainbowViolet = { fg = colors.purple },
    TSRainbowCyan = { fg = colors.cyan },

    -- rainbow-delimiters
    RainbowDelimiterRed = { fg = colors.dark_red },
    RainbowDelimiterOrange = { fg = colors.orange },
    RainbowDelimiterYellow = { fg = colors.yellow },
    RainbowDelimiterGreen = { fg = colors.green },
    RainbowDelimiterBlue = { fg = colors.aqua },
    RainbowDelimiterViolet = { fg = colors.purple },
    RainbowDelimiterCyan = { fg = colors.cyan },

    -- diff
    DiffAdd = { bg = colors.green:darken(0.3) },
    DiffChange = { fg = colors.white:darken(0.3) },
    DiffDelete = { bg = colors.red:darken(0.3) },
    DiffText = { bg = colors.cyan:darken(0.3) },

    diffAdded = { fg = colors.green },
    diffChanged = { fg = colors.white },
    diffFile = { fg = colors.white },
    diffIndexLine = { fg = colors.cyan },
    diffLine = { fg = colors.purple },
    diffRemoved = { fg = colors.pink },
    diffSubname = { fg = colors.cyan },

    -- fold
    FoldColumn = { bg = colors.dark_blue },
    Folded = { fg = colors.gray, bg = colors.dark_blue },

    -- popup menu
    Pmenu = { fg = colors.fg },
    PmenuSel = { fg = colors.bg, bg = colors.pink },
    PmenuThumb = { fg = colors.dark_green, bg = colors.dark_gray },

    -- diagnostics
    DiagnosticError = { fg = colors.red },
    DiagnosticHint = { fg = colors.light_gray },
    DiagnosticInfo = { fg = colors.white },
    DiagnosticUnderlineError = { sp = colors.red, underline = true },
    DiagnosticUnderlineHint = { sp = colors.light_gray, underline = true },
    DiagnosticUnderlineInfo = { sp = colors.green, underline = true },
    DiagnosticUnderlineWarn = { sp = colors.yellow, underline = true },
    DiagnosticWarn = { fg = colors.yellow },

    -- lsp document highlight
    LspReferenceRead = { bg = colors.vulcan, bold = true },
    LspReferenceText = { bg = colors.vulcan, bold = true },
    LspReferenceWrite = { bg = colors.vulcan, bold = true },

    -- vim-illuminate
    IlluminatedWordRead = { link = "LspReferenceRead" },
    IlluminatedWordText = { link = "LspReferenceText" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },

    LspInlayHint = { link = "Comment" },

    -- nvim-lspconfig
    LspInfoBorder = { link = "FloatBorder" },
    LspInfoFiletype = { fg = colors.white },
    LspInfoList = { fg = colors.aqua },
    LspInfoTitle = { fg = colors.cyan },

    -- telescope
    TelescopeBorder = { link = "FloatBorder" },
    TelescopeNormal = { link = "Normal" },
    TelescopePromptCounter = { fg = colors.aqua },
    TelescopeTitle = { fg = colors.aqua },

    -- leap
    LeapBackdrop = { fg = colors.gray },
    LeapLabelPrimary = { fg = colors.dark_pink },
    LeapLabelSecondary = { fg = colors.dark_cyan },
    LeapMatch = { fg = colors.dark_pink, underline = true },

    -- sj
    SjLabel = { fg = colors.dark_pink },
    SjLimit = { link = "ErrorMsg" },
    SjOverlay = { link = "Comment" },
    SjSearch = { link = "IncSearch" },
    SjWarning = { link = "WarningMsg" },

    -- flash
    FlashMatch = { link = "Search" },
    FlashCurrent = { link = "IncSearch" },
    FlashBackdrop = { link = "Comment" },
    FlashLabel = { fg = colors.dark_pink },

    -- mason
    MasonError = { fg = colors.red },
    MasonHeader = { fg = colors.dark_green, bg = colors.cyan, bold = true },
    MasonHeaderSecondary = { fg = colors.dark_green, bg = colors.yellow, bold = true },
    MasonHeading = { fg = colors.white, bold = true },
    MasonHighlight = { fg = colors.aqua },
    MasonHighlightBlock = { fg = colors.dark_blue, bg = colors.cyan },
    MasonHighlightBlockBold = { fg = colors.dark_blue, bg = colors.cyan, bold = true },
    MasonHighlightBlockBoldSecondary = { fg = colors.dark_blue, bg = colors.yellow, bold = true },
    MasonHighlightBlockSecondary = { fg = colors.dark_blue, bg = colors.yellow },
    MasonHighlightSecondary = { fg = colors.yellow },
    MasonLink = { fg = colors.aqua },
    MasonMuted = { fg = colors.pink },
    MasonMutedBlock = { fg = colors.dark_blue, bg = colors.light_gray },
    MasonMutedBlockBold = { fg = colors.dark_blue, bg = colors.light_gray, bold = true },

    -- dashboard
    DashboardCenter = { fg = colors.pink },
    DashboardFooter = { fg = colors.aqua },
    DashboardHeader = { fg = colors.peanut },

    -- nvimtree
    NvimTreeBookmark = { fg = colors.yellow },
    NvimTreeEmptyFolderName = { link = "Directory" },
    NvimTreeExecFile = { fg = colors.yellow, bold = true },
    NvimTreeFolderIcon = { fg = colors.yellow },
    NvimTreeFolderName = { link = "Directory" },
    NvimTreeGitDeleted = { fg = colors.red },
    NvimTreeGitDirty = { fg = colors.pink },
    NvimTreeGitIgnored = { link = "Comment" },
    NvimTreeGitMerge = { fg = colors.purple },
    NvimTreeGitNew = { fg = colors.green },
    NvimTreeGitRenamed = { fg = colors.pink },
    NvimTreeGitStaged = { fg = colors.green },
    NvimTreeImageFile = { fg = colors.purple, bold = true },
    NvimTreeIndentMarker = { fg = colors.light_gray },
    NvimTreeLiveFilterPrefix = { fg = colors.pink, bold = true },
    NvimTreeLiveFilterValue = { bold = true },
    NvimTreeOpenedFile = { fg = colors.yellow, bold = true },
    NvimTreeOpenedFolderName = { link = "Directory" },
    NvimTreeRootFolder = { fg = colors.pink },
    NvimTreeSpecialFile = { fg = colors.green, bold = true, underline = true },
    NvimTreeSymlink = { fg = colors.pink, bold = true },
    NvimTreeWindowPicker = { fg = colors.white, bg = colors.aqua, bold = true },

    -- bufferline
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

    -- whichkey
    WhichKey = { fg = colors.yellow },
    WhichKeySeparator = { fg = colors.pink },

    -- nvim-cmp
    CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },
    CmpItemAbbrMatch = { fg = colors.aqua },
    CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
    CmpItemKindClass = { fg = colors.pink },
    CmpItemKindConstant = { fg = colors.cyan },
    CmpItemKindConstructor = { link = "@constructor" },
    CmpItemKindEnum = { fg = colors.cyan },
    CmpItemKindEnumMember = { fg = colors.yellow },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindField = { fg = colors.yellow },
    CmpItemKindFile = { fg = colors.white },
    CmpItemKindFolder = { fg = colors.yellow },
    CmpItemKindFunction = { link = "Function" },
    CmpItemKindInterface = { fg = colors.pink },
    CmpItemKindKeyword = { fg = colors.white },
    CmpItemKindMethod = { link = "Function" },
    CmpItemKindModule = { fg = colors.pink },
    CmpItemKindOperator = { link = "Operator" },
    CmpItemKindProperty = { fg = colors.yellow },
    CmpItemKindStruct = { fg = colors.pink },
    CmpItemKindText = { fg = colors.white },
    CmpItemKindUnit = { fg = colors.orange },
    CmpItemKindValue = { fg = colors.white },
    CmpItemKindVariable = { fg = colors.cyan },

    -- git-conflict
    GitConflictCurrent = { bg = colors.cyan:darken(0.4) },
    GitConflictIncoming = { bg = colors.green:darken(0.4) },
    GitConflictCurrentLabel = { fg = colors.white },
    GitConflictIncomingLabel = { fg = colors.white },

    -- lazy
    LazyButton = { fg = colors.white, bg = colors.vulcan },
    LazyButtonActive = { fg = colors.black, bg = colors.white },
    LazyComment = { link = "Comment" },
    LazyCommit = { fg = colors.green },
    LazyDimmed = { link = "Comment" },
    LazyCommitIssue = { link = "Number" },
    LazyCommitScope = { italic = config.italics },
    LazyCommitType = { fg = colors.yellow, bold = true },
    LazyDir = { fg = colors.yellow },
    LazyH1 = { fg = colors.black, bg = colors.white },
    LazyH2 = { fg = colors.white, bold = true },
    LazyNoCond = { link = "DiagnosticWarn" },
    LazyNormal = { link = "NormalFloat" },
    LazyProgressDone = { fg = colors.green },
    LazyProgressTodo = { fg = colors.light_gray },
    LazyProp = { fg = colors.gray },
    LazyReasonCmd = { fg = colors.green },
    LazyReasonEvent = { fg = colors.yellow },
    LazyReasonFt = { fg = colors.orange },
    LazyReasonImport = { fg = colors.pink },
    LazyReasonKeys = { fg = colors.cyan },
    LazyReasonPlugin = { fg = colors.purple },
    LazyReasonRuntime = { fg = colors.cyan },
    LazyReasonSource = { fg = colors.aqua },
    LazyReasonStart = { fg = colors.green },
    LazySpecial = { fg = colors.pink },
    LazyTaskError = { link = "ErrorMsg" },
    LazyTaskOutput = { link = "MsgArea" },
    LazyUrl = { fg = colors.aqua, undercurl = true },
    LazyValue = { fg = colors.fg },

    -- nvim-navic
    NavicIconsArray = { link = "Type" },
    NavicIconsBoolean = { link = "Boolean" },
    NavicIconsClass = { link = "CmpItemKindClass" },
    NavicIconsConstant = { link = "CmpItemKindConstant" },
    NavicIconsConstructor = { link = "CmpItemKindConstructor" },
    NavicIconsEnum = { link = "CmpItemKindEnum" },
    NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
    NavicIconsEvent = { link = "CmpItemKindEvent" },
    NavicIconsField = { link = "CmpItemKindField" },
    NavicIconsFile = { link = "CmpItemKindFile" },
    NavicIconsFunction = { link = "CmpItemKindFunction" },
    NavicIconsInterface = { link = "CmpItemKindInterface" },
    NavicIconsKey = { link = "CmpItemKindValue" },
    NavicIconsMethod = { link = "CmpItemKindMethod" },
    NavicIconsModule = { link = "CmpItemKindModule" },
    NavicIconsNamespace = { link = "CmpItemKindModule" },
    NavicIconsNull = { link = "Constant" },
    NavicIconsNumber = { link = "Number" },
    NavicIconsObject = { link = "CmpItemKindProperty" },
    NavicIconsOperator = { link = "CmpItemKindOperator" },
    NavicIconsPackage = { link = "CmpItemKindModule" },
    NavicIconsProperty = { link = "CmpItemKindProperty" },
    NavicIconsString = { link = "String" },
    NavicIconsStruct = { link = "CmpItemKindStruct" },
    NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
    NavicIconsVariable = { link = "CmpItemKindVariable" },
    NavicSeparator = { fg = colors.aqua },
    NavicText = { link = "Normal" },

    -- indent-blankline
    IndentBlanklineIndent1 = { fg = colors.pink, nocombine = true },
    IndentBlanklineIndent2 = { fg = colors.yellow, nocombine = true },
    IndentBlanklineIndent3 = { fg = colors.green, nocombine = true },
    IndentBlanklineIndent4 = { fg = colors.cyan, nocombine = true },
    IndentBlanklineIndent5 = { fg = colors.aqua, nocombine = true },
    IndentBlanklineIndent6 = { fg = colors.purple, nocombine = true },

    -- crates
    CratesNvimError = { fg = colors.red },
    CratesNvimLoading = { fg = colors.purple },
    CratesNvimNoMatch = { fg = colors.pink },
    CratesNvimPopupEnabled = { fg = colors.green },
    CratesNvimPopupFeature = { fg = colors.aqua },
    CratesNvimPopupPreRelease = { fg = colors.cyan },
    CratesNvimPopupTitle = { fg = colors.purple },
    CratesNvimPopupTransitive = { fg = colors.pink },
    CratesNvimPopupUrl = { fg = colors.aqua },
    CratesNvimPopupVersion = { fg = colors.green },
    CratesNvimPopupYanked = { fg = colors.pink },
    CratesNvimPreRelease = { fg = colors.cyan },
    CratesNvimUpgrade = { fg = colors.yellow },
    CratesNvimVersion = { fg = colors.green },
    CratesNvimYanked = { fg = colors.red },

    -- notify
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

-- hide all semantic highlights by default,
-- only enable those from the default table
for _, semantic_group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    if not groups.default[semantic_group] then
        groups.default[semantic_group] = {}
    end
end

return groups.default
