return {
  {
    'folke/snacks.nvim',
    enabled = require('nixCatsUtils').enableForCategory 'editor',
    opts = {
      terminal = { enable = true },
    },
    keys = {
      {
        '<C-t>',
        function()
          Snacks.terminal.toggle()
        end,
      },
    },
  },
}
