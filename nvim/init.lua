require "options"
require "keymaps"

local vim = vim

vim.cmd[[colorscheme tempus_future]]

vim.cmd[[
highlight TrailingWhitespace ctermbg=red guibg=red
call matchadd("TrailingWhitespace", '\v\s+$')
]]

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
