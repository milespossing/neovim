require('nixCatsUtils').setup {
  non_nix_value = true,
}
require 'config.options'
require 'config.autocommands'
require 'config.lazy-plugins'
require 'config.lsp'
require 'config.keymaps'
