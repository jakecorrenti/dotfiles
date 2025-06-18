require("config.options")
require("config.autocmds")
require("config.keymaps")
require("config.lazy")

require('mini.starter').setup()
require('mini.icons').setup()
require('mini.statusline').setup()

require 'lspconfig'.rust_analyzer.setup {}
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
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

 -- Optional, you don't have to run setup.
require("transparent").setup({
  -- table: default groups
  groups = {
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
    'EndOfBuffer',
  },
  -- table: additional groups that should be cleared
  extra_groups = {},
  -- table: groups you don't want to clear
  exclude_groups = {},
  -- function: code to be executed after highlight groups are cleared
  -- Also the user event "TransparentClear" will be triggered
  on_clear = function() end,
})

vim.cmd.colorscheme 'gruvbox'
