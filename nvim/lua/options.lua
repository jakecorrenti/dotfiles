local opt = vim.opt

vim.g.mapleader = " "
vim.o.shortmess = vim.o.shortmess .. "c"

opt.scrolloff = 4
opt.laststatus = 1
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
opt.wrap = true
opt.colorcolumn = "80"

vim.g.neosolarized_contrast = "low"
vim.g.neosolarized_visibilit = "low"
vim.g.neosolarized_vertSplitBgTrans = 1
vim.g.neosolarized_bol = 0
vim.g.neosolarized_italic = 1

vim.g.monokaipro_filter = "ristretto"
vim.g.monokaipro_hide_inactive_statusline = true
