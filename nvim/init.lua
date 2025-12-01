require("config.options")
require("config.autocmds")
require("config.keymaps")
require("config.lazy")

require('mini.starter').setup()
require('mini.icons').setup()
require('mini.statusline').setup()

vim.lsp.config('rust_analyzer', {
    settings = {
        ['rust-analyzer'] = {
            ['cargo'] = {
                features = "all"
            }
        }
    }
})
vim.lsp.config('clangd', {})
vim.lsp.config('lua_ls', {})
vim.lsp.config('gopls', {})
vim.lsp.config('asm_lsp', {})

vim.lsp.enable('rust_analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('lua_ls')
vim.lsp.enable('gopls')
vim.lsp.enable('asm_lsp')

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

vim.cmd.colorscheme 'dayfox'
