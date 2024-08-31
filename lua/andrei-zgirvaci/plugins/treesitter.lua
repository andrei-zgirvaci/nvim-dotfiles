return {
  'nvim-treesitter/nvim-treesitter',
  version = '*',
  build = ':TSUpdate',
  lazy = false,
  -- event = 'VimEnter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  opts = {
   ensure_installed = {
      "lua",
    },

    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<c-space>',
        node_incremental = '<c-space>',
        scope_incremental = '<c-s>',
        node_decremental = '<c-backspace>',
      }
    }
  },
  main = 'nvim-treesitter.configs'
}
