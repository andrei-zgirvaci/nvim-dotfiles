require('andrei-zgirvaci/lazy')
require('andrei-zgirvaci/options')
require('andrei-zgirvaci/remap')

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

autocmd('TextYankPost', {
  group = augroup('HighlightYank', {}),
  pattern = '*',
  callback = function()
    vim.highlight.on_yank()
  end,
})

autocmd('LspAttach', {
  group = augroup('LspAttach', {}),
  callback = function(event)
    local opts = { buffer = event.buf }

    local telescope = require('telescope.builtin')

    vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)

    vim.keymap.set('n', 'gd', telescope.lsp_definitions, opts)
    vim.keymap.set('n', '<leader>vr', telescope.lsp_references, opts)
    vim.keymap.set('n', '<leader>vi', telescope.lsp_implementations, opts)
    vim.keymap.set('n', '<leader>vt', telescope.lsp_type_definitions, opts)
    vim.keymap.set('n', '<leader>ds', telescope.lsp_document_symbols, opts)
    vim.keymap.set('n', '<leader>ws', telescope.lsp_dynamic_workspace_symbols, opts)

    vim.keymap.set('n', 'gD', function() vim.lsp.buf.declarations() end, opts)
    vim.keymap.set({'i','n'}, '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    vim.lsp.buf.format({ async = true })
  end,
})
