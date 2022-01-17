require("options")
require("keymaps")

local vim = vim

vim.cmd[[colorscheme tempus_day]]

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
