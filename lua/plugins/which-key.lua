return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').add {
        { '<leader>w', group = 'Window' },
        { '<leader>wh', '<C-w>h', desc = 'Switch to left window' },
        { '<leader>wj', '<C-w>j', desc = 'Switch to below window' },
        { '<leader>wk', '<C-w>k', desc = 'Switch to above window' },
        { '<leader>wl', '<C-w>l', desc = 'Switch to right window' },
      }
    end,
  },
}
