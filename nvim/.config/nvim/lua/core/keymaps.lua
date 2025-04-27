--set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--setting neotree call cntrl-n
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})

--changing how to move between pains
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- lsp keympas
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- note the below are in the telecsop plugins because of the local function builtin
--vim.keymap.set('n', '<C-p>', builtin.find_files, {})
--vim.keymap.set('n', '<leader>fg' , builtin.live_grep, {})
--
--non-ls.lua keymaps
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- split window key commands
vim.keymap.set("n", "<C-u>",":vsplit<CR>" ,{}) -- vertical split
vim.keymap.set("n", "<C-i>",":split<CR>" ,{}) -- horizontal split

