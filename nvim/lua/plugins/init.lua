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
    { "challenger-deep-theme/vim" },
    {
        "ptdewey/monalisa-nvim",
        priority = 1000,
    },
    { "lewis6991/gitsigns.nvim" },
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
        -- you can set set configuration options here
        -- config = function()
        --     vim.g.zenbones_darken_comments = 45
        --     vim.cmd.colorscheme('zenbones')
        -- end
    }
}
