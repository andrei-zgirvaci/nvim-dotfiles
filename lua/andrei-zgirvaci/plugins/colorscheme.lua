function setColor(color)
  vim.cmd.colorscheme(color)
end

return {
  'gbprod/nord.nvim',
  version = '*',
  lazy = false,
  priority = 1000,
  config = function()
    require('nord').setup()

    setColor('nord')
  end,
}
