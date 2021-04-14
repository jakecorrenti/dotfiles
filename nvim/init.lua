local vim = vim
local o   = vim.o
local wo  = vim.wo

vim.g.mapleader = ' '

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
o.laststatus    = 0

wo.number         = true
wo.relativenumber = true
wo.wrap           = true

require'plugins'
require'keymaps'
require'lsp'
require'treesitter'
