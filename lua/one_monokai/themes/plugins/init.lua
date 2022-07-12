local utils = require "one_monokai.utils"
local plugins = {
    "cmp",
    "crates",
    "dashboard",
    "indent_blankline",
    "lsp_installer",
    "notify",
    "nvimtree",
    "treesitter",
    "whichkey",
}

return utils.gen_module_table("one_monokai.themes.plugins", plugins)
