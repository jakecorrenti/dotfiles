local vim = vim
local opt = vim.opt

vim.g.mapleader = " "
vim.o.shortmess = vim.o.shortmess .. "c"

opt.laststatus = 2
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
opt.showmode = true
opt.number = true
opt.relativenumber = true
opt.signcolumn = "no"
opt.wrap = true
opt.colorcolumn = "80"
opt.background = "dark"
