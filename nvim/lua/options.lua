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

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- startify bookmarks
g.startify_bookmarks = {
  { a = "~/.config/alacritty/alacritty.yml" },
  { b = "~/.config/spacebar/spacebarrc" },
  { k = "~/.config/kitty/kitty.conf" },
  { m = "~/qmk_firmware/keyboards/lily58/keymaps/jakecorrenti/keymap.c" },
  { n = "~/.config/nvim/init.lua" },
  { s = "~/.config/yabai/skhdrc" },
  { t = "~/.tmux.conf" },
  { y = "~/.config/yabai/yabairc" },
  { z = "~/.zshrc" },
}

-- NeoSolarized theme
g.neosolarized_contrast = "normal" -- or "normal"
g.neosolarized_visibility = "normal"
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_bold = 1
g.neosolarized_underline = 0
g.neosolarized_italic = 1
g.neosolarized_termtrans = 0

-- tokyo night config
g.tokyonight_style = "storm"
g.tokyonight_italic_comments = true
g.tokyonight_italic_keywords = true
g.tokyonight_colors = { fg_gutter = "#565f89", gitSigns = { add = "#9ece6a", change = "#e0af68", delete = "#f7768e" } }

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = "hard"
g.gruvbox_contrast_light = "soft"
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = "bg0"
g.gruvbox_transparent_bg = 0
