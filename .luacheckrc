-- vim: ft=lua tw=80

stds.nvim = {
    globals = {
        vim = { fields = { "g" } },
    },
    read_globals = {
        "vim",
        vim = { fields = { "cmd", "fn" } },
    },
}

ignore = {
    "631", -- max_line_length
    "212/_.*", -- unused argument, for vars with "_" prefix
    "211", -- unused local variable
}
