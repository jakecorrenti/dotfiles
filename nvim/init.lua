require "options"
require "commands"
require "plugins"
require "compe_config"
require "keymaps"
require "treesitter"
require "lsp"
require "telescope_setup"
require "execs"
require "lspkind_config"
require "lualine".setup {
  options = {
    theme = 'dracula'
  }
}
require "gitsigns".setup{}
