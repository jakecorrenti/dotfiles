local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

g.mapleader = ' '

-- tokyonight.nvim config
g.tokyonight_style = "night" -- or could be storm
g.tokyo_night_italic_functions = true

-- gruvbox.nvim config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_enable_bold = 0
g.gruvbox_enable_italic = 1
g.gruvbox_sign_column = 'bg0'

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = 'left'
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

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
