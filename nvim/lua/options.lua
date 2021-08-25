local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

-- defaults
g.mapleader = ' '

vim.cmd [[set laststatus=2]]
vim.cmd[[set pumblend=15]]

o.showcmd = true
o.incsearch = true
o.expandtab = true
-- o.tabstop = 2
-- o.shiftwidth = 2
-- o.softtabstop = 2
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
wo.signcolumn = 'no'
wo.wrap = true

-- nerd commenter
g.NERDSpaceDelims = 1
g.NERDCompactSexyComs = 1
g.NERDDefaultAlign = 'left'
g.NERDCommentEmptyLines = 1
g.NERDTrimTrailingWhitespace = 1
g.NERDToggleCheckAllLines = 1
