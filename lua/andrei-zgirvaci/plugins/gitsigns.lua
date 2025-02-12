return {
  'lewis6991/gitsigns.nvim',
  version = '*',
  event = 'VimEnter',
  opts = {},
  keys = function()
    local gitsigns = require('gitsigns')

    return {
      { mode = { 'n' }, '<leader>gl', function() gitsigns.preview_hunk() end },
      { mode = { 'n' }, '<leader>gh', function() gitsigns.toggle_deleted() end },
      { mode = { 'n' }, '<leader>gd', function() gitsigns.diffthis() end },
      { mode = { 'n' }, '<leader>gb', function() gitsigns.toggle_current_line_blame() end },
    }
  end
}
