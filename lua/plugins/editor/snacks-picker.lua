return {
  'folke/snacks.nvim',
  opts = {
    picker = {},
  },
  keys = {
    {
      '<leader>,',
      function()
        Snacks.picker.buffers()
      end,
      desc = "Switch buffers",
    },
    {
      '<leader>ff',
      function()
        Snacks.picker.files()
      end,
      desc = "Find files",
    },
    {
      '<leader>fr',
      function()
        Snacks.picker.recent()
      end,
      desc = "Recent files",
    },
    {
      '<leader>/',
      function()
        Snacks.picker.grep()
      end,
      desc = "Grep search",
    },
    {
      '<leader> ',
      function()
        Snacks.picker.smart()
      end,
      desc = "Smart find",
    },
  },
}
