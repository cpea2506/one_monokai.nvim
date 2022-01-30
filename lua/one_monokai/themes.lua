local colors = require "one_monokai.colors"
local transparent = vim.g.one_monokai_transparent

local M = {}

M.syntax = {
    Constant = { fg = colors.aqua },
    Number = { fg = colors.purple },
    Float = { fg = colors.purple },
    Boolean = { fg = colors.aqua },
    Character = { fg = colors.yellow },
    String = { fg = colors.yellow },

    Type = { fg = colors.cyan },
    Structure = { fg = colors.cyan },
    StorageClass = { fg = colors.cyan },
    Typedef = { fg = colors.cyan },

    Identifier = { fg = colors.green },
    Function = { fg = colors.green },

    Statement = { fg = colors.pink },
    Operator = { fg = colors.pink },
    Label = { fg = colors.pink },
    Keyword = { fg = colors.cyan },

    PreProc = { fg = colors.green },
    Include = { fg = colors.pink },
    Define = { fg = colors.pink },
    Macro = { fg = colors.green },
    PreCondit = { fg = colors.green },

    Special = { fg = colors.purple },
    SpecialChar = { fg = colors.pink },
    Delimiter = { fg = colors.pink },
    SpecialComment = { fg = colors.cyan },
    Tag = { fg = colors.pink },

    Todo = { fg = colors.orange, style = "bold,italic" },
    Comment = { fg = colors.warmgrey, style = "italic" },

    Underlined = { fg = colors.green, style = "underline" },
    Ignore = {},
    Error = { fg = colors.red, bg = colors.darkred },
}

M.editor = {
    Normal = { fg = colors.white, bg = transparent and colors.none or colors.black },
    LineNr = { fg = colors.grey, bg = transparent and colors.none or colors.black },
    CursorLineNr = { fg = colors.white, bg = transparent and colors.none and colors.black },
    SignColumn = { bg = transparent and colors.none or colors.black },
    ColorColumn = { bg = colors.darkblack },
    Cursor = { fg = colors.black, bg = colors.white },
    CursorColumn = { bg = colors.lightblack2 },
    CursorLine = { bg = colors.lightblack2 },
    Nontext = { fg = colors.grey },
    StatusLine = { fg = colors.lightgrey, bg = colors.darkerblack },
    StatusLineNC = { fg = colors.lightgrey, bg = colors.darkblack },
    Tabline = { fg = colors.white, bg = colors.darkblack, style = "reverse" },
    Visual = { bg = colors.grey },
    Search = { fg = colors.black, bg = colors.yellow },
    MatchParen = { fg = colors.white, style = "bold,underline" },
    Question = { fg = colors.yellow },
    ModeMsg = { fg = colors.yellow },
    MoreMsg = { fg = colors.yellow },
    ErrorMsg = { fg = colors.black, bg = colors.red, style = "standout" },
    WarningMsg = { fg = colors.red },
    VertSplit = { fg = colors.darkerblack, bg = colors.black },

    SpecialKey = { fg = colors.pink },
    Title = { fg = colors.yellow },
    Directory = { fg = colors.aqua },

    -- diff
    DiffAdd = { fg = colors.addfg, bg = colors.addbg },
    DiffDelete = { fg = colors.black, bg = colors.delbg },
    DiffChange = { fg = colors.changefg, bg = colors.changebg },
    DiffText = { fg = colors.black, bg = colors.cyan },

    -- fold
    Folded = { fg = colors.warmgrey, bg = colors.darkblack },
    FoldColumn = { bg = colors.darkblack },

    -- popup menu
    Pmenu = { fg = colors.white, bg = colors.darkblack },
    PmenuSel = { fg = colors.black, bg = colors.pink },
    PmenuThumb = { fg = colors.lightblack, bg = colors.grey },

    -- lsp document highlight
    LspReferenceRead = { bg = colors.lightblack2, style = "bold" },
    LspReferenceText = { bg = colors.lightblack2, style = "bold" },
    LspReferenceWrite = { bg = colors.lightblack2, style = "bold" },
}

