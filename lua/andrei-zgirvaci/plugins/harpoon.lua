return {
  'ThePrimeagen/harpoon',
  event = 'VimEnter',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require('harpoon')
    harpoon:setup()

    vim.keymap.set('n', '<C-e>e', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
    vim.keymap.set('n', '<C-e>a', function() harpoon:list():add() end)

    vim.keymap.set('n', '<C-e>p', function() harpoon:list():prev() end)
    vim.keymap.set('n', '<C-e>n', function() harpoon:list():next() end)

    vim.keymap.set('n', '<C-e>1', function() harpoon:list():select(1) end)
    vim.keymap.set('n', '<C-e>2', function() harpoon:list():select(2) end)
    vim.keymap.set('n', '<C-e>3', function() harpoon:list():select(3) end)
    vim.keymap.set('n', '<C-e>4', function() harpoon:list():select(4) end)
    vim.keymap.set('n', '<C-e>5', function() harpoon:list():select(5) end)
  end
}
