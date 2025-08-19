return {
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    version = false,
    opts = {
      provider = 'openai',
      providers = {
        openai = {
          endpoint = 'https://api.openai.com/v1',
          model = 'o3-mini',
          api_key_name = 'cmd:bat $AVANTE_OPENAI_PATH',
        },
        ['openai-5-mini'] = {
          __inherited_from = 'openai',
          endpoint = 'https://api.openai.com/v1',
          model = 'gpt-5-mini',
          extra_request_body = {
            temperature = 1,
          },
        },
      },
    },
  },
  {
    'saghen/blink.cmp',
    dependencies = {
      'Kaiser-Yang/blink-cmp-avante',
    },
    opts = {
      sources = {
        default = { 'avante' },
        providers = {
          avante = {
            module = 'blink-cmp-avante',
            name = 'Avante',
          },
        },
      },
    },
  },
}
