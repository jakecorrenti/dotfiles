vim.cmd "packadd packer.nvim"

return require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  -- Syntax Highlighting
  use "nvim-treesitter/nvim-treesitter"

  -- LSP
  use "rust-lang/rust.vim"
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "kyazdani42/nvim-web-devicons"
  use "mhinz/vim-startify"
  use "preservim/nerdcommenter"
  use "mhartington/formatter.nvim"

  -- Git
  use "sindrets/diffview.nvim"

  -- cmp
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-path"
end)
