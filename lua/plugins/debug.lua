return {
  {
    'mfussenegger/nvim-dap',
    enabled = require('nixCatsUtils').enableForCategory 'full',
    dependencies = {
      'rcarriga/nvim-dap-ui',
      -- virtual text for the debugger
      {
        'theHamsta/nvim-dap-virtual-text',
        opts = {},
      },
    },
    keys = function()
      return {
        { '<leader>db', require('dap').toggle_breakpoint, { desc = 'Toggle Breakpoint' } },
      }
    end,
  },
  {
    'rcarriga/nvim-dap-ui',
    optional = true,
    dependencies = { 'nvim-neotest/nvim-nio' },
    opts = {},
    -- stylua: ignore
    keys = {
      { "<leader>du", function() require("dapui").toggle({ }) end, desc = "Dap UI" },
      { "<leader>de", function() require("dapui").eval() end, desc = "Eval", mode = {"n", "v"} },
    },
  },
}
