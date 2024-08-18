-- Set <Space> as the leader key
vim.g.mapleader = " "

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local out = vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    lazypath
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  spec = {{ import = 'andrei-zgirvaci/plugins' }},
  change_detection = { notify = false },
  checker = { enabled = true }
})
