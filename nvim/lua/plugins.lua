-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Theme
  use 'tjdevries/colorbuddy.vim'
  use 'tjdevries/gruvbuddy.nvim'

  -- Syntax Highlighting
  use 'sheerun/vim-polyglot'

  -- LSP
  use 'rust-lang/rust.vim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-compe'
  use 'nvim-lua/lsp_extensions.nvim'

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Fuzzy Finding
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Miscellaneous
  use 'preservim/nerdcommenter'
end)
