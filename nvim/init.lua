require("options")
require("keymaps")

local vim = vim
local opt = vim.opt
local g = vim.g
local o = vim.o
local key_mapper = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end


--
-- options
--

g.mapleader = " "
o.shortmess = vim.o.shortmess .. "c"

opt.completeopt = "menu,menuone,noselect"
opt.pumblend = 15
opt.scrolloff = 4
opt.laststatus = 1
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
opt.showmode = true
opt.number = true
opt.relativenumber = true
opt.wrap = true
opt.signcolumn = "no"

-- 
-- keymaps
--

key_mapper("i", "jk", "<ESC>")

-- terminal navigation
key_mapper("t", "<C-h>", "<C-\\><C-N><C-w>h")
key_mapper("t", "<C-j>", "<C-\\><C-N><C-w>j")
key_mapper("t", "<C-k>", "<C-\\><C-N><C-w>k")
key_mapper("t", "<C-l>", "<C-\\><C-N><C-w>l")
key_mapper("t", "jk", "<C-\\><C-n>")

-- window navigation
key_mapper("n", "<C-j>", "<C-w>j")
key_mapper("n", "<C-h>", "<C-w>h")
key_mapper("n", "<C-k>", "<C-w>k")
key_mapper("n", "<C-l>", "<C-w>l")
key_mapper("n", "<leader>-", ":resize -10 <CR>")
key_mapper("n", "<leader>+", ":resize +10 <CR>")
key_mapper("n", "<leader>>", ":vertical resize +10 <CR>")
key_mapper("n", "<leader><", ":vertical resize -10 <CR>")

-- window splitting
key_mapper("n", "<leader>v", ":vsp <CR>")
key_mapper("n", "<leader>s", ":sp <CR>")

-- 
-- execs
--

-- highlight the current yanked line
vim.api.nvim_exec(
	[[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]],
	false
)
