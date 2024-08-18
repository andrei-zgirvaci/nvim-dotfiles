return {
  'echasnovski/mini.nvim',
  version = false,
  config = function()
    require('mini.ai').setup()
    require('mini.surround').setup()
    require('mini.operators').setup()
    require('mini.pairs').setup()

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
    vim.keymap.set('n', '<leader><leader>', function()
      MiniFiles.open(vim.api.nvim_buf_get_name(0))
    end)
    
    require('mini.git').setup()
    require('mini.icons').setup()
    require('mini.diff').setup()

    local statusline = require 'mini.statusline'
    statusline.setup()
    statusline.section_location = function()
      return '%l:%v %p%%'
    end
  end,
}
