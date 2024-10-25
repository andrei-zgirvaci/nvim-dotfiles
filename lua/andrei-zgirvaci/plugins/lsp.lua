return {
  'neovim/nvim-lspconfig',
  version = '*',
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
  end
}
