require("options")
require("commands")
-- require 'colorbuddy_config'
require("gitsigns").setup()
require("compe_config")
require("plugins")
require("keymaps")
require("treesitter")
require("lsp")
require("statusline")
require("telescope_setup")
require("execs")
require("trouble").setup {use_lsp_diagnostic_signs = true}
