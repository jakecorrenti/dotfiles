local vim = vim
local g = vim.g
local opt = vim.opt

-- defaults
g.mapleader = " "
opt.laststatus = 2
opt.pumblend = 15
opt.showcmd = true
opt.incsearch = true
opt.expandtab = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.smartcase = true
opt.ignorecase = true
opt.smartindent = true
opt.updatetime = 50
opt.hlsearch = true
opt.termguicolors = true
opt.expandtab = true
opt.completeopt = "menu,menuone,noselect"
vim.o.shortmess = vim.o.shortmess .. "c"
opt.showmode = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "no"
opt.wrap = true
opt.autochdir = true
opt.background = "light"

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1
