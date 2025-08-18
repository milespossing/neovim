vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('lsp-keymaps', { clear = true }),
  callback = function(args)
    local opts = { buffer = args.buf, silent = true }
    local map = function(mode, lhs, rhs, desc)
      vim.keymap.set(mode, lhs, rhs, vim.tbl_extend('force', opts, { desc = desc }))
    end
    map({ 'n', 'v' }, 'gd', Snacks.picker.lsp_definitions, 'Lsp Definitions')
    map({ 'n', 'v' }, 'gD', Snacks.picker.lsp_declarations, 'Lsp Definitions')
    map('n', 'grr', Snacks.picker.lsp_references, 'Lsp References')
    map('n', '<leader>ss', Snacks.picker.lsp_symbols, 'Lsp Symbols')
    map('n', '<leader>sS', Snacks.picker.lsp_workspace_symbols, 'Lsp Workspace Symbols')
  end,
})
