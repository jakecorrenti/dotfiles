local opt = vim.opt
local g = vim.g
local o = vim.o

g.mapleader = " "
o.shortmess = vim.o.shortmess .. "c"

opt.completeopt = "menu,menuone,noselect"
opt.pumblend = 15
opt.scrolloff = 4
opt.laststatus = 3
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
opt.signcolumn = "yes"
opt.colorcolumn = "80"

-- NeoSolarized theme
g.neosolarized_contrast = "normal" -- or "normal"
g.neosolarized_visibility = "normal"
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_bold = 1
g.neosolarized_underline = 0
g.neosolarized_italic = 1
g.neosolarized_termtrans = 0

-- startify bookmarks
g.startify_bookmarks = {
    { k = "~/.config/kitty/kitty.conf" },
    { n = "~/.config/nvim/init.lua" },
    { t = "~/.tmux.conf" },
    { z = "~/.zshrc" },
}

g.nord_italic_comments = 1
