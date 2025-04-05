-- adding line numbers
vim.opt.number = true

-- adding relative line numbers
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- sync clipboard between OS and Neoveim
vim.opt.clipboard = 'unnamedplus'

-- Wrap lines
vim.opt.wrap = false
vim.opt.linebreak = true --prevents words from being split during line wrap

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

