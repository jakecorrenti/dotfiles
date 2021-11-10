require "options"
require "keymaps"

local vim = vim

-- colorscheme
vim.cmd[[colorscheme murphy]]

-- enables italics in neovim with tmux. need to see getpocket.com pin to 
-- create required files
vim.cmd [[
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
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
