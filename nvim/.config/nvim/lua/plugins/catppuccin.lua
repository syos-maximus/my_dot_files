-- This plugin is for the color scheme
return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme "catppuccin-mocha"
	end
}


 -- color options for catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


