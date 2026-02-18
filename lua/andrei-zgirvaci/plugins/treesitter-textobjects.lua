return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  branch = 'main',
  event = "VeryLazy",
  opts = {
    move = {
      set_jumps = true,
    },
  },
  keys = {
    -- Function navigation
    { mode = { 'n', 'x', 'o' }, ']f', function() require('nvim-treesitter-textobjects.move').goto_next_start('@function.outer', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, '[f', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@function.outer', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, ']F', function() require('nvim-treesitter-textobjects.move').goto_next_start('@function.inner', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, '[F', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@function.inner', 'textobjects') end },

    -- Arguments navigation
    { mode = { 'n', 'x', 'o' }, ']a', function() require('nvim-treesitter-textobjects.move').goto_next_start('@parameter.inner', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, '[a', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@parameter.inner', 'textobjects') end },

    -- Block navigation
    { mode = { 'n', 'x', 'o' }, ']b', function() require('nvim-treesitter-textobjects.move').goto_next_start('@block.outer', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, '[b', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@block.outer', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, ']B', function() require('nvim-treesitter-textobjects.move').goto_next_start('@block.inner', 'textobjects') end },
    { mode = { 'n', 'x', 'o' }, '[B', function() require('nvim-treesitter-textobjects.move').goto_previous_start('@block.inner', 'textobjects') end },

    -- Swap
    { mode = { 'n' }, '<leader>sa', function() require('nvim-treesitter-textobjects.swap').swap_next('@parameter.inner') end },
    { mode = { 'n' }, '<leader>sA', function() require('nvim-treesitter-textobjects.swap').swap_previous('@parameter.inner') end },
    { mode = { 'n' }, '<leader>sf', function() require('nvim-treesitter-textobjects.swap').swap_next('@function.outer') end },
    { mode = { 'n' }, '<leader>sF', function() require('nvim-treesitter-textobjects.swap').swap_previous('@function.outer') end },
  }
}
