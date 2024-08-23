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

    require('mini.indentscope').setup({
      draw = {
        animation = function()
          return 0
        end
      }
    })

    require('mini.git').setup()
    vim.keymap.set('n', '<Leader>gl', function()
      MiniGit.show_at_cursor()
    end)

    require('mini.diff').setup({
      view = {
        style = 'number',
      }
    })
    vim.keymap.set('n', '<leader>gd', function()
      MiniDiff.toggle_overlay()
    end)
    vim.keymap.set('n', '<leader>gy', function()
      return MiniDiff.operator('yank') .. 'gh'
    end)

    local statusline = require('mini.statusline')
    statusline.setup()
    statusline.section_location = function()
      return '%l:%v %p%%'
    end
  end,
}
