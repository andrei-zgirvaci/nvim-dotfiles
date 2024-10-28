return {
  'hrsh7th/nvim-cmp',
  branch = 'main',
  event = 'InsertEnter',
  opts = function()
    local cmp = require('cmp')

    return {
      preselect = 'item',
      completion = {
        completeopt = 'menu,menuone,noinsert'
      },
      sources = {
        { name = 'nvim_lsp' }
      },
      window = {
        completion = {
          -- border = "rounded",
        },
        documentation = {
          -- border = "rounded",
        }
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
      })
    }
  end
}
