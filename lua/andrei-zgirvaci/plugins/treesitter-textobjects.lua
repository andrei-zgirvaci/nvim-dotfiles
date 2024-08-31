return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = false,
  opts = {
    textobjects = {
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
  },
  main = 'nvim-treesitter.configs'
}
