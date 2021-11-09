local vim = vim

-- colorscheme
vim.cmd[[colorscheme murphy]]

-- auto recompile packer
vim.cmd [[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]]

-- enables italics in neovim with tmux. need to see getpocket.com pin to create required files
vim.cmd [[
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
]]
