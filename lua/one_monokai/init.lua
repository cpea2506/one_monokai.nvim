_G.cmd = vim.cmd
_G.set = vim.g

local util = require("one_monokai.util")

local init = {}

init.setup = function()
	util.load()
end

return init
