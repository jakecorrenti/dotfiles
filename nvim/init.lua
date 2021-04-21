local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

g.mapleader = ' '

vim.cmd [[
set shortmess+=c
set noshowmode
let g:startify_bookmarks = [{'N': '~/.config/nvim/init.lua'}, {'C': '~/course-work'}, {'T': '~/.tmux.conf'}, {'K': '~/.config/kitty/kitty.conf'}]
]]

o.showcmd = true
o.incsearch = true
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.smartcase = true
o.ignorecase = true
o.smartindent = true
o.updatetime = 50
o.hlsearch = false
o.termguicolors = true
o.expandtab = true
o.completeopt = "menuone,noselect"

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = true

require'colorbuddy'.colorscheme 'gruvbuddy'
require'gitsigns'.setup()

require 'compe_config'
require 'plugins'
require 'keymaps'
require 'treesitter'
require 'lsp'
require 'statusline'
