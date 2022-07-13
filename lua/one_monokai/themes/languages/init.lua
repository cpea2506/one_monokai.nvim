local utils = require "one_monokai.utils"

local languages = {
    "css",
    "html",
    "java",
    "javascript",
    "rust",
    "tsx",
    "typescript",
    "vim",
    "xml",
}

return utils.gen_module_tbl("one_monokai.themes.languages", languages)
