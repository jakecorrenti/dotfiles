vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {
        -- Packer can manage itself
        'wbthomason/packer.nvim',

        -- colorscheme
        'Yazeed1s/minimal.nvim',

        -- lsp
        "rust-lang/rust.vim",
        "neovim/nvim-lspconfig",
        'williamboman/nvim-lsp-installer',
        'j-hui/fidget.nvim',
        'ray-x/lsp_signature.nvim',
        {
            "folke/todo-comments.nvim",
            requires = "nvim-lua/plenary.nvim",
            config = function()
                require("todo-comments").setup {
                    -- your configuration comes here
                    -- or leave it empty to use the default settings
                    -- refer to the configuration section below
                }
            end
        },
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
        'tamton-aquib/staline.nvim',

        -- cmp
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-path",

    }
end)
