require('andrei-zgirvaci/lazy')
require('andrei-zgirvaci/options')
require('andrei-zgirvaci/remap')

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('TextYankPost', {
  group = augroup('highlight-on-yank', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
})
