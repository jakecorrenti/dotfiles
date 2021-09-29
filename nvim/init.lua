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
require "statusline"

require("gitsigns").setup {
  numhl = true,
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
    delay = 1000,
  },
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
