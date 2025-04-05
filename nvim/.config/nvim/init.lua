-- linking to my other lua config file
require 'core.options'
require 'core.keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end 
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({ --add lazy plugins between this brace
{
-- adding neo tree (note i took out the neo-tree code for lazy = false
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  }
},
--adding catpucchin color plugin
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },

--adding telecope plugin
{
'nvim-telescope/telescope.nvim', tag = '0.1.8',
dependencies = { 'nvim-lua/plenary.nvim' }
},

--adding treesitter plugin
{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}

}) --end brace for lazy plugins

--calling catpuccin-mocha
 -- color options for catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd.colorscheme "catppuccin-mocha"

--calling telescope and keybinds for local
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg' , builtin.live_grep, {})

--calling treesitter
local configs = require("nvim-treesitter.configs")
configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" , "python"},
          highlight = { enable = true },
          indent = { enable = true },  
        })
