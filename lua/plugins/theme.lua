return require('nixCatsUtils').enableForCategory 'editor'
    and {
      {
        'catppuccin/nvim',
        name = 'catppuccin-nvim',
        priority = 1000, -- Make sure to load this before all the other start plugins.
        init = function()
          vim.cmd.colorscheme 'catppuccin-macchiato'
        end,
      },
      {
        'akinsho/bufferline.nvim',
        optional = true,
        opts = function(_, opts)
          -- if (vim.g.colors_name or ''):find 'catppuccin' then
          --   opts.highlights = require('catppuccin.groups.integrations.bufferline').get()
          -- end
        end,
      },
      {
        'rose-pine/neovim',
        name = 'rose-pine',
      },
      {
        'folke/tokyonight.nvim',
      },
    }
  or {}
