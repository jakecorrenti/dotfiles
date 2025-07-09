require("config.options")
require("config.autocmds")
require("config.keymaps")
require("config.lazy")

require('mini.starter').setup()
require('mini.icons').setup()
require('mini.statusline').setup()

require 'lspconfig'.rust_analyzer.setup {
    settings = {
        ['rust-analyzer'] = {
            ['cargo'] = {
                features = "all"
            }
        }
    }
}
require 'lspconfig'.clangd.setup {}
require 'lspconfig'.lua_ls.setup {}
require 'lspconfig'.gopls.setup {}

require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'c',
        'diff',
        'bash',
        'lua',
        'json',
        'toml',
        'rust',
        'go',
        'yaml',
        'markdown',
        'markdown_inline',
    },
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}

-- Default options:
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "soft", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

require("gitsigns").setup {}

vim.diagnostic.config({
    virtual_text = true,
})

vim.cmd.colorscheme 'zenbones'
