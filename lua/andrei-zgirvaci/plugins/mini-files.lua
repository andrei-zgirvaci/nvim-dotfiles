return {
  'echasnovski/mini.files',
  version = '*',
  opts =
  {
    content = {
      filter = function(fs_entry)
        return fs_entry.name ~= '.DS_Store'
      end,
    },
    mappings = {
      go_in_plus  = '<CR>',
    },
    options = {
      permanent_delete = false
    },
    windows = {
      preview = true
    }
  },
  keys = function()
    local mini_files = require('mini.files')

    return {
      { mode = { 'n' }, '<leader><leader>', function() mini_files.open(vim.api.nvim_buf_get_name(0)) end },
    }
  end
}
