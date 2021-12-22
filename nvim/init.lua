require "options"
require "keymaps"
require "plugins"
require "cmp_conf"
require "telescope_conf"
require "lspkind_conf"

local vim = vim

require 'onedarkpro'.load()

-- highlight the current yanked line
vim.api.nvim_exec(
  [[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]],
  false
)

-- lsp
require'lspconfig'.gopls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.rust_analyzer.setup{}

-- treesitter
local configs = require "nvim-treesitter.configs"
configs.setup { ensure_installed = "maintained", highlight = { enable = true } }

require('gitsigns').setup({
  current_line_blame = false,
})
