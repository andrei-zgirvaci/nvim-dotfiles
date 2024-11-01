-- Misc
vim.keymap.set('n', '<leader>o', 'o<Esc>k')
vim.keymap.set('n', '<leader>O', 'O<Esc>j')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzz')
vim.keymap.set('n', 'N', 'Nzz')
vim.keymap.set('n', 'J', 'm`J``')
vim.keymap.set('n', '<leader>=', 'gg=G``')

-- Replace word
vim.keymap.set('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gIc<Left><Left><Left><Left>]])

-- Window navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

-- Window sizing
vim.keymap.set('n', '<C-S-H>', '<C-w>5<')
vim.keymap.set('n', '<C-S-L>', '<C-w>5>')
vim.keymap.set('n', '<C-S-J>', '<C-w>+')
vim.keymap.set('n', '<C-S-K>', '<C-w>-')

-- Clear search highlights
vim.keymap.set('n', '<Esc>', function() vim.cmd('nohlsearch') end)

-- Reload the current configuration file
vim.keymap.set('n', '<leader>x', function() vim.cmd('luafile %') end)
