local picker = require('snacks').picker

-- Windows
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Move Window Left' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Move Window Down' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Move Window Up' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Move Window Right' })

-- Help
vim.keymap.set('n', '<leader>uc', function()
  picker.colorschemes()
end, { desc = 'Colorscheme' })

-- Folds

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
