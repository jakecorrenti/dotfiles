vim.cmd('packadd packer.nvim')

return require("packer").startup(function(use)
  use({"wbthomason/packer.nvim", opt = true})

  -- colorschemes
  use {'tjdevries/gruvbuddy.nvim', requires = {'tjdevries/colorbuddy.vim'}}
  use('rktjmp/lush.nvim')
  use("npxbr/gruvbox.nvim")
  use("elianiva/icy.nvim")
  use('ayu-theme/ayu-vim')

  -- Syntax Highlighting
  use("nvim-treesitter/nvim-treesitter")

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'


  -- LSP
  use("rust-lang/rust.vim")
  use("neovim/nvim-lspconfig")
  use("kabouzeid/nvim-lspinstall")
  use("hrsh7th/nvim-compe")
  use("glepnir/lspsaga.nvim")
  use("nvim-lua/lsp_extensions.nvim")
  use("folke/trouble.nvim")

  -- Fuzzy Finding
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/telescope.nvim")

  -- Miscellaneous
  use("kyazdani42/nvim-web-devicons")
  use("mhinz/vim-startify")
  use("preservim/nerdcommenter")
  use('onsails/lspkind-nvim')
  use('tjdevries/cyclist.vim')
end)
