local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

-- defaults
g.mapleader = ' '

vim.cmd [[set laststatus=0]]
vim.cmd[[set pumblend=15]]

o.showcmd = true
o.cursorline = true
o.incsearch = true
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.smartcase = true
o.ignorecase = true
o.smartindent = true
o.updatetime = 50
o.hlsearch = true
o.termguicolors = true
o.expandtab = true
o.completeopt = "menuone,noselect"
o.shortmess = o.shortmess .. 'c'
o.showmode = true

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = true

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = 'left'
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- Tokyo night config
g.tokyonight_style = "night" -- or could be storm or day (which is the light theme)
g.tokyonight_italic_functions = true
g.tokyonight_italic_keywords = true

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = 'medium'
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = 'bg0'
g.gruvbox_transparent_bg = 1

-- NeoSolarized config
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_contrast = 'normal'
g.neosolarized_italic = 1
g.neosolarized_termtrans = 1

-- edge config
g.edge_show_eob = 0
g.edge_diagnostic_virtual_text = 'colored'
