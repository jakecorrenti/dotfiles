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
opt.signcolumn = "yes"

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- tokyonight
g.tokyonight_style = "night"
g.tokyonight_style = "night"
g.tokyonight_italic_comments = true
g.tokyonight_italic_keywords = true
g.tokyonight_colors = { fg_gutter = "#565f89", gitSigns = { add = "#9ece6a", change = "#e0af68", delete = "#f7768e" } }

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = "hard"
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = "bg0"
g.gruvbox_transparent_bg = 0

g.gruvbox_flat_style = "hard"
g.gruvbox_transparent = true

g.material_style = "deep ocean" -- also "darker" which i like
