return {
  {
    'saghen/blink.cmp',
    version = '*',
    event = 'InsertEnter',
    opts = {
      keymap = { preset = 'default' },
    },
    dependencies = {
      'saghen/blink.compat',
      lazy = true,
    },
  },
}
