return {
  {
    'williamboman/mason.nvim',
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
    keys = function()
      local conform = require('conform')

      return {
        { mode = { 'n' }, '=', function() conform.format({ lsp_fallback = true }) end },
      }
    end
  },
  {
    'neovim/nvim-lspconfig',
    version = '*',
    lazy = false,
    dependencies = {
      'hrsh7th/cmp-nvim-lsp'
    },
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
      )

      vim.diagnostic.config({
        -- virtual_text = false,
        -- severity_sort = true,
        -- signs = false,
        float = {
          -- border = "rounded",
          header = "",
          prefix = "",
        },
      })

      vim.lsp.config('*', {
        capabilities = capabilities,
      })

      vim.lsp.config('sourcekit', {
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
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
        group = vim.api.nvim_create_augroup('lsp-attach', {}),
        callback = function(event)
          local opts = { buffer = event.buf }

          local telescope = require('telescope.builtin')

          vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
          vim.keymap.set('n', '[d', function() vim.diagnostic.goto_prev() end, opts)
          vim.keymap.set('n', ']d', function() vim.diagnostic.goto_next() end, opts)

          vim.keymap.set('n', 'gd', telescope.lsp_definitions, opts)
          vim.keymap.set('n', '<leader>vr', telescope.lsp_references, opts)
          vim.keymap.set('n', '<leader>vi', telescope.lsp_implementations, opts)
          vim.keymap.set('n', '<leader>vt', telescope.lsp_type_definitions, opts)
          vim.keymap.set('n', '<leader>ds', telescope.lsp_document_symbols, opts)
          vim.keymap.set('n', '<leader>ws', telescope.lsp_dynamic_workspace_symbols, opts)

          vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
          vim.keymap.set({ 'i', 'n' }, '<leader>xh', function() vim.lsp.buf.signature_help() end, opts)
          vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
          vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
        end,
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    version = '*',
    dependencies = {
      'neovim/nvim-lspconfig'
    },
    opts = {
      ensure_installed = {
        'lua_ls',
        'ts_ls',
        'eslint',
        'zls',
      },
      automatic_enable = true,
    }
  },
  {
    "folke/trouble.nvim",
    version = '*',
    opts = {},
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
    },
  }
}
