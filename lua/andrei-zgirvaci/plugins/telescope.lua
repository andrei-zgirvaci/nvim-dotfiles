return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
    },
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'
  },
  opts = {
    defaults = {
      path_display = { 'filename_first' },
      file_ignore_patterns = {
        'lazy%-lock%.json',
        "%.jpg",
        "%.png",
        "%.webp",
        "%.svg",
        "%.xml",
        '%.git/',
        '%.lock',
        'yarn%-.+%.cjs'
      },
    },
    pickers = {
      find_files = {
        -- hidden = true,
      },
      live_grep = {
        additional_args = { '--hidden', '--fixed-strings' }
      },
      grep_string = {
        -- additional_args = { '--hidden' }
      }
    }
  },
  config = function(_, opts)
    local telescope = require('telescope')

    telescope.setup(opts)

    vim.api.nvim_create_autocmd("User", {
      pattern = "TelescopePreviewerLoaded",
      callback = function()
        vim.wo.wrap = true
      end,
    })
  end,
  keys = {
    { mode = { 'n' }, '<leader>ff', function() require('telescope.builtin').find_files() end },
    { mode = { 'n' }, '<leader>fb', function() require('telescope.builtin').buffers() end },
    { mode = { 'n' }, '<leader>fs', function() require('telescope.builtin').live_grep() end },
    { mode = { 'n' }, '<leader>fw', function() require('telescope.builtin').grep_string() end },
    { mode = { 'n' }, '<leader>fr', function() require('telescope.builtin').resume() end },
    { mode = { 'n' }, '<leader>fc', function() require('telescope.builtin').git_bcommits() end },
    { mode = { 'n' }, '<leader>fh', function() require('telescope.builtin').help_tags() end },
    { mode = { 'n' }, '<leader>fk', function() require('telescope.builtin').keymaps() end },
    { mode = { 'n' }, '<leader>/',  function() require('telescope.builtin').current_buffer_fuzzy_find() end },

    -- Shortcut for searching Neovim configuration files
    { mode = { 'n' }, '<leader>fv', function() require('telescope.builtin').find_files({ cwd = vim.fn.stdpath('config') }) end }
  }
}
