vim.api.nvim_command [[
    if !isdirectory("plenary.nvim")
      !git clone https://github.com/nvim-lua/plenary.nvim.git plenary.nvim
    endif
]]

vim.opt.rtp:append "."
vim.opt.rtp:append "../plenary.nvim"
vim.api.nvim_command "runtime plugin/plenary.vim"
vim.api.nvim_create_user_command("Test", "PlenaryBustedDirectory tests { minimal_init = 'tests/minimal_init.lua' }", {})
