return {
  {
    'nvim-neotest/neotest',
    enabled = require('nixCatsUtils').enableForCategory 'test',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
  {
    'nvim-neotest/neotest',
    optional = true,
    dependencies = {
      'marilari88/neotest-vitest',
    },
    opts = {
      adapters = {
        ['neotest-vitest'] = {},
      },
    },
  },
}
