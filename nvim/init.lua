local vim = vim
local o   = vim.o
local wo  = vim.wo

vim.g.mapleader = ' '

o.syntax        = 'true'
o.showcmd       = true
o.incsearch     = true
o.expandtab     = true
o.tabstop       = 4
o.shiftwidth    = 4
o.smartcase     = true
o.ignorecase    = true
o.smartindent   = true
o.updatetime    = 50
o.hlsearch      = false
o.termguicolors = true
o.softtabstop   = 4
o.expandtab     = true

wo.number         = true
wo.relativenumber = true
wo.signcolumn     = 'yes'
wo.wrap           = true

require'colorbuddy'.colorscheme'gruvbuddy'
require'gitsigns'.setup()

require'plugins'
require'keymaps'
require'compe_config'
require'lsp'
require'treesitter'
