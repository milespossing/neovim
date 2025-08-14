vim.lsp.config['ts_ls'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
  root_markers = { 'tsconfig.json', 'jsconfig.json', 'package.json', '.git' },
  settings = {
    typescript = {
      tsserver = {
        useSyntaxServer = false,
      },
    },
    javascript = {},
  },
}

vim.lsp.enable { 'ts_ls' }
