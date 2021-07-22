local vim = vim
local o = vim.o
local wo = vim.wo
local g = vim.g

-- defaults
g.mapleader = ' '

vim.cmd [[set laststatus=0]]
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
o.hlsearch = false
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

-- tokyonight
g.tokyonight_style = "night"

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
-- g.neosolarized_termtrans = 1

-- indent-blankline
g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
g.indent_blankline_filetype_exclude = {
  "help", "startify", "dashboard", "packer", "neogitstatus", "NvimTree",
  "Trouble"
}
g.indent_blankline_char = "│"
g.indent_blankline_use_treesitter = true
g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_current_context = true
g.indent_blankline_context_patterns = {
  "class", "return", "function", "method", "^if", "^while", "jsx_element",
  "^for", "^object", "^table", "block", "arguments", "if_statement",
  "else_clause", "jsx_element", "jsx_self_closing_element", "try_statement",
  "catch_clause", "import_statement", "operation_type"
}
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
wo.colorcolumn = "99999"
