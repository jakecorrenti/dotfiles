local g = vim.g
local o = vim.o

g.mapleader = " "
o.shortmess = vim.o.shortmess .. "c"

o.completeopt = "menu,menuone,noselect"
o.pumblend = 15
o.scrolloff = 4
o.laststatus = 3
o.showcmd = true
o.incsearch = true
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.smartcase = true
o.ignorecase = true
o.smartindent = true
o.updatetime = 50
o.hlsearch = true
o.termguicolors = true
o.expandtab = true
o.showmode = true
o.number = true
o.relativenumber = true
o.wrap = true
o.signcolumn = "yes"
o.colorcolumn = "80"
o.background = "dark"
o.cursorline = false

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
    { w = "~/.config/i3/config" },
    { a = "~/.config/alacritty/alacritty.yml" },
}

g.nord_italic_comments = 1
