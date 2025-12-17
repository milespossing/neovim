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
    config = function(_, opts)
      if opts.adapters then
        local adapters = {}
        for name, config in pairs(opts.adapters) do
          local adapter = require(name)
          if type(config) == 'table' and not vim.tbl_isempty(config) then
            if adapter.setup then
              adapter.setup(config)
            elseif adapter.adapter then
              adapter.adapter(config)
              adapter = adapter.adapter
            end
          end
          adapters[#adapters + 1] = adapter
        end
        opts.adapters = adapters
      end
      require('neotest').setup(opts)
    end,
    keys = {
      { '<leader>ts', '<CMD>Neotest summary<CR>', desc = 'Test Summary' },
      { '<leader>tr', '<CMD>Neotest run<CR>', desc = 'Run Test' },
      { '<leader>td', '<CMD>Neotest debug<CR>', desc = 'Debug Test' },
      { '<leader>to', '<CMD>Neotest output<CR>', desc = 'Test Output' },
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
