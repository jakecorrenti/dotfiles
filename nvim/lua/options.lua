local opt = vim.opt
local g = vim.g
local o = vim.o

g.mapleader = " "
o.shortmess = vim.o.shortmess .. "c"

opt.completeopt = "menu,menuone,noselect"
opt.pumblend = 15
opt.scrolloff = 4
opt.laststatus = 1
opt.showcmd = true
opt.incsearch = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartcase = true
opt.ignorecase = true
opt.smartindent = true
opt.updatetime = 50
opt.hlsearch = true
opt.termguicolors = true
opt.expandtab = true
opt.showmode = false
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.signcolumn = "no"

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1
