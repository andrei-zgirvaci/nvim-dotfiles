return {
  -- {
  --   'sainnhe/everforest',
  --   branch = 'master',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.everforest_background = 'hard'
  --     vim.g.everforest_transparent_background = 2
  --     vim.cmd.colorscheme('everforest')
  --   end,
  -- },
  {
    "sainnhe/gruvbox-material",
    branch = 'master',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = 'hard'
      vim.g.gruvbox_material_foreground = 'material'
      vim.g.gruvbox_material_transparent_background = 2
      vim.cmd.colorscheme('gruvbox-material')
    end,
  },
}
