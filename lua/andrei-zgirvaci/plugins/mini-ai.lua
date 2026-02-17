return {
  'nvim-mini/mini.ai',
  version = '*',
  event = 'VeryLazy',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  opts = function()
    local spec_treesitter = require('mini.ai').gen_spec.treesitter

    return {
      custom_textobjects = {
        F = spec_treesitter({ a = '@function.outer', i = '@function.inner' }),
      }
    }
  end
}
