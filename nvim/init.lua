require "options"
require "commands"
require "plugins"
require "keymaps"
require "treesitter"
require "lsp"
require "telescope_setup"
require "execs"

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

require "diffview_conf"
