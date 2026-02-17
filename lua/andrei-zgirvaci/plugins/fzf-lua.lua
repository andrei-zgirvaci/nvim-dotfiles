return {
  'ibhagwan/fzf-lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },
  opts = {},
  keys = {
    { mode = { 'n' }, '<leader>ff', function() require('fzf-lua').files() end },
    { mode = { 'n' }, '<leader>fb', function() require('fzf-lua').buffers() end },
    { mode = { 'n' }, '<leader>fs', function() require('fzf-lua').live_grep() end },
    { mode = { 'n' }, '<leader>fw', function() require('fzf-lua').grep_cword() end },
    { mode = { 'n' }, '<leader>fr', function() require('fzf-lua').resume() end },
    { mode = { 'n' }, '<leader>fc', function() require('fzf-lua').git_bcommits() end },
    { mode = { 'n' }, '<leader>fh', function() require('fzf-lua').helptags() end },
    { mode = { 'n' }, '<leader>/', function() require('fzf-lua').blines() end },

    -- Shortcut for searching Neovim configuration files.
    { mode = { 'n' }, '<leader>fv', function() require('fzf-lua').files({ cwd = vim.fn.stdpath('config') }) end },

    -- Shortcut for searching Fish configuration files.
    { mode = { 'n' }, '<leader>fC', function() require('fzf-lua').files({ cwd = vim.fn.expand('~/.config') }) end }
  }
}
