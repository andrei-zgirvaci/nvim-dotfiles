return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = 'VimEnter',
  opts = {},
  keys = {
    { mode = { 'n' }, '<leader>gl', function() require('gitsigns').preview_hunk() end },
    { mode = { 'n' }, '<leader>gd', function() require('gitsigns').diffthis() end },
    { mode = { 'n' }, '<leader>gb', function() require('gitsigns').blame_line({ full = true }) end },
    { mode = { 'n' }, '<leader>gB', function() require('gitsigns').toggle_current_line_blame() end },
  }
}
