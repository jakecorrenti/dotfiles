local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

-- defaults
g.mapleader = " "

vim.cmd [[set pumblend=15]]

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
o.hlsearch = true
o.termguicolors = true
o.expandtab = true
o.completeopt = "menuone,noselect"
o.shortmess = o.shortmess .. "c"
o.showmode = false

wo.number = true
wo.relativenumber = true
wo.signcolumn = "yes"
wo.wrap = true

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- NeoSolarized theme
g.neosolarized_contrast = "normal" -- or "normal"
g.neosolarized_visibility = "normal"
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_bold = 1
g.neosolarized_underline = 0
g.neosolarized_italic = 1
g.neosolarized_termtrans = 0

-- zenbones config
g.zenbones_lightness = "dim"
g.zenbones_solid_vert_split = true
g.zenbones_dim_noncurrent_window = true
g.zenbones_italic_comments = true

-- zenflesh config
-- g.zenflesh_darkness = 'warm'
g.zenflesh_solid_vert_split = true
g.zenflesh_lighten_noncurrent_window = true
g.zenflesh_italic_comment = true

-- tokyo night config
g.tokyonight_style = "storm"
g.tokyonight_italic_comments = true
g.tokyonight_italic_keywords = true
g.tokyonight_colors = { fg_gutter = "#565f89", gitSigns = { add = "#9ece6a", change = "#e0af68", delete = "#f7768e" } }
