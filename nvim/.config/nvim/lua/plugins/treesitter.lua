--adding treesitter plugin
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
-- uncomment next line to not have to manually list languages for tree sitter highlighting
            auto_install = true,
--uncomment next line to manually call language parsers 
--            ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" , "python", "fish", "css"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
