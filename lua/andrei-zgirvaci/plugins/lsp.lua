return {
  {
    'mason-org/mason.nvim',
    version = '*',
    cmd = 'Mason',
    build = ':MasonUpdate',
    opts = {}
  },
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        swift = { 'swift_format' },
      },
      formatters = {
        swift_format = {
          command = 'swift',
          args = { 'format', '$FILENAME', '--in-place' },
        },
      },
    },
    keys = {
      { mode = { 'n' }, '=', function() require('conform').format({ lsp_fallback = true }) end },
    }
  },
  {
    'neovim/nvim-lspconfig',
    version = '*',
    lazy = false,
    config = function()
      vim.diagnostic.config({
        float = {
          header = "",
          prefix = "",
        },
      })

      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      })

      vim.lsp.enable('sourcekit')

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
          vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
          vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
          vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
          vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)

          vim.keymap.set('n', 'gd', function() require('fzf-lua').lsp_definitions() end, opts)
          vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
          vim.keymap.set('n', '<leader>vr', function() require('fzf-lua').lsp_references() end, opts)
          vim.keymap.set('n', '<leader>vi', function() require('fzf-lua').lsp_implementations() end, opts)
          vim.keymap.set('n', '<leader>vt', function() require('fzf-lua').lsp_typedefs() end, opts)
          vim.keymap.set('n', '<leader>ds', function() require('fzf-lua').lsp_document_symbols() end, opts)
          vim.keymap.set('n', '<leader>ws', function() require('fzf-lua').lsp_workspace_symbols() end, opts)
        end,
      })
    end
  },
  {
    'mason-org/mason-lspconfig.nvim',
    version = '*',
    dependencies = {
      'neovim/nvim-lspconfig'
    },
    opts = {
      ensure_installed = {
        'lua_ls',
        'bashls',
        'ts_ls',
        'eslint',
        'kotlin_lsp',
      },
      automatic_enable = true,
    }
  }
}
