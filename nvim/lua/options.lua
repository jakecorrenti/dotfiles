local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

-- defaults
g.mapleader = ' '

vim.cmd[[set pumblend=15]]

o.showcmd = true
o.incsearch = true o.expandtab = true
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
o.showmode = false

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

-- NeoSolarized theme
g.neosolarized_contrast = "normal" -- or "normal"
g.neosolarized_visibility = "normal"
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_bold = 1
g.neosolarized_underline = 0
g.neosolarized_italic = 1
g.neosolarized_termtrans = 1

-- edge config
g.edge_style = 'default'
g.edge_enable_italic = 1
g.edge_show_eob = 0
g.edge_diagnostic_virtual_text = 'colored'

-- tokyo night config
g.tokyonight_style = "storm"
g.tokyonight_italic_comments = true
g.tokyonight_italic_keywords = true
g.tokyonight_italic_functions = true
g.tokyonight_transparent = true

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = 'medium'
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = 'bg0'
g.gruvbox_transparent_bg = 1

-- everforest theme
g.everforest_background = 'hard'
g.everforest_enable_italic = 1
g.everforest_sign_column_background = 'none'
g.everforest_ui_contrast = 'low' -- can also be 'high'
g.everforest_show_eob = 0
g.everforest_diagnostic_virtual_text = 'colored'

-- gruvbox material theme
g.gruvbox_material_background = 'medium'
g.gruvbox_material_enable_italic = 1
g.gruvbox_material_enable_bold = 0
g.gruvbox_material_visual = 'reverse'
g.gruvbox_material_sign_column_background = 'none'
g.gruvbox_material_ui_contrast = 'low' -- can also be 'high'
g.gruvbox_material_diagnostic_virtual_text = 'colored'

-- zenbones config
g.zenbones_lightness = 'dim'
g.zenbones_solid_vert_split = true
g.zenbones_dim_noncurrent_window = true
g.zenbones_italic_comments = true
