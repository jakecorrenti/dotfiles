vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        -- Packer can manage itself
        'wbthomason/packer.nvim',

        -- colorscheme
        'ellisonleao/gruvbox.nvim',
        'ntk148v/vim-horizon',
        'folke/tokyonight.nvim',

        {
            "mcchrish/zenbones.nvim",
            -- Optionally install Lush. Allows for more configuration or extending the colorscheme
            -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
            -- In Vim, compat mode is turned on as Lush only works in Neovim.
            requires = "rktjmp/lush.nvim"
        },


        -- lsp
        "rust-lang/rust.vim",
        "neovim/nvim-lspconfig",
        'williamboman/nvim-lsp-installer',
        'j-hui/fidget.nvim',

        -- treesitter
        "nvim-treesitter/nvim-treesitter",

        -- git
        { "sindrets/diffview.nvim", requires = { "nvim-lua/plenary.nvim" } },
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
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable "make" == 1 },

        -- Miscellaneous
        "preservim/nerdcommenter",
        "mhinz/vim-startify",
        'nvim-lualine/lualine.nvim',
        {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function()
                require("todo-comments").setup {
                }
            end
        },
        {
            "folke/trouble.nvim",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require("trouble").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
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
