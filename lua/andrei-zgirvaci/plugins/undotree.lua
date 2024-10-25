return {
  'mbbill/undotree',
  version = false,
  event = 'VeryLazy',
  keys = {
    { mode = { 'n' }, '<leader>u', function() vim.cmd('UndotreeToggle') end },
  }
}
