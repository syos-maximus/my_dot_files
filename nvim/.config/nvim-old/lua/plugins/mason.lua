--This plugin is fo rthe LSP config, this is where Mason for isnalling LSP, Linters and Formatters is insalled at
return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
}
