return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = 'VimEnter',
  opts = {},
  keys = function()
    local gitsigns = require('gitsigns')

    return {
      { mode = { 'n' }, '<leader>gl', function() gitsigns.blame_line({full=true}) end },
      { mode = { 'n' }, '<leader>gd', function() gitsigns.diffthis() end },
    }
  end
}
