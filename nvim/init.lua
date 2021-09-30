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

require "galaxyconf"

require("gitsigns").setup {
  numhl = true,
}

require("trouble").setup {
  use_lsp_diagnostic_signs = true,
}

require("formatter").setup {
  filetype = {
    lua = {
      function()
        return {
          exe = "stylua",
          args = {
            "--config-path " .. "~/.config/nvim/stylua.toml",
            "-",
          },
          stdin = true,
        }
      end,
    },
  },
}
