--set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--setting neotree call cntrl-n
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
