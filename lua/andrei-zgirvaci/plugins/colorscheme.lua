local function setColor(color)
  vim.cmd.colorscheme(color)
end

return {
  {
    'sainnhe/everforest',
    branch = 'master',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_transparent_background = 2
      setColor('everforest')
    end,
  },
  -- {
  --   'AlexvZyl/nordic.nvim',
  --   version = '*',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('nordic').load()
  --
  --     setColor('nordic')
  --   end,
  -- },
}
