return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  opts = {},
  keys = {
    { mode = { 'n' }, '<C-e>e', function() local h = require('harpoon'); h.ui:toggle_quick_menu(h:list()) end },
    { mode = { 'n' }, '<C-e>a', function() require('harpoon'):list():add() end },

    { mode = { 'n' }, '<C-e>p', function() require('harpoon'):list():prev() end },
    { mode = { 'n' }, '<C-e>n', function() require('harpoon'):list():next() end },

    { mode = { 'n' }, '<C-e>1', function() require('harpoon'):list():select(1) end },
    { mode = { 'n' }, '<C-e>2', function() require('harpoon'):list():select(2) end },
    { mode = { 'n' }, '<C-e>3', function() require('harpoon'):list():select(3) end },
    { mode = { 'n' }, '<C-e>4', function() require('harpoon'):list():select(4) end },
    { mode = { 'n' }, '<C-e>5', function() require('harpoon'):list():select(5) end },
    { mode = { 'n' }, '<C-e>6', function() require('harpoon'):list():select(6) end },
    { mode = { 'n' }, '<C-e>7', function() require('harpoon'):list():select(7) end },
    { mode = { 'n' }, '<C-e>8', function() require('harpoon'):list():select(8) end },
    { mode = { 'n' }, '<C-e>9', function() require('harpoon'):list():select(9) end },
  }
}
