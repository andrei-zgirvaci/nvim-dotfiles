return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    indent = {},
    picker = {
      win = {
        input = {
          keys = {
            -- Alt-r doesn't work on Mac; use Ctrl-r to toggle regex.
            ["<c-r>"] = { "toggle_regex", mode = { "n", "i" } },
          },
        },
      },
    },
  },
  keys = {
    { mode = { 'n' }, '<leader>ff', function() Snacks.picker.files() end, },
    { mode = { 'n' }, '<leader>fb', function() Snacks.picker.buffers() end, },
    { mode = { 'n' }, '<leader>fs', function() Snacks.picker.grep() end, },
    { mode = { 'n' }, '<leader>fw', function() Snacks.picker.grep_word() end, },
    { mode = { 'n' }, '<leader>fr', function() Snacks.picker.resume() end, },
    { mode = { 'n' }, '<leader>fc', function() Snacks.picker.git_log_file() end, },
    { mode = { 'n' }, '<leader>fh', function() Snacks.picker.help() end, },
    { mode = { 'n' }, '<leader>/',  function() Snacks.picker.lines() end, },

    -- Shortcut for searching Neovim configuration files.
    { mode = { 'n' }, '<leader>fV', function() Snacks.picker.files({ cwd = vim.fn.stdpath('config') }) end },

    -- Shortcut for searching Dot files.
    { mode = { 'n' }, '<leader>fD', function() Snacks.picker.files({ cwd = vim.fn.expand('~/Developer/dotfiles') }) end },

    -- Shortcut for searching Fish configuration files.
    { mode = { 'n' }, '<leader>fC', function() Snacks.picker.files({ cwd = vim.fn.expand('~/.config') }) end }
  },
}
