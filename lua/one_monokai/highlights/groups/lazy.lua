local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
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
}

return groups
