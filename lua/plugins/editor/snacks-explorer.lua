return {
  'folke/snacks.nvim',
  opts = {
    explorer = {},
  },
  keys = {
    {
      '<leader>e',
      function()
        Snacks.explorer.open()
      end,
    },
  },
}
