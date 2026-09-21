-- setting colorscheme with builtin catpuccin nvim 0.12+
vim.opt.termguicolors = true

-- adding line numbers & relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- scroll settings keeps 10 lines above/below/left/right
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Preventing Wrap lines
vim.opt.wrap = false
vim.opt.linebreak = true --prevents words from being split during line wrap
vim.opt.cursorline = true -- highlights current working line

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- copy indent from current line when starting new line
vim.opt.autoindent = true

--Setting width of tabs
vim.opt.shiftwidth = 4 --sets 4 spaces per indention
vim.opt.tabstop = 4 -- sets 4 spaces per tab
vim.opt.softtabstop = 4 -- sets 4 spaces per tab
vim.opt.expandtab = true -- converts tabs to spaces

-- controlling workpage
vim.opt.signcolumn = "yes" -- leaves an extra gap on the left for when using lsp and git items

-- creating a persistent undo directory
-- create an undodir if one doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir") -- note I made this .vim file myself to have the undo directory spot
if
    vim.fn.isdirectory(undodir) == 0
then
    vim.fn.mkdir(undodir, "p")
end
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true
vim.opt.undodir = undodir
vim.opt.autoread = true --auto-reload changes if outside of neovim
