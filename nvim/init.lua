require "options"
require "commands"
require "compe_config"
require "plugins"
require "keymaps"
require "treesitter"
require "lsp"
require "telescope_setup"
require "execs"
require 'statusline'

require"gitsigns".setup()
require"trouble".setup {use_lsp_diagnostic_signs = true}
