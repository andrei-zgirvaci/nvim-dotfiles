return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  build = ':TSUpdate',
  opts = {
    ensure_installed = {
      'lua',
      'javascript',
      'typescript',
      'tsx'
    },
    sync_install = true,

    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<C-Space>',
        node_incremental = '<C-Space>',
        scope_incremental = '<C-S>',
        node_decremental = '<C-Backspace>',
      }
    }
  },
  main = 'nvim-treesitter.configs'
}
