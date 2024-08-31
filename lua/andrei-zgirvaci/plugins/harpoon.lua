return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = function()
    local harpoon = require('harpoon')

    return {
      { mode = { 'n' }, '<C-e>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end },
      { mode = { 'n' }, '<C-e>a', function() harpoon:list():add() end },

      { mode = { 'n' }, '<C-e>p', function() harpoon:list():prev() end },
      { mode = { 'n' }, '<C-e>n', function() harpoon:list():next() end },

      { mode = { 'n' }, '<C-e>1', function() harpoon:list():select(1) end },
      { mode = { 'n' }, '<C-e>2', function() harpoon:list():select(2) end },
      { mode = { 'n' }, '<C-e>3', function() harpoon:list():select(3) end },
      { mode = { 'n' }, '<C-e>4', function() harpoon:list():select(4) end },
      { mode = { 'n' }, '<C-e>5', function() harpoon:list():select(5) end },
    }
  end
}
