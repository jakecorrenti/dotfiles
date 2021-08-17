require "options"
require "commands"
-- require "compe_config"
require "plugins"
require "keymaps"
require "treesitter"
require "lsp"
require "telescope_setup"
require "execs"
require "lspkind_config"
require"trouble".setup {use_lsp_diagnostic_signs = true}
require'lualine'.setup {
  options = { theme = "solarized" }
}
-- require'gitsigns'.setup{
--   numhl = true,
-- }
