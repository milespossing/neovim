return {
  {
    'saghen/blink.cmp',
    version = '*',
    event = 'InsertEnter',
    opts = {
      keymap = { preset = 'default' },
      fuzzy = { implementation = 'prefer_rust_with_warning' },
      completion = { documentation = { auto_show = false } },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    dependencies = {
      {
        'saghen/blink.compat',
        optional = true,
      },
    },
    specs = {
      'catppuccin',
      optional = true,
      opts = {
        integrations = { blink_cmp = true },
      },
    },
  },
}
