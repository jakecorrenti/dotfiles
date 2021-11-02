vim.cmd "packadd packer.nvim"

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  -- colorscheme
  use "junegunn/seoul256.vim"

  -- Syntax Highlighting
  use "nvim-treesitter/nvim-treesitter"

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "mhinz/vim-startify"
  use "preservim/nerdcommenter"
  use "mhartington/formatter.nvim"
end)
