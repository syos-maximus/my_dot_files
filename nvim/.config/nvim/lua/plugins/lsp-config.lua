--This plugin is fo rthe LSP config, this is where Mason for isnalling LSP, Linters and Formatters is insalled at
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			-- lua_ls = lua; ts_ls = javascript; cssls = css, superhtml=html, texlab = LaTeX
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "ts_ls", "cssls", "superhtml", "texlab" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.cssls.setup({
				capabilities = capabilities,
			})
			lspconfig.superhtml.setup({
				capabilities = capabilities,
			})
			vim.diagnostic.config({ virtual_text = false }) -- change this to true to show in line warnings/error flags
		end,
	},
}
