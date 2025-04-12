--This plugin is fo rthe LSP config, this is where Mason for isnalling LSP, Linters and Formatters is insalled at
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end

	},
	{
        "williamboman/mason-lspconfig.nvim",
        config = function()
            -- lua_ls = lua; ts_ls = javascript; cssls = css, superhtml=html, texlab = LaTeX
			require("mason-lspconfig").setup({
			ensure_installed = {"lua_ls", "ts_ls", "cssls", "superhtml"}
			})
		end
	},
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.cssls.setup({})
            lspconfig.superhtml.setup({})
            vim.diagnostic.config({virtual_text = false}) -- change this to true to show in line warnings/error flags
        end
    }
}

