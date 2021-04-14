vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}

  -- Syntax Highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- LSP
  use 'rust-lang/rust.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'

  -- Fuzzy Finding
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'

  -- Miscellaneous
  use 'glepnir/lspsaga.nvim'
end)
