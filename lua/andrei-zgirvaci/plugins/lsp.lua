return {
  {
    'williamboman/mason.nvim',
    version = '*',
    cmd = 'Mason',
    build = ':MasonUpdate',
    opts = {}
  },
  {
    'neovim/nvim-lspconfig',
    version = '*',
    lazy = true,
    config = function()
      local lspconfig = require("lspconfig")

      vim.diagnostic.config({
        virtual_text = false,
        severity_sort = true,
        signs = false,
        float = {
          border = "rounded",
          header = "",
          prefix = "",
        },
      })

      -- Swift
      lspconfig.sourcekit.setup {
        capabilities = {
          workspace = {
            didChangeWatchedFiles = {
              dynamicRegistration = true,
            },
          },
        },
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('lsp-attach', {}),
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
          vim.keymap.set({ 'i', 'n' }, '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
          vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
          vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
        end,
      })

      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup('lsp-format-on-save', {}),
        pattern = "*",
        callback = function()
          vim.lsp.buf.format({ async = true })
        end,
      })
    end
  },
  {
    'williamboman/mason-lspconfig.nvim',
    version = '*',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp'
    },
    opts = function()
      local lspconfig = require("lspconfig")

      local capabilities = vim.tbl_deep_extend(
        'force',
        vim.lsp.protocol.make_client_capabilities(),
        require('cmp_nvim_lsp').default_capabilities()
      )

      return {
        ensure_installed = {
          'lua_ls',
          'ts_ls',
          'eslint',
        },
        handlers = {
          function(server_name)
            lspconfig[server_name].setup({
              capabilities = capabilities
            })
          end,
        }
      }
    end
  },
  {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    version = '*',
    opts = {}
  }
}