M.plugins = {
    -- dashboard
    DashboardHeader = { fg = colors.peanut },
    DashboardCenter = { fg = colors.roman },
    DashboardFooter = { fg = colors.aqua },

    -- NvimTree
    NvimTreeFolderIcon = { fg = colors.yellow },
    NvimTreeGitStaged = { fg = colors.green },
    NvimTreeGitDirty = { fg = colors.pink },

    -- nvim-cmp
    CmpItemAbbrDeprecated = { fg = colors.lightgrey, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = colors.aqua },
    CmpItemKindStruct = { fg = colors.pink },
    CmpItemKindEnum = { fg = colors.pink },
    CmpItemKindClass = { fg = colors.pink },
    CmpItemKindInterface = { fg = colors.pink },
    CmpItemKindValue = { fg = colors.changefg },
    CmpItemKindKeyword = { fg = colors.changefg },
    CmpItemKindText = { fg = colors.changefg },
    CmpItemKindProperty = { fg = colors.yellow },
    CmpItemKindMethod = { fg = colors.yellow },
    CmpItemKindField = { fg = colors.yellow },
    CmpItemKindModule = { fg = colors.yellow },
    CmpItemKindEnumMember = { fg = colors.yellow },
    CmpItemKindVariable = { fg = colors.cyan },
    CmpItemKindConstant = { fg = colors.cyan },
    CmpItemKindFunction = { fg = colors.green },

    -- indent blankline
    IndentBlanklineIndent1 = { fg = colors.pink, style = "nocombine" },
    IndentBlanklineIndent2 = { fg = colors.yellow, style = "nocombine" },
    IndentBlanklineIndent3 = { fg = colors.green, style = "nocombine" },
    IndentBlanklineIndent4 = { fg = colors.cyan, style = "nocombine" },
    IndentBlanklineIndent5 = { fg = colors.aqua, style = "nocombine" },
    IndentBlanklineIndent6 = { fg = colors.purple, style = "nocombine" },

    -- crate
    CratesNvimNoMatch = { fg = colors.pink, style = "nocombine" },
    CratesNvimError = { fg = colors.delbg, style = "nocombine" },
    CratesNvimUpgrade = { fg = colors.yellow, style = "nocombine" },
    CratesNvimVersion = { fg = colors.green, style = "nocombine" },
    CratesNvimPreRelease = { fg = colors.cyan, style = "nocombine" },
    CratesNvimYanked = { fg = colors.delbg, style = "nocombine" },
    CratesNvimLoading = { fg = colors.purple, style = "nocombine" },
    CratesNvimPopupTitle = { fg = colors.purple, style = "nocombine" },
    CratesNvimPopupVersion = { fg = colors.green, style = "nocombine" },
    CratesNvimPopupPreRelease = { fg = colors.cyan, style = "nocombine" },
    CratesNvimPopupYanked = { fg = colors.pink, style = "nocombine" },
    CratesNvimPopupFeature = { fg = colors.aqua, style = "nocombine" },
    CratesNvimPopupEnabled = { fg = colors.green, style = "nocombine" },
    CratesNvimPopupTransitive = { fg = colors.pink, style = "nocombine" },

    -- notify
    NotifyERRORBorder = { fg = colors.roman },
    NotifyWARNBorder = { fg = colors.orange },
    NotifyINFOBorder = { fg = colors.green },
    NotifyDEBUGBorder = { fg = colors.purple },
    NotifyTRACEBorder = { fg = colors.purple },
    NotifyERRORIcon = { fg = colors.roman },
    NotifyWARNIcon = { fg = colors.orange },
    NotifyINFOIcon = { fg = colors.green },
    NotifyDEBUGIcon = { fg = colors.purple },
    NotifyTRACEIcon = { fg = colors.purple },
    NotifyERRORTitle = { fg = colors.roman },
    NotifyWARNTitle = { fg = colors.orange },
    NotifyINFOTitle = { fg = colors.green },
    NotifyDEBUGTitle = { fg = colors.purple },
    NotifyTRACETitle = { fg = colors.purple },
    NotifyERRORBody = { fg = colors.white },
    NotifyWARNBody = { fg = colors.white },
    NotifyINFOBody = { fg = colors.white },
    NotifyDEBUGBody = { fg = colors.white },
    NotifyTRACEBody = { fg = colors.white },
}

