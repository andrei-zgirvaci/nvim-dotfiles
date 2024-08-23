return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  config = function()
    require('nvim-treesitter.configs').setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
          },
        },

        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            [']f'] = '@function.outer',
            [']a'] = '@parameter.inner'
          },
          goto_next_end = { 
            [']F'] = '@function.outer', 
            [']A'] = '@parameter.inner' 
          },
          goto_previous_start = { 
            ['[f'] = '@function.outer',
            ['[a'] = '@parameter.inner'
          },
          goto_previous_end = { 
            ['[F'] = '@function.outer', 
            ['[A'] = '@parameter.inner' },
        },

        swap = {
          enable = true,
          swap_next = {
            ['<leader>a'] = '@parameter.inner',
            ['<leader>nf'] = '@function.outer',
          },
          swap_previous = {
            ['<leader>A'] = '@parameter.inner',
            ['<leader>pf'] = '@function.outer',
          },
        },
      },
    })
  end
}
