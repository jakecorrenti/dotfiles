vim.cmd('packadd packer.nvim')

return require("packer").startup(function(use)
  use({"wbthomason/packer.nvim", opt = true})

  -- Themes
  use('rktjmp/lush.nvim')
  use("npxbr/gruvbox.nvim")
  use('elianiva/icy.nvim')
  use("folke/lsp-colors.nvim")
  use('folke/tokyonight.nvim')

  -- Syntax Highlighting
  use("nvim-treesitter/nvim-treesitter")

  -- LSP
  use("rust-lang/rust.vim")
  use("neovim/nvim-lspconfig")
  use("hrsh7th/nvim-compe")
  use("glepnir/lspsaga.nvim")
  use("nvim-lua/lsp_extensions.nvim")

  -- Fuzzy Finding
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/telescope.nvim")

  -- Miscellaneous
  use("kyazdani42/nvim-web-devicons")
  use("mhinz/vim-startify")
  use("preservim/nerdcommenter")
  use('onsails/lspkind-nvim')
end)
