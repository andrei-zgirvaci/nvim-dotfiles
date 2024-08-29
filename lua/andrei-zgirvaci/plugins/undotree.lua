return {
  'mbbill/undotree',
  event = 'VeryLazy',
  keys = {
    {'<leader>u', mode = { 'n' }, function() vim.cmd('UndotreeToggle') end },
  }
}
