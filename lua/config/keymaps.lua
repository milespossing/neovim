-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- code
vim.keymap.set('n', '<leader>cl', Snacks.picker.lsp_config, { desc = 'LSP Config' })

-- Windows
vim.keymap.set('n', '<leader>wh', '<C-w>h', { desc = 'Move Window Left' })
vim.keymap.set('n', '<leader>wj', '<C-w>j', { desc = 'Move Window Down' })
vim.keymap.set('n', '<leader>wk', '<C-w>k', { desc = 'Move Window Up' })
vim.keymap.set('n', '<leader>wl', '<C-w>l', { desc = 'Move Window Right' })
vim.keymap.set('n', '<leader>w-', '<cmd>split<cr>', { desc = 'Split Horizontal' })
vim.keymap.set('n', '<leader>w\\', '<cmd>vsplit<cr>', { desc = 'Split Vertial' })

-- Help
vim.keymap.set('n', '<leader>hh', Snacks.picker.help, { desc = 'Help tags' })
vim.keymap.set('n', '<leader>hc', Snacks.picker.commands, { desc = 'Commands' })
vim.keymap.set('n', '<leader>ha', Snacks.picker.autocmds, { desc = 'Autocommands' })
vim.keymap.set('n', '<leader>hk', Snacks.picker.keymaps, { desc = 'Keymaps' })
vim.keymap.set('n', '<leader>uc', Snacks.picker.colorschemes, { desc = 'Colorscheme' })

-- Git
vim.keymap.set('n', '<leader>gf', Snacks.picker.git_files, { desc = 'Git Files' })
vim.keymap.set('n', '<leader>gl', Snacks.picker.git_log_file, { desc = 'Log File' })

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

-- Search

vim.keymap.set('n', '<leader>s:', Snacks.picker.command_history, { desc = 'Command History' })
vim.keymap.set('n', '<leader>sj', Snacks.picker.jumps, { desc = 'Jumps' })
vim.keymap.set('n', '<leader>s"', Snacks.picker.registers, { desc = 'Registers' })
vim.keymap.set('n', '<leader>sm', Snacks.picker.marks, { desc = 'Marks' })
vim.keymap.set('n', '<leader>sr', require('grug-far').open, { desc = 'Find and Replace' })
vim.keymap.set('n', '<leader>sR', Snacks.picker.resume, { desc = 'Resume' })
