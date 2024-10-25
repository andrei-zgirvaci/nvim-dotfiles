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
