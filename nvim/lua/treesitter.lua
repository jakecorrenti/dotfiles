local configs = require'nvim-treesitter.configs'

configs.setup {
    ensure_installed = {"rust", "c", "cpp", "lua", "comment"},
    highlight = {
        enable = true,
    },
}
