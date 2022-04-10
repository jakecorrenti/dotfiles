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
opt.signcolumn = "no"
opt.colorcolumn = "80"

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = "left"
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1

-- gruvbox config
g.gruvbox_invert_selection = 1
g.gruvbox_contrast_dark = "hard"
g.gruvbox_bold = 0
g.gruvbox_italic = 1
g.gruvbox_sign_column = "bg0"
g.gruvbox_transparent_bg = 0

-- sonokai config
g.sonokai_enable_italic = 1
g.sonokai_show_eob = 0
g.sonokai_diagnostic_virtual_text = 'colored'
g.sonokai_style = 'andromeda'

-- zenbones config
g.zenbones = {
    lighten_noncurrent_window = true,
}
