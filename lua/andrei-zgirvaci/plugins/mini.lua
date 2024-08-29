return {
  'echasnovski/mini.nvim',
  version = '*',
  event = 'VeryLazy',
  keys = function()
    local mini_files = require('mini.files')

    return {
      { '<leader><leader>', mode = { 'n' }, function() mini_files.open(vim.api.nvim_buf_get_name(0)) end },
    }
  end,
  config = function()
    require('mini.files').setup({
      mappings = {
        synchronize = '<CR>'
      },
      options = {
        permanent_delete = false
      },
      windows = {
        preview = true
      }
    })

    local spec_treesitter = require('mini.ai').gen_spec.treesitter
    require('mini.ai').setup({
      custom_textobjects = {
        F = spec_treesitter({ a = '@function.outer', i = '@function.inner' }),
      }
    })

    require('mini.operators').setup()
    require('mini.pairs').setup()
  end,
}
