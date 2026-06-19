-- All of my auto commands --

-- setting autocommand to highlight when "yanking"
vim.api.nvim_set_hl(0, 'YankHighlight', {
--  bg = '#fab387',  -- background color
  bg = '#12EBEB',  -- background color
  fg = '#1e1e2e',  -- text color (optional)
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank({ higroup = 'YankHighlight' , timeout = 250})
  end,
})

-- command for PackUpdate --
vim.api.nvim_create_user_command('PackUpdate', function()
  vim.pack.update()
end, {})

