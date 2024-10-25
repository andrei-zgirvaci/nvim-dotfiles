return {
  'williamboman/mason-lspconfig.nvim',
  version = '*',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp'
  },
  opts = function()
    local capabilities = vim.tbl_deep_extend(
      'force',
      vim.lsp.protocol.make_client_capabilities(),
      require('cmp_nvim_lsp').default_capabilities()
    )

    return {
      ensure_installed = {
        'ts_ls',
        'eslint'
      },
      handlers = {
        function(server_name)
          require('lspconfig')[server_name].setup({
            capabilities = capabilities
          })
        end,
      }
    }
  end
}
