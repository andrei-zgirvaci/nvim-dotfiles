return {
  'folke/flash.nvim',
  version = '*',
  event = 'VeryLazy',
  opts = {
    modes = {
      search = {
        enabled = true
      },
      char = {
        config = function(opts)
          opts.autohide = vim.fn.mode(true):find('no')
        end
      }
    }
  },
  keys = function()
    local flash = require('flash')

    return {
      { 'z', mode = { 'n', 'o' }, function() flash.jump() end },
      { 'Z', mode = { 'n', 'o' }, function() flash.treesitter() end },
    }
  end
}
