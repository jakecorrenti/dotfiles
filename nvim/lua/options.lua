local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

g.mapleader = ' '

vim.cmd [[set laststatus=0]]

-- tokyonight.nvim config
g.tokyonight_style = "storm" -- or could be storm or day (which is the light theme)
g.tokyonight_italic_functions = true
g.tokyonight_italic_keywords = true
g.tokyonight_transparent = true

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = 'hard'
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = 'bg0'

-- edge config
g.edge_sign_column_background = 'none'
g.edge_diagnostic_virtual_text = 'colored'

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
o.shortmess = o.shortmess .. 'c'
o.showmode = false

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'no'
wo.wrap = true

