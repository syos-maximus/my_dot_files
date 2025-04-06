--set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--setting neotree call cntrl-n
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

--changing how to move between pains
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


