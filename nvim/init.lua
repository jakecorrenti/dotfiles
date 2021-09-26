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
require 'lualine'.setup {
  options = {
    theme = "nightfox",
  }
}

require "trouble".setup {
  use_lsp_diagnostic_signs = true
}
require 'gitsigns'.setup {
  numhl = false
}

local nightfox = require'nightfox'

nightfox.setup({
  fox = "nordfox",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = "italic",
    functions = "italic",
    keywords = "italic",
    strings = "italic",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = true,
    search = false,
  },
})

nightfox.load()
