return {
  'chrisgrieser/nvim-spider',
  branch = 'main',
  lazy = true,
  opts = {},
  keys = function()
    local spider = require('spider')

    return {
      { mode = { 'n', 'o', 'x' }, '<leader>w',  function() spider.motion('w') end },
      { mode = { 'n', 'o', 'x' }, '<leader>b',  function() spider.motion('b') end },
      { mode = { 'n', 'o', 'x' }, '<leader>e',  function() spider.motion('e') end },
      { mode = { 'n', 'o', 'x' }, '<leader>ge', function() spider.motion('ge') end },
    }
  end
}
