local colors = require "one_monokai.colors"
local config = require "one_monokai.config"

---@type one_monokai.highlights.groups
local groups = {
    ["@lsp.mod.deprecated"] = { fg = colors.light_gray, strikethrough = true },
    ["@lsp.mod.documentation"] = { link = "Constant" },
    ["@lsp.type.class"] = { link = "Type" },
    ["@lsp.type.comment"] = { link = "Comment" },
    ["@lsp.type.enum"] = { link = "Type" },
    ["@lsp.type.enumMember"] = { link = "Constant" },
    ["@lsp.type.function"] = { link = "Function" },
    ["@lsp.type.macro"] = { link = "Function" },
    ["@lsp.type.method"] = { link = "Function" },
    ["@lsp.type.number"] = { link = "Number" },
    ["@lsp.type.operator"] = { link = "Operator" },
    ["@lsp.type.parameter"] = { fg = colors.orange, italic = config.italics },
    ["@lsp.type.property"] = { link = "Identifier" },
    ["@lsp.type.string"] = { link = "String" },
    ["@lsp.type.struct"] = { link = "Type" },
    ["@lsp.type.typeParameter"] = { link = "Type" },
    ["@lsp.type.xmlDocCommentName"] = { fg = colors.pink },
    ["@lsp.type.xmlDocCommentAttributeQuotes"] = { fg = colors.yellow },
    ["@lsp.type.xmlDocCommentAttributeName"] = { fg = colors.green },

    LspReferenceRead = { bg = colors.vulcan, bold = true },
    LspReferenceText = { bg = colors.vulcan, bold = true },
    LspReferenceWrite = { bg = colors.vulcan, bold = true },

    LspInlayHint = { link = "Comment" },

    LspInfoBorder = { link = "FloatBorder" },
    LspInfoFiletype = { fg = colors.white },
    LspInfoList = { fg = colors.aqua },
    LspInfoTitle = { fg = colors.cyan },
}

-- Hide all semantic highlights by default, only enable those from the default table.
for _, semantic_group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    if not groups[semantic_group] then
        groups[semantic_group] = {}
    end
end

return groups
