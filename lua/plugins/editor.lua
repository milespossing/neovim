return {
  {
    'numToStr/comment.nvim',
    event = 'VeryLazy', -- TODO: Probably want this to be even lazier
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
  },
  {
    'folke/snacks.nvim',
    enabled = require('nixCatsUtils').enableForCategory('editor'),
    opts = {
      explorer = { enable = true },
    },
    keys = {
      {
        '<leader>e',
        function()
          Snacks.explorer.open()
        end,
        desc = 'File Explorer',
      },
    },
  },
  {
    'folke/snacks.nvim',
    enabled = require('nixCatsUtils').enableForCategory('editor'),
    opts = {
      picker = { enable = true },
    },
    keys = {
      {
        '<leader>,',
        function()
          Snacks.picker.buffers()
        end,
        desc = 'Switch buffers',
      },
      {
        '<leader>ff',
        function()
          Snacks.picker.files()
        end,
        desc = 'Find files',
      },
      {
        '<leader>fr',
        function()
          Snacks.picker.recent()
        end,
        desc = 'Recent files',
      },
      {
        '<leader>/',
        function()
          Snacks.picker.grep()
        end,
        desc = 'Grep search',
      },
      {
        '<leader> ',
        function()
          Snacks.picker.smart()
        end,
        desc = 'Smart find',
      },
      {
        '<leader>hk',
        function()
          Snacks.picker.keymaps()
        end,
        desc = 'Keymaps',
      },
    },
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    opts = {
      keymaps = {
        insert = '<C-g>s',
        normal = 'gs',
        normal_cur = 'gss',
        normal_line = 'gsS',
        normal_cur_line = 'gSS',
        visual = 'gsa',
        visual_line = 'gsA',
        delete = 'gsd',
        change = 'gsr',
        change_line = 'gsR',
      },
    },
  },
  {
    'akinsho/bufferline.nvim',
    enabled = require('nixCatsUtils').enableForCategory('editor'),
    event = 'VeryLazy',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    opts = {
      options = {
        always_show_bufferline = false,
        -- stylua: ignore
        close_command = function(n) Snacks.bufdelete(n) end,
        -- stylua: ignore
        right_mouse_command = function(n) Snacks.bufdelete(n) end,
        diagnostics = 'nvim_lsp',
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = ' '
          for e, n in pairs(diagnostics_dict) do
            local sym = e == 'error' and ' ' or (e == 'warning' and ' ' or ' ')
            s = s .. n .. sym
          end
          return s
        end,
      },
    },
    keys = {
      { '[b', '<cmd>BufferLineCyclePrev<cr>', desc = 'Prev Buffer' },
      { ']b', '<cmd>BufferLineCycleNext<cr>', desc = 'Next Buffer' },
      { '<leader>bp', '<cmd>BufferLineTogglePin<cr>', desc = 'Toggle Pin' },
      { '<leader>br', '<cmd>BufferLineCloseRight<cr>', desc = 'Close buffers right' },
      { '<leader>br', '<cmd>BufferLineCloseLeft<cr>', desc = 'Close buffers left' },
      { '<leader>bX', '<cmd>BufferLineCloseOthers<cr>', desc = 'Close others' },
    },
  },
  {
    'MagicDuck/grug-far.nvim',
    enabled = require('nixCatsUtils').enableForCategory('editor'),
    opts = {},
    keys = {
      { '<leader>sr', '<cmd>GrugFar<cr>' },
    },
  },
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    opts = {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    },
  },
  {
    'folke/trouble.nvim',
    enabled = require('nixCatsUtils').enableForCategory('full'),
    cmd = { 'Trouble' },
    opts = {
      modes = {
        lsp = {
          win = { position = 'right' },
        },
      },
    },
    keys = {
      { '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', desc = 'Diagnostics (Trouble)' },
    },
    specs = {
      'folke/snacks.nvim',
      opts = function(_, opts)
        return vim.tbl_deep_extend('force', opts or {}, {
          picker = {
            actions = require('trouble.sources.snacks').actions,
            win = {
              input = {
                keys = {
                  ['<c-t>'] = {
                    'trouble_open',
                    mode = { 'n', 'i' },
                  },
                },
              },
            },
          },
        })
      end,
    },
  },
}
