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
      { mode = { 'n', 'o' }, 'z', function() flash.jump() end },
      { mode = { 'n', 'o' }, 'Z', function() flash.treesitter() end },
    }
  end
}
