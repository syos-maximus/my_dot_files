-- This plugin calls the formatters and linters
return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,--formatter for lua
				null_ls.builtins.formatting.prettier,--formatter for javascript, css, html, yaml
				null_ls.builtins.formatting.black,--formatter for python
				null_ls.builtins.formatting.isort,--formatter for python importing
				null_ls.builtins.diagnostics.pylint,--linting for python
				null_ls.builtins.diagnostics.stylelint,--linting for css
				null_ls.builtins.diagnostics.eslint_d,--linting for javascript
				null_ls.builtins.diagnostics.htmlhint,--linting for html
			},
		})
	end,
}
--make sure to use :mason to install each of the above called linters and formatters!!
