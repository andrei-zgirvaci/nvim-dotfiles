return {
  'nvim-mini/mini.files',
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
      permanent_delete = false,
      use_as_default_explorer = false,
    },
    windows = {
      preview = true
    }
  },
  keys = {
    { mode = { 'n' }, '<leader><leader>', function() require('mini.files').open(vim.api.nvim_buf_get_name(0)) end },
  }
}
