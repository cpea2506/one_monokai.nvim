local config = require "one_monokai.config"
local utils = require "one_monokai.utils"
local highlight = require "one_monokai.themes.highlight"

local themes = { default = {}, extended = {} }

function themes:new()
    local colors = require "one_monokai.colors"

    local default_groups = {
        Constant = { fg = colors.aqua },
        Number = { fg = colors.purple },
        Float = { fg = colors.purple },
        Boolean = { fg = colors.cyan },
        Character = { fg = colors.yellow },
        String = { fg = colors.yellow },

        Type = { fg = colors.aqua },
        Structure = { fg = colors.cyan },
        StorageClass = { fg = colors.cyan },
        Typedef = { fg = colors.aqua },

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
        PreCondit = { fg = colors.pink },

        Special = { fg = colors.purple },
        SpecialChar = { fg = colors.pink },
        Delimiter = { fg = colors.pink },
        SpecialComment = { fg = colors.cyan },
        Tag = { fg = colors.pink },

        Todo = { fg = colors.orange, bold = true, italic = true },
        Comment = { fg = colors.gray, italic = true },

        Underlined = { fg = colors.green, underline = true },
        Ignore = { fg = colors.yellow },
        Error = { fg = colors.red },

        Normal = { fg = colors.fg, bg = config.options.transparent and colors.none or colors.bg },
        FloatTitle = { fg = colors.pink },
        SignColumn = {},
        LineNr = { fg = colors.dark_gray },
        CursorLineNr = { fg = colors.fg },
        ColorColumn = { bg = colors.dark_blue },
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorColumn = { bg = colors.vulcan },
        CursorLine = { bg = colors.vulcan },
        Nontext = { fg = colors.dark_gray },
        StatusLine = { fg = colors.light_gray, bg = colors.black },
        StatusLineNC = { fg = colors.light_gray, bg = colors.dark_blue },
        Tabline = { fg = colors.fg, bg = colors.dark_blue, reverse = true },
        Visual = { bg = colors.dark_gray },
        Search = { fg = colors.bg, bg = colors.yellow },
        MatchParen = { bg = colors.dark_gray, bold = true },
        Question = { fg = colors.yellow },
        ModeMsg = { fg = colors.yellow },
        MoreMsg = { fg = colors.yellow },
        ErrorMsg = { fg = colors.red },
        WarningMsg = { fg = colors.yellow },
        VertSplit = { fg = colors.fg },

        SpecialKey = { fg = colors.pink },
        Title = { fg = colors.yellow },
        Directory = { fg = colors.aqua },

        -- treesitter
        TSConstructor = { fg = colors.aqua },
        TSBoolean = { fg = colors.cyan },
        TSFuncBuiltin = { fg = colors.green },
        TSKeywordReturn = { fg = colors.pink },
        TSKeyword = { fg = colors.cyan },
        TSParameter = { fg = colors.orange, italic = true },
        TSWarning = { fg = colors.yellow },
        TSVariableBuiltin = { fg = colors.pink },
        TSConstBuiltin = { fg = colors.aqua },
        TSKeywordFunction = { fg = colors.pink },
        TSTypeBuiltin = { fg = colors.aqua },
        TSType = { fg = colors.aqua },

        -- diff
        DiffAdd = { fg = colors.green },
        DiffDelete = { fg = colors.red },
        DiffChange = { fg = colors.white },
        DiffText = { fg = colors.bg, bg = colors.cyan },
        diffRemoved = { fg = colors.pink },
        diffLine = { fg = colors.purple },
        diffAdded = { fg = colors.green },
        diffSubname = { fg = colors.cyan },
        diffIndexLine = { fg = colors.cyan },
        diffChanged = { fg = colors.white },
        diffFile = { fg = colors.white },

        -- fold
        Folded = { fg = colors.gray, bg = colors.dark_blue },
        FoldColumn = { bg = colors.dark_blue },

        -- popup menu
        Pmenu = { fg = colors.fg },
        PmenuSel = { fg = colors.bg, bg = colors.pink },
        PmenuThumb = { fg = colors.dark_green, bg = colors.dark_gray },

        -- lsp document highlight
        LspReferenceRead = { bg = colors.vulcan, bold = true },
        LspReferenceText = { bg = colors.vulcan, bold = true },
        LspReferenceWrite = { bg = colors.vulcan, bold = true },

        -- diagnostics
        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.white },
        DiagnosticHint = { fg = colors.light_gray },
        DiagnosticUnderlineError = { sp = colors.red, underline = true },
        DiagnosticUnderlineWarn = { sp = colors.yellow, underline = true },
        DiagnosticUnderlineInfo = { sp = colors.green, underline = true },
        DiagnosticUnderlineHint = { sp = colors.light_gray, underline = true },

        -- lsp-installer
        LspInstallerGreen = { fg = colors.green },
        LspInstallerHeader = { fg = colors.dark_green, bg = colors.cyan, bold = true },
        LspInstallerHeaderHelp = { fg = colors.dark_green, bg = colors.yellow, bold = true },
        LspInstallerVaderSaber = { fg = colors.pink, bold = true },
        LspInstallerVersionCheckLoaderDone = { fg = colors.dark_green, bg = colors.green, bold = true },
        LspInstallerOrange = { fg = colors.orange },
        LspInstallerHighlighted = { fg = colors.pink },
        LspInstallerLink = { fg = colors.aqua },

        -- dashboard
        DashboardHeader = { fg = colors.peanut },
        DashboardCenter = { fg = colors.pink },
        DashboardFooter = { fg = colors.aqua },

        -- nvimtree
        NvimTreeFolderIcon = { fg = colors.yellow },
        NvimTreeGitStaged = { fg = colors.green },
        NvimTreeGitDirty = { fg = colors.pink },

        -- bufferline
        BufferLineModified = { fg = colors.pink },
        BufferLineModifiedSelected = { fg = colors.pink },
        BufferLineModifiedVisible = { fg = colors.pink },
        BufferLineDiagnostic = { fg = colors.dark_gray },
        BufferLineDiagnosticSelected = { fg = colors.light_gray, bold = true, italic = true },
        BufferLineDiagnosticVisible = { fg = colors.dark_gray },
        BufferLineErrorDiagnostic = { fg = colors.dark_gray, sp = colors.red },
        BufferLineErrorDiagnosticVisible = { fg = colors.red },
        BufferLineErrorDiagnosticSelected = { fg = colors.red, sp = colors.red, bold = true, italic = true },
        BufferLineWarningDiagnostic = { fg = colors.dark_gray, sp = colors.yellow },
        BufferLineWarningDiagnosticVisible = { fg = colors.yellow },
        BufferLineWarningDiagnosticSelected = {
            fg = colors.yellow,
            sp = colors.yellow,
            bold = true,
            italic = true,
        },
        BufferLineInfoDiagnostic = { fg = colors.dark_gray, sp = colors.green },
        BufferLineInfoDiagnosticVisible = { fg = colors.green },
        BufferLineInfoDiagnosticSelected = { fg = colors.green, sp = colors.green, bold = true, italic = true },
        BufferLineHintDiagnostic = { fg = colors.dark_gray, sp = colors.light_gray },
        BufferLineHintDiagnosticVisible = { fg = colors.light_gray },
        BufferLineHintDiagnosticSelected = {
            fg = colors.light_gray,
            sp = colors.light_gray,
            bold = true,
            italic = true,
        },
        BufferLineIndicatorSelected = { fg = colors.aqua },
        BufferLineNumbers = { fg = colors.purple },
        BufferLineNumbersSelected = { fg = colors.purple },
        BufferLineNumbersVisible = { fg = colors.purple },

        -- whichkey
        WhichKey = { fg = colors.yellow },
        WhichKeySeparator = { fg = colors.pink },

        -- nvim-cmp
        CmpItemAbbrMatch = { fg = colors.aqua },
        CmpItemKindStruct = { fg = colors.pink },
        CmpItemKindEnum = { fg = colors.pink },
        CmpItemKindClass = { fg = colors.pink },
        CmpItemKindModule = { fg = colors.pink },
        CmpItemKindInterface = { fg = colors.pink },
        CmpItemKindValue = { fg = colors.white },
        CmpItemKindKeyword = { fg = colors.white },
        CmpItemKindText = { fg = colors.white },
        CmpItemKindProperty = { fg = colors.yellow },
        CmpItemKindMethod = { fg = colors.green },
        CmpItemKindField = { fg = colors.yellow },
        CmpItemKindEnumMember = { fg = colors.yellow },
        CmpItemKindFunction = { fg = colors.green },
        CmpItemKindVariable = { fg = colors.cyan },
        CmpItemKindConstant = { fg = colors.cyan },
        CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },

        -- indent-blankline
        IndentBlanklineIndent1 = { fg = colors.pink, nocombine = true },
        IndentBlanklineIndent2 = { fg = colors.yellow, nocombine = true },
        IndentBlanklineIndent3 = { fg = colors.green, nocombine = true },
        IndentBlanklineIndent4 = { fg = colors.cyan, nocombine = true },
        IndentBlanklineIndent5 = { fg = colors.aqua, nocombine = true },
        IndentBlanklineIndent6 = { fg = colors.purple, nocombine = true },

        -- crates
        CratesNvimNoMatch = { fg = colors.pink },
        CratesNvimError = { fg = colors.red },
        CratesNvimUpgrade = { fg = colors.yellow },
        CratesNvimVersion = { fg = colors.green },
        CratesNvimPreRelease = { fg = colors.cyan },
        CratesNvimYanked = { fg = colors.red },
        CratesNvimLoading = { fg = colors.purple },
        CratesNvimPopupTitle = { fg = colors.purple },
        CratesNvimPopupVersion = { fg = colors.green },
        CratesNvimPopupPreRelease = { fg = colors.cyan },
        CratesNvimPopupYanked = { fg = colors.pink },
        CratesNvimPopupFeature = { fg = colors.aqua },
        CratesNvimPopupEnabled = { fg = colors.green },
        CratesNvimPopupTransitive = { fg = colors.pink },
        CratesNvimPopupUrl = { fg = colors.aqua },

        -- notify
        NotifyERRORIcon = { fg = colors.red },
        NotifyERRORTitle = { fg = colors.red },
        NotifyERRORBorder = { fg = colors.red },
        NotifyERRORBody = { fg = colors.fg },
        NotifyWARNIcon = { fg = colors.yellow },
        NotifyWARNTitle = { fg = colors.yellow },
        NotifyWARNBorder = { fg = colors.yellow },
        NotifyWARNBody = { fg = colors.fg },
        NotifyINFOIcon = { fg = colors.green },
        NotifyINFOTitle = { fg = colors.green },
        NotifyINFOBorder = { fg = colors.green },
        NotifyINFOBody = { fg = colors.fg },
        NotifyDEBUGBorder = { fg = colors.purple },
        NotifyDEBUGTitle = { fg = colors.purple },
        NotifyDEBUGIcon = { fg = colors.purple },
        NotifyDEBUGBody = { fg = colors.fg },
        NotifyTRACEBorder = { fg = colors.white },
        NotifyTRACEIcon = { fg = colors.white },
        NotifyTRACETitle = { fg = colors.white },
        NotifyTRACEBody = { fg = colors.fg },

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
        jsFuncArgRest = { fg = colors.purple, italic = true },
        jsFuncArgs = { fg = colors.orange, italic = true },
        jsStorageClass = { fg = colors.cyan },
        jsDocTags = { fg = colors.cyan, italic = true },

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

        -- tsx
        tsxAttrib = { fg = colors.green },
        tsxTagName = { fg = colors.aqua },

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
    }

    self.default = highlight:new(default_groups)
    self.extended = self.default:extend(config.options.themes(colors))

    return self
end

function themes:load()
    local set_theme_ok, err = pcall(function()
        self.extended:set()
    end)

    if not set_theme_ok then
        utils.log_error(err)

        self.default:set()
    end
end

return themes
