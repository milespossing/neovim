return {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VimEnter'
    opts_extend = { 'spec' },
    opts = {
      preset = 'helix',
      spec = {
        {
          mode = { 'n', 'v' },
          { '<leader>c', group = 'code' },
          { '[', group = 'prev' },
          { ']', group = 'next' },
          { '<leader>a', group = 'ai' },
          { '<leader>d', group = 'debug' },
          { '<leader>s', group = 'search' },
          { '<leader>f', group = 'file/find' },
          { '<leader>g', group = 'git' },
          { '<leader>h', group = 'help' },
          { '<leader>u', group = 'ui' },
          { '<leader>x', group = 'diagnostics' },
          {
            '<leader>w',
            group = 'window',
            expand = function()
              return require('which-key.extras').expand.win()
            end,
          },
          {
            '<leader>b',
            group = 'buffer',
            expand = function()
              return require('which-key.extras').expand.buf()
            end,
          },
        },
      },
    },
  },
}
