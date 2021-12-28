local util = {}

local theme = require("one_monokai.theme")

util.highlight = function(group, color)
	local fg = color.fg ~= nil and "guifg=" .. color.fg or "guifg=None"
	local bg = color.bg ~= nil and "guibg=" .. color.bg or "guibg=None"
	local style = color.style ~= nil and "gui=" .. color.style or "gui=None"

	local highlight = "hi " .. group .. " " .. style .. " " .. fg .. " " .. bg

	cmd(highlight)
end

-- Load the theme
util.load = function()
	cmd("hi clear")

	if vim.fn.exists("syntax_on") then
		cmd("syntax reset")
	end

	vim.opt.background = "dark"
	vim.opt.termguicolors = true
	set.colors_name = "one_monokai"

	local all_syntax = {
		theme.load_syntax(),
		theme.load_editor(),
		theme.load_plugins(),
		theme.load_lang(),
	}

	for _, syntax in pairs(all_syntax) do
		for group, colors in pairs(syntax) do
			util.highlight(group, colors)
		end
	end
end

return util
