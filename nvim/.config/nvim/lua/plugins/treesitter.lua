--This plugin does highlighting and indenting. Will automicatlly install language to update highlghting/indenting
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			-- comment next line to not have to manually list languages for tree sitter highlighting
			--            auto_install = true,
			--uncomment next line to manually call language parsers *note* i need to manually call languages because
            --of an error with treesitter and vimtex
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"elixir",
				"heex",
				"javascript",
				"html",
				"python",
				"fish",
				"css",
			},
			highlight = { enable = true },
			indent = { enable = true },
			disable = { "latex" }, -- ensure latex is disabled from treesitter as vimtex is taking care of highlighting 
		})
	end,
}
