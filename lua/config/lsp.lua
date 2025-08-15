local capabilities = vim.lsp.protocol.make_client_capabilities()

local capabilities_final = require('blink.cmp').get_lsp_capabilities(capabilities)

vim.lsp.config('*', {
  capabilities = capabilities_final,
  root_markers = { '.git' },
})

vim.lsp.config('ts_ls', {
  filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json' },
})
vim.lsp.config('luals', {
  filetypes = { 'lua' },
  root_markers = { 'stylua.toml', '.luarc.jsonc', '.git' },
})

vim.lsp.enable { 'ts_ls', 'luals' }
