-- Set <Space> as the leader key
vim.g.mapleader = " "  -- Spacebar is now the leader key, used for custom shortcuts

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')  -- Move to the window on the left
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')  -- Move to the window on the right
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')  -- Move to the window below
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')  -- Move to the window above

-- System clipboard integration
vim.keymap.set({'n', 'v'}, '<leader>p', [["+p]])  -- Paste from system clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])  -- Yank (copy) to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>Y', [["+Y]])  -- Yank entire line to system clipboard
vim.keymap.set({'n', 'v'}, '<leader>d', [["_d]])  -- Delete text without copying to any register

-- Clear search highlights
vim.keymap.set('n', '<Esc>', function() vim.cmd('nohlsearch') end)  -- Press <Esc> to clear search highlights

-- Reload the current configuration file
vim.keymap.set('n', '<leader><leader>', function() vim.cmd('luafile %') end)  -- Reload the current Lua config file
