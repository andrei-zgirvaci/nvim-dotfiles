return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
  main = 'nvim-treesitter.configs'
}
