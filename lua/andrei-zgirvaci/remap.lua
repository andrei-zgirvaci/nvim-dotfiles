-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')  -- Move to the window on the left
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')  -- Move to the window on the right
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')  -- Move to the window below
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')  -- Move to the window above

-- Window sizing
vim.keymap.set('n', '<C-S-H>', '<C-w>5<')
vim.keymap.set('n', '<C-S-L>', '<C-w>5>')
vim.keymap.set('n', '<C-S-J>', '<C-w>+')
vim.keymap.set('n', '<C-S-K>', '<C-w>-')

-- Clear search highlights
vim.keymap.set('n', '<Esc>', function() vim.cmd('nohlsearch') end)  -- Press <Esc> to clear search highlights

-- Reload the current configuration file
vim.keymap.set('n', '<leader>x', function() vim.cmd('luafile %') end)  -- Reload the current Lua config file
