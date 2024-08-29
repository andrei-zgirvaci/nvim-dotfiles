return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = function()
    local harpoon = require('harpoon')

    return {
      { '<C-e>e', mode = { 'n' }, function() harpoon.ui:toggle_quick_menu(harpoon:list()) end },
      { '<C-e>a', mode = { 'n' }, function() harpoon:list():add() end },

      { '<C-e>p', mode = { 'n' }, function() harpoon:list():prev() end },
      { '<C-e>n', mode = { 'n' }, function() harpoon:list():next() end },

      { '<C-e>1', mode = { 'n' }, function() harpoon:list():select(1) end },
      { '<C-e>2', mode = { 'n' }, function() harpoon:list():select(2) end },
      { '<C-e>3', mode = { 'n' }, function() harpoon:list():select(3) end },
      { '<C-e>4', mode = { 'n' }, function() harpoon:list():select(4) end },
      { '<C-e>5', mode = { 'n' }, function() harpoon:list():select(5) end },
    }
  end
}
