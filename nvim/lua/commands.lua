local vim = vim

-- colorscheme
vim.cmd('colorscheme zenflesh-lush')

-- highlights for horizon colorscheme
-- vim.cmd('highlight Pmenu guibg=gray guifg=black')

-- auto recompile packer
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

-- enables italics in neovim with tmux. need to see getpocket.com pin to create required files
vim.cmd [[
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]]

-- vim startify bookmarks
vim.cmd [[
let g:startify_bookmarks = [{'n': '~/.config/nvim/init.lua'}, {'t': '~/.tmux.conf'}, {'k': '~/.config/kitty/kitty.conf'}, {'z': '~/.zshrc'}, {'a': '~/.config/alacritty/alacritty.yml'}, {'y': '~/.config/yabai/yabairc'}, {'s': '~/.config/yabai/skhdrc'}, {'b': '~/.config/spacebar/spacebarrc'}]
]]
