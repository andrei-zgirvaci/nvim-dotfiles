return {
  'folke/flash.nvim',
  version = '*',
  opts = {},
  keys = {
    { mode = { 'n', 'o' }, 'z', function() require('flash').jump() end },
    { mode = { 'n', 'o' }, 'Z', function() require('flash').treesitter() end },
  }
}
