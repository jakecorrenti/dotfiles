local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

g.mapleader = ' '

vim.cmd('set laststatus=0')
vim.cmd('set background=light')

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = 'left'
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- sainnhe/everforest
g.everforest_background = 'soft'
g.everforest_enable_italic = 1
g.everforest_sign_column_background = 'none'
g.everforest_show_eob = 0
g.everforest_diagnostic_virtual_text = 'colored'

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
o.shortmess = o.shortmess .. 'c'
o.showmode = false

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = true
