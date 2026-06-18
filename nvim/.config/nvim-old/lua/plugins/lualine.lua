-- This plugin is for the lua line that is along the bottom of the nvim screen
return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require('lualine').setup({
			options = {
			theme = 'dracula'
			}
		})
	end
}
