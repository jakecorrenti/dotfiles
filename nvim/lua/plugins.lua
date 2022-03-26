vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
      -- Packer can manage itself
      'wbthomason/packer.nvim',

      'dracula/vim',

      -- lsp
      "rust-lang/rust.vim",
      "neovim/nvim-lspconfig",
      'williamboman/nvim-lsp-installer',
      'j-hui/fidget.nvim',

      -- treesitter
      "nvim-treesitter/nvim-treesitter",

      -- git
      {"sindrets/diffview.nvim", requires = {"nvim-lua/plenary.nvim"}},
      {
        'lewis6991/gitsigns.nvim',
        requires = {
          'nvim-lua/plenary.nvim'
        },
        -- tag = 'release' -- To use the latest release
      },

      -- Telescope
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-lua/telescope.nvim",

      -- Miscellaneous
      "preservim/nerdcommenter",
      'kyazdani42/nvim-web-devicons',
      {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
      },

      -- cmp
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/nvim-cmp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-path",

  }
end)

