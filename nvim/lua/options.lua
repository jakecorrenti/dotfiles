local vim = vim
local g = vim.g
local o = vim.o

g.mapleader = " "
g.laststatus = 3
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
o.showmode = false
o.number = true
o.relativenumber = true
o.wrap = true
o.signcolumn = "yes"
o.colorcolumn = "80"
o.background = "light"
o.cursorline = false

-- NeoSolarized theme
-- g.neosolarized_contrast = "normal" -- or "normal"
-- g.neosolarized_visibility = "normal"
g.neosolarized_vertSplitBgTrans = 1
g.neosolarized_bold = 1
g.neosolarized_underline = 0
g.neosolarized_italic = 1
g.neosolarized_termtrans = 0

-- everforest
g.everforest_background = 'hard'
g.everforest_enable_italic = 1
g.everforest_show_eob = 0
g.everforest_diagnostic_virtual_text = 'highlighted'

-- zenbones light
g.zenbones_lightness = 'dim'
g.zenbones_darken_noncurrent_window = true

-- zenbones dark
g.zenbones_lighten_noncurrent_window = true

-- startify bookmarks
g.startify_bookmarks = {
    { a = "~/.config/alacritty/alacritty.toml" },
    { n = "~/.config/nvim/init.lua" },
    { t = "~/.config/.tmux.conf" },
    { z = "~/.config/.zshrc" },
    { w = "~/.config/i3/config" },
}

-- highlight the current yanked line
vim.api.nvim_exec(
    [[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]]   ,
    false
)
