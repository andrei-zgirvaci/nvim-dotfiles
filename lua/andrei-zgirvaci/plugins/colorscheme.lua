function setColor(color)
  vim.cmd.colorscheme(color)
end

return {
  'ellisonleao/gruvbox.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    setColor('gruvbox')
  end,
  opts = {
    contrast = 'soft',
  },

  -- 'gbprod/nord.nvim',
  -- lazy = false,
  -- priority = 1000,
  -- config = function()
  --   require('nord').setup()
  --
  --   setColor('nord')
  -- end,
}
