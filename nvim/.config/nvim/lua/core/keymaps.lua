--set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--setting neotree call cntrl-n
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

-- keymap to see errors flagged by LSP
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic under cursor' })

--changing how to move between pains
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- note the below are in the telecsop plugins because of the local function builtin
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg' , builtin.live_grep, {})
--

-- split window key commands
vim.keymap.set("n", "<C-u>",":vsplit<CR>" ,{}) -- vertical split
vim.keymap.set("n", "<C-i>",":split<CR>" ,{}) -- horizontal split

-- global replace in document

-- keycommands for vimtex
-- space ll will start automicatic compiling. File will compile after every save
-- space lk will stop compiling
-- space lc will clear aux files
