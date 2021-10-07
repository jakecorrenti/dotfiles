vim.cmd "packadd packer.nvim"

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  -- colorscheme
  use "mcchrish/zenbones.nvim"
  use "rktjmp/lush.nvim"
  use "olimorris/onedark.nvim"

  -- Syntax Highlighting
  use "nvim-treesitter/nvim-treesitter"

  -- LSP
  use "rust-lang/rust.vim"
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "hrsh7th/nvim-compe"
  use "glepnir/lspsaga.nvim"
  use "folke/trouble.nvim"

  -- Fuzzy Finding
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "kyazdani42/nvim-web-devicons"
  use "mhinz/vim-startify"
  use "preservim/nerdcommenter"
  use "onsails/lspkind-nvim"
  use "lewis6991/gitsigns.nvim"
  use "mhartington/formatter.nvim"
end)
