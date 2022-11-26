vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        -- Packer can manage itself
        'wbthomason/packer.nvim',

        -- colorscheme
        "ellisonleao/gruvbox.nvim",
        "sainnhe/gruvbox-material",
        "folke/tokyonight.nvim",
        "olimorris/onedarkpro.nvim",
        { "catppuccin/nvim", as = "catppuccin" },
        "arcticicestudio/nord-vim",
        {
            "mcchrish/zenbones.nvim",
            -- Optionally install Lush. Allows for more configuration or extending the colorscheme
            -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
            -- In Vim, compat mode is turned on as Lush only works in Neovim.
            requires = "rktjmp/lush.nvim"
        },
        'metalelf0/base16-black-metal-scheme',
        'challenger-deep-theme/vim',

        -- lsp
        "rust-lang/rust.vim",
        "neovim/nvim-lspconfig",
        'williamboman/nvim-lsp-installer',
        'j-hui/fidget.nvim',
        'ray-x/lsp_signature.nvim',
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",

        -- treesitter
         "nvim-treesitter/nvim-treesitter",

        -- git
        { "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim" } },
        'lewis6991/gitsigns.nvim',

        -- Telescope
        "nvim-lua/popup.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-lua/telescope.nvim",
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 },

        -- Miscellaneous
        "preservim/nerdcommenter",
        "mhinz/vim-startify",

        -- cmp
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-path",

    }
end)
