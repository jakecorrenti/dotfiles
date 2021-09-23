local vim = vim

-- colorscheme
-- vim.cmd[[colorscheme gruvbox]]

-- auto recompile packer
vim.cmd([[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]])

-- enables italics in neovim with tmux. need to see getpocket.com pin to create required files
vim.cmd [[
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]]

-- vim startify bookmarks
vim.cmd [[
let g:startify_bookmarks = [{'n': '~/.config/nvim/init.lua'}, {'t': '~/.tmux.conf'}, {'k': '~/.config/kitty/kitty.conf'}, {'z': '~/.zshrc'}, {'a': '~/.config/alacritty/alacritty.yml'}, {'y': '~/.config/yabai/yabairc'}, {'s': '~/.config/skhd/skhdrc'}]
]]

-- This will set either light theme or dark theme based on the time of day
--
-- vim.cmd [[
-- if strftime('%H') >= 7 && strftime('%H') < 19
--   set background=light
-- else
--   set background=dark
-- endif
-- ]]