M.lang = {
    -- java
    jpropertiesIdentifier = { fg = colors.pink },

    -- vim
    vimCommand = { fg = colors.pink },

    -- javascript
    jsFuncName = { fg = colors.green },
    jsThis = { fg = colors.pink },
    jsFunctionKey = { fg = colors.green },
    jsPrototype = { fg = colors.cyan },
    jsExceptions = { fg = colors.cyan },
    jsFutureKeys = { fg = colors.cyan },
    jsBuiltins = { fg = colors.cyan },
    jsArgsObj = { fg = colors.cyan },
    jsStatic = { fg = colors.cyan },
    jsSuper = { fg = colors.cyan },
    jsFuncArgRest = { fg = colors.purple, sytle = "italic" },
    jsFuncArgs = { fg = colors.orange, style = "italic" },
    jsStorageClass = { fg = colors.cyan },
    jsDocTags = { fg = colors.cyan, sytle = "italic" },

    -- Typescript
    typescriptArrowFuncArg = { fg = colors.orange, style = "italic" },
    typescriptFuncType = { fg = colors.orange, style = "italic" },
    typescriptCall = { fg = colors.orange, style = "italic" },
    typescriptVariable = { fg = colors.cyan },
    typescriptModule = { fg = colors.cyan },
    typescriptPredefinedType = { fg = colors.cyan },
    typescriptFuncTypeArrow = { fg = colors.cyan },
    typescriptImport = { fg = colors.pink },
    typescriptExport = { fg = colors.pink },
    typescriptCastKeyword = { fg = colors.pink },
    typescriptOperator = { fg = colors.pink },
    typescriptEndColons = { fg = colors.white },
    typescriptObjectLabel = { fg = colors.green },
    typescriptAmbientDeclaration = { fg = colors.pink },

    -- rust
    rustIdentifier = { fg = colors.aqua },
    rustKeyword = { fg = colors.pink },
    rustType = { fg = colors.aqua },
    rustSigil = { fg = colors.pink },
    rustSelf = { fg = colors.pink },
    rustLifetime = { fg = colors.pink },
    rustLet = { fg = colors.cyan },
    rustParamName = { fg = colors.orange, style = "italic" },
    rustModPath = { fg = colors.aqua },

    -- html
    htmlTag = { fg = colors.white },
    htmlEndTag = { fg = colors.white },
    htmlTagName = { fg = colors.pink },
    htmlArg = { fg = colors.green },
    htmlSpecialChar = { fg = colors.purple },

    -- xml
    xmlTag = { fg = colors.pink },
    xmlEndTag = { fg = colors.pink },
    xmlTagName = { fg = colors.orange },
    xmlAttrib = { fg = colors.green },

    -- css
    cssProp = { fg = colors.yellow },
    cssUIAttr = { fg = colors.yellow },
    cssFunctionName = { fg = colors.cyan },
    cssColor = { fg = colors.purple },
    cssPseudoClassId = { fg = colors.purple },
    cssClassName = { fg = colors.green },
    cssValueLength = { fg = colors.purple },
    cssCommonAttr = { fg = colors.pink },
    cssBraces = { fg = colors.white },
    cssClassNameDot = { fg = colors.pink },
    cssURL = { fg = colors.orange, style = "underline,italic" },
}

M.tree_sitter = {
    -- dockerfile
    dockerfileTSKeyWord = { fg = colors.pink },

    -- bash
    bashTSParameter = { fg = colors.orange, style = "italic" },

    -- typescript
    typescriptTSVariableBuiltin = { fg = colors.aqua },
    typescriptTSNamespace = { fg = colors.aqua },
    typescriptTSConstructor = { fg = colors.aqua },
    typescriptTSParameter = { fg = colors.orange, style = "italic" },
    typescriptTSKeywordReturn = { fg = colors.pink },

    -- tsx
    tsxTSConstructor = { fg = colors.aqua },
    tsxTSKeyWordReturn = { fg = colors.pink },
    tsxTSType = { fg = colors.aqua },
    tsxTSVariableBuiltin = { fg = colors.aqua },
    tsxTSParameter = { fg = colors.orange, style = "italic" },

    -- rust
    rustTSKeyword = { fg = colors.pink },
    rustTSConstBuiltin = { fg = colors.aqua },
    rustTSVariableBuiltin = { fg = colors.pink },
    rustTSTypeBuiltin = { fg = colors.aqua },
    rustTSType = { fg = colors.aqua },
    rustTSParameter = { fg = colors.orange, style = "italic" },
    rustTSKeywordFunction = { fg = colors.pink },
}

return M
