vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- colorscheme
  use 'ulwlu/elly.vim'
  use 'rktjmp/lush.nvim'
  use 'usirin/bleed-purple.nvim'
    use 'rebelot/kanagawa.nvim'

  -- lsp
  use "rust-lang/rust.vim"
  use "neovim/nvim-lspconfig"
  use 'williamboman/nvim-lsp-installer'

  -- treesitter
  use "nvim-treesitter/nvim-treesitter"

  -- git
  use {"sindrets/diffview.nvim", requires = {"nvim-lua/plenary.nvim"}}

  -- Telescope
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/telescope.nvim"

  -- Miscellaneous
  use "preservim/nerdcommenter"

    -- cmp
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "hrsh7th/cmp-path"

end)

