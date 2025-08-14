return {
  {
    'Olical/conjure',
    ft = { 'clojure' },
    lazy = true,
    dependencies = {
      'PaterJason/cmp-conjure',
      lazy = true,
    },
  },
  {
    'saghen/blink.cmp',
    opts = {
      sources = {
        per_filetype = {
          clojure = {
            'conjure',
          },
        },
        providers = {
          conjure = {
            name = 'conjure',
            module = 'blink.compat.source',
          },
        },
      },
    },
  },
}
