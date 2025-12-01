return {
    { 'williamboman/mason.nvim', opts = {} },
    { 'neovim/nvim-lspconfig' },
    { "j-hui/fidget.nvim",       opts = {} },
    {
        'nvim-treesitter/nvim-treesitter',
        version = false,
        build = ':TSUpdate',
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = {
            'nvim-lua/plenary.nvim',
            "nvim-lua/popup.nvim",
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                run = 'make',
                cond = vim.fn.executable "make" == 1
            }
        },
        opts = {},
    },
    { 'echasnovski/mini.nvim',       version = false },
    { 'echasnovski/mini.completion', version = '*',   opts = {} },
    { 'echasnovski/mini.files',      version = '*',   opts = {} },
    { "ellisonleao/gruvbox.nvim",    priority = 1000, config = true, opts = ... },
        { "lewis6991/gitsigns.nvim" },
    {
        "folke/twilight.nvim",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        }
    },
    { "EdenEast/nightfox.nvim" },
}
