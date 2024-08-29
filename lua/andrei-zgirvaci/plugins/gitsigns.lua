return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = 'VimEnter',
  opts = {},
  keys = {
    { '<leader>gl', mode = { 'n' }, function() require('gitsigns').blame_line{full=true} end },
  }
}
