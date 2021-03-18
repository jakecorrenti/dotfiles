local configs = require'nvim-treesitter.configs'

configs.setup {
    ensure_installed = {"rust", "c", "cpp", "lua"},
    highlight = {
        enable = true,
    },
}
