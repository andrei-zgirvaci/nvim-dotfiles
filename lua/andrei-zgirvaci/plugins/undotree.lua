return {
  'mbbill/undotree',
  event = 'VeryLazy',
  keys = {
    { mode = { 'n' }, '<leader>u', function() vim.cmd('UndotreeToggle') end },
  }
}
