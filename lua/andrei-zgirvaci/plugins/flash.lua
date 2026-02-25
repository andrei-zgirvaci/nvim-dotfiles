return {
  'folke/flash.nvim',
  version = '*',
  event = "VeryLazy",
  opts = {
    modes = {
      char = {
        enabled = false,
      },
    },
  },
  keys = {
    { mode = { 'n', 'o' }, 'z', function() require('flash').jump() end },
    { mode = { 'n', 'o' }, 'Z', function() require('flash').treesitter() end },
  }
}
