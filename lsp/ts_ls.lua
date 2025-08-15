return {
  cmd = { 'typescript-language-server', '--stdio' },
  settings = {
    typescript = {
      tsserver = {
        useSyntaxServer = false,
      },
    },
    javascript = {},
  },
}
