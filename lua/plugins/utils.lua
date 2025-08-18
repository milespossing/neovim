return {
  {
    'folke/snacks.nvim',
    lazy = false,
    opts = {
      animate = {},
      bigfile = {},
      buffdelete = {},
      dim = {},
      indent = {},
      input = {},
      notifier = {},
      quickfile = {},
      scope = {},
      scratch = {},
      scroll = {},
      statuscolumn = {},
      words = {},
      toggle = {},
      win = {},
      zen = {},
    },
  },
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },
  {
    'Olical/conjure',
    ft = { 'clojure' },
    lazy = true,
    dependencies = {
      'PaterJason/cmp-conjure',
      lazy = true,
    },
  },
  {
    'saghen/blink.cmp',
    opts = {
      sources = {
        per_filetype = {
          clojure = {
            'conjure',
          },
        },
        providers = {
          conjure = {
            name = 'conjure',
            module = 'blink.compat.source',
          },
        },
      },
    },
  },
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    keys = {
      -- default keymap
      { '-', '<cmd>Oil<CR>' },
    },
  },
  {
    'mistweaverco/kulala.nvim',
    keys = {
      { '<leader>tr', desc = 'Open http scratchpad' },
    },
    ft = { 'http', 'rest' },
    opts = {
      global_keymaps = false,
      global_keymaps_prefix = '<leader>R',
      kulala_keymaps_prefix = '',
    },
  },
}
