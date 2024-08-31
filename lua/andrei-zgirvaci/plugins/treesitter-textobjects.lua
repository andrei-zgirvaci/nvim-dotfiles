return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  branch = 'main',
  event = 'VeryLazy',
  opts = {
    move = {
      set_jumps = true,
    },
  },
  keys = function()
    local move = require('nvim-treesitter-textobjects.move')
    local swap = require('nvim-treesitter-textobjects.swap')

    return {
      { mode = { 'n' }, ']f', function() move.goto_next_start('@function.outer', 'textobjects') end },
      { mode = { 'n' }, ']a', function() move.goto_next_start('@parameter.inner', 'textobjects') end },

      { mode = { 'n' }, ']F', function() move.goto_next_end('@function.outer', 'textobjects') end },
      { mode = { 'n' }, ']A', function() move.goto_next_end('@parameter.inner', 'textobjects') end },

      { mode = { 'n' }, '[f', function() move.goto_previous_start('@function.outer', 'textobjects') end },
      { mode = { 'n' }, '[a', function() move.goto_previous_start('@parameter.inner', 'textobjects') end },

      { mode = { 'n' }, '[F', function() move.goto_previous_end('@function.outer', 'textobjects') end },
      { mode = { 'n' }, '[A', function() move.goto_previous_end('@parameter.inner', 'textobjects') end },

      { mode = { 'n' }, '<leader>a', function() swap.swap_next('@parameter.inner') end },
      { mode = { 'n' }, '<leader>nf', function() swap.swap_next('@function.outer') end },

      { mode = { 'n' }, '<leader>A', function() swap.swap_previous('@parameter.inner') end },
      { mode = { 'n' }, '<leader>pf', function() swap.swap_previous('@function.outer') end },
    }
  end
}
