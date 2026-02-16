return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  event = 'VeryLazy',
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
      path_display = { "truncate" },
      file_ignore_patterns = {
        'lazy%-lock%.json',
        "%.jpg",
        "%.png",
        "%.webp",
        '%.git/',
        '%.lock',
        'yarn%-.+%.cjs'
      },
      -- vimgrep_arguments = {
      --   -- "rg",
      --   -- "--files-with-matches", -- Only show file paths
      --   -- "--no-heading",
      --   -- "--hidden",
      --   -- "--follow"
      -- }
    },
    pickers = {
      find_files = {
        -- hidden = true,
      },
      live_grep = {
        -- additional_args = { '--hidden' }
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
  keys = function()
    local builtin = require('telescope.builtin')

    return {
      { mode = { 'n' }, '<leader>fb', builtin.buffers },
      { mode = { 'n' }, '<leader>ff', builtin.find_files },
      { mode = { 'n' }, '<leader>fr', builtin.resume },
      { mode = { 'n' }, '<leader>fs', builtin.live_grep },
      { mode = { 'n' }, '<leader>fw', builtin.grep_string },
      { mode = { 'n' }, '<leader>fc', builtin.git_bcommits },
      { mode = { 'n' }, '<leader>fh', builtin.help_tags },
      { mode = { 'n' }, '<leader>fk', builtin.keymaps },
      { mode = { 'n' }, '<leader>/',  builtin.current_buffer_fuzzy_find },

      -- Shortcut for searching Neovim configuration files
      { mode = { 'n' }, '<leader>fv', function() builtin.find_files({ cwd = vim.fn.stdpath 'config' }) end }
    }
  end
}
