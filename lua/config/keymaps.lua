-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Windows
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Move Window Left' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Move Window Down' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Move Window Up' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Move Window Right' })

-- Help
vim.keymap.set('n', '<leader>uc', function()
  Snacks.picker.colorschemes()
end, { desc = 'Colorscheme' })

-- Folds

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- Toggles
Snacks.toggle.line_number():map '<leader>ul'
Snacks.toggle.option('relativenumber', { name = 'Relative Number' }):map '<leader>uL'
Snacks.toggle.option('wrap', { name = 'Wrap' }):map '<leader>uw'
Snacks.toggle.option('background', { off = 'light', on = 'dark', name = 'Dark Background' }):map '<leader>ub'
Snacks.toggle.dim():map '<leader>uD'
Snacks.toggle.zen():map '<leader>uz'
Snacks.toggle.animate():map '<leader>ua'
