return {
    addon = {
        src = 'https://github.com/catppuccin/nvim',
        name = 'catppuccin',
    },
    setup = function ()
        require('catppuccin').setup({
            flavour = 'mocha',
        })
        vim.cmd.colorscheme('catppuccin')
    end,
}
