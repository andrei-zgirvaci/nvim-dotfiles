-- Disable netrw early so `nvim .` does not open a file browser.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('andrei-zgirvaci/lazy')
require('andrei-zgirvaci/options')
require('andrei-zgirvaci/remap')

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('TextYankPost', {
  group = augroup('highlight-on-yank', {}),
  pattern = '*',
  callback = function()
    -- Briefly highlight yanked text as visual feedback.
    vim.highlight.on_yank()
  end,
})
