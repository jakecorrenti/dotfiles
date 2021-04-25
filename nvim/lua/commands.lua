local vim = vim

-- set colorscheme
vim.cmd[[colorscheme tokyonight]]

-- enables italics in neovim with tmux. need to see getpocket.com pin to create required files
vim.cmd [[
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]]

-- vim startify bookmarks
vim.cmd [[
let g:startify_bookmarks = [{'N': '~/.config/nvim/init.lua'}, {'C': '~/course-work'}, {'T': '~/.tmux.conf'}, {'K': '~/.config/kitty/kitty.conf'}]
]]
