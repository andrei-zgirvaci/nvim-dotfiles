return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = 'VimEnter',
  opts = {},
  keys = {
    { mode = { 'n' }, '<leader>gl', function() require('gitsigns').blame_line{full=true} end },
  }
}
