local options = require("one_monokai.config").options
local colors = require "one_monokai.colors"
local transparent = options.transparent

local themes = {
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

    Todo = { fg = colors.orange, bold = true, italic = true },
    Comment = { fg = colors.warm_gray, italic = true },

    Underlined = { fg = colors.green, underline = true },
    Ignore = {},
    Error = { fg = colors.error.fg, bg = colors.error.bg },

    Normal = { fg = colors.fg, bg = transparent and colors.none or colors.bg },
    SignColumn = { bg = transparent and colors.none or colors.bg },
    LineNr = { fg = colors.gray },
    CursorLineNr = { fg = colors.fg },
    ColorColumn = { bg = colors.dark_black },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorColumn = { bg = colors.vulcan },
    CursorLine = { bg = colors.vulcan },
    Nontext = { fg = colors.gray },
    StatusLine = { fg = colors.light_gray, bg = colors.darker_black },
    StatusLineNC = { fg = colors.light_gray, bg = colors.dark_black },
    Tabline = { fg = colors.fg, bg = colors.dark_black, reverse = true },
    Visual = { bg = colors.gray },
    Search = { fg = colors.bg, bg = colors.yellow },
    MatchParen = { fg = colors.fg, bold = true, underline = true },
    Question = { fg = colors.yellow },
    ModeMsg = { fg = colors.yellow },
    MoreMsg = { fg = colors.yellow },
    ErrorMsg = { fg = colors.bg, bg = colors.error.fg, standout = true },
    WarningMsg = { fg = colors.yellow },
    VertSplit = { fg = colors.darker_black, bg = colors.bg },

    SpecialKey = { fg = colors.pink },
    Title = { fg = colors.yellow },
    Directory = { fg = colors.aqua },

    -- diff
    DiffAdd = { fg = colors.git.add },
    DiffDelete = { fg = colors.git.del },
    DiffChange = { fg = colors.git.change },
    DiffText = { fg = colors.bg, bg = colors.cyan },

    -- fold
    Folded = { fg = colors.warm_gray, bg = colors.dark_black },
    FoldColumn = { bg = colors.dark_black },

    -- popup menu
    Pmenu = { fg = colors.fg, bg = colors.dark_black },
    PmenuSel = { fg = colors.bg, bg = colors.pink },
    PmenuThumb = { fg = colors.light_black, bg = colors.gray },

    -- lsp document highlight
    LspReferenceRead = { bg = colors.vulcan, bold = true },
    LspReferenceText = { bg = colors.vulcan, bold = true },
    LspReferenceWrite = { bg = colors.vulcan, bold = true },

    -- dashboard
    DashboardHeader = { fg = colors.peanut },
    DashboardCenter = { fg = colors.roman },
    DashboardFooter = { fg = colors.aqua },

    -- nvim tree
    NvimTreeFolderIcon = { fg = colors.yellow },
    NvimTreeGitStaged = { fg = colors.green },
    NvimTreeGitDirty = { fg = colors.pink },

    -- nvim-cmp
    CmpItemAbbrMatch = { fg = colors.aqua },
    CmpItemKindStruct = { fg = colors.pink },
    CmpItemKindEnum = { fg = colors.pink },
    CmpItemKindClass = { fg = colors.pink },
    CmpItemKindInterface = { fg = colors.pink },
    CmpItemKindValue = { fg = colors.git.change },
    CmpItemKindKeyword = { fg = colors.git.change },
    CmpItemKindText = { fg = colors.git.change },
    CmpItemKindProperty = { fg = colors.yellow },
    CmpItemKindMethod = { fg = colors.yellow },
    CmpItemKindField = { fg = colors.yellow },
    CmpItemKindModule = { fg = colors.yellow },
    CmpItemKindEnumMember = { fg = colors.yellow },
    CmpItemKindVariable = { fg = colors.cyan },
    CmpItemKindConstant = { fg = colors.cyan },
    CmpItemKindFunction = { fg = colors.green },
    CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },

    -- indent blankline
    IndentBlanklineIndent1 = { fg = colors.pink, nocombine = true },
    IndentBlanklineIndent2 = { fg = colors.yellow, nocombine = true },
    IndentBlanklineIndent3 = { fg = colors.green, nocombine = true },
    IndentBlanklineIndent4 = { fg = colors.cyan, nocombine = true },
    IndentBlanklineIndent5 = { fg = colors.aqua, nocombine = true },
    IndentBlanklineIndent6 = { fg = colors.purple, nocombine = true },

    -- crate
    CratesNvimNoMatch = { fg = colors.pink },
    CratesNvimError = { fg = colors.git.del },
    CratesNvimUpgrade = { fg = colors.yellow },
    CratesNvimVersion = { fg = colors.green },
    CratesNvimPreRelease = { fg = colors.cyan },
    CratesNvimYanked = { fg = colors.git.del },
    CratesNvimLoading = { fg = colors.purple },
    CratesNvimPopupTitle = { fg = colors.purple },
    CratesNvimPopupVersion = { fg = colors.green },
    CratesNvimPopupPreRelease = { fg = colors.cyan },
    CratesNvimPopupYanked = { fg = colors.pink },
    CratesNvimPopupFeature = { fg = colors.aqua },
    CratesNvimPopupEnabled = { fg = colors.green },
    CratesNvimPopupTransitive = { fg = colors.pink },

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
    NotifyERRORBody = { fg = colors.fg },
    NotifyWARNBody = { fg = colors.fg },
    NotifyINFOBody = { fg = colors.fg },
    NotifyDEBUGBody = { fg = colors.fg },
    NotifyTRACEBody = { fg = colors.fg },

    -- java
    jpropertiesIdentifier = { fg = colors.pink },

    -- vim
    vimCommand = { fg = colors.pink },

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
    jsFuncArgRest = { fg = colors.purple, italic = true },
    jsFuncArgs = { fg = colors.orange, italic = true },
    jsStorageClass = { fg = colors.cyan },
    jsDocTags = { fg = colors.cyan, italic = true },
    javascriptTSConstructor = { fg = colors.aqua },
    javascriptTSKeyWordReturn = { fg = colors.pink },
    javascriptTSType = { fg = colors.aqua },
    javascriptTSVariableBuiltin = { fg = colors.aqua },
    javascriptTSParameter = { fg = colors.orange, italic = true },

    -- typescript
    typescriptArrowFuncArg = { fg = colors.orange, italic = true },
    typescriptFuncType = { fg = colors.orange, italic = true },
    typescriptCall = { fg = colors.orange, italic = true },
    typescriptVariable = { fg = colors.cyan },
    typescriptVariableDeclaration = { fg = colors.aqua },
    typescriptDOMEventProp = { fg = colors.aqua },
    typescriptGlobal = { fg = colors.aqua },
    typescriptModule = { fg = colors.cyan },
    typescriptPredefinedType = { fg = colors.cyan },
    typescriptFuncTypeArrow = { fg = colors.cyan },
    typescriptImport = { fg = colors.pink },
    typescriptExport = { fg = colors.pink },
    typescriptCastKeyword = { fg = colors.pink },
    typescriptOperator = { fg = colors.pink },
    typescriptEndColons = { fg = colors.fg },
    typescriptObjectLabel = { fg = colors.green },
    typescriptAmbientDeclaration = { fg = colors.pink },
    typescriptProp = { fg = colors.green },
    typescriptAsyncFuncKeyword = { fg = colors.pink },
    typescriptGlobalMethod = { fg = colors.green },
    typescriptTypeReference = { fg = colors.aqua },
    typescriptBinaryOp = { fg = colors.pink },
    typescriptPromiseMethod = { fg = colors.green },
    typescriptNull = { fg = colors.cyan },
    typescriptArrayMethod = { fg = colors.green },
    typescriptMember = { fg = colors.fg },
    typescriptDestructureVariable = { fg = colors.aqua },
    typescriptArrayStaticMethod = { fg = colors.green },
    typescriptTSVariableBuiltin = { fg = colors.aqua },
    typescriptTSNamespace = { fg = colors.aqua },
    typescriptTSConstructor = { fg = colors.aqua },
    typescriptTSParameter = { fg = colors.orange, italic = true },
    typescriptTSKeywordReturn = { fg = colors.pink },

    -- tsx
    tsxAttrib = { fg = colors.green },
    tsxTagName = { fg = colors.aqua },
    tsxTSConstructor = { fg = colors.aqua },
    tsxTSKeyWordReturn = { fg = colors.pink },
    tsxTSType = { fg = colors.aqua },
    tsxTSVariableBuiltin = { fg = colors.aqua },
    tsxTSParameter = { fg = colors.orange, italic = true },

    -- rust
    rustIdentifier = { fg = colors.aqua },
    rustKeyword = { fg = colors.pink },
    rustType = { fg = colors.aqua },
    rustSigil = { fg = colors.pink },
    rustSelf = { fg = colors.pink },
    rustLifetime = { fg = colors.pink },
    rustLet = { fg = colors.cyan },
    rustParamName = { fg = colors.orange, italic = true },
    rustModPath = { fg = colors.aqua },
    rustTSKeyword = { fg = colors.pink },
    rustTSConstBuiltin = { fg = colors.aqua },
    rustTSVariableBuiltin = { fg = colors.pink },
    rustTSTypeBuiltin = { fg = colors.aqua },
    rustTSType = { fg = colors.aqua },
    rustTSParameter = { fg = colors.orange, italic = true },
    rustTSKeywordFunction = { fg = colors.pink },

    -- html
    htmlTag = { fg = colors.fg },
    htmlEndTag = { fg = colors.fg },
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
    cssBraces = { fg = colors.fg },
    cssClassNameDot = { fg = colors.pink },
    cssURL = { fg = colors.orange, underline = true, italic = true },

    -- dockerfile
    dockerfileTSKeyword = { fg = colors.pink },

    -- bash
    bashTSParameter = { fg = colors.orange, italic = true },
}

return vim.tbl_deep_extend("force", themes, options.themes(colors))
