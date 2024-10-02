require("config.options")
require("config.autocmds")
require("config.keymaps")
require("config.lazy")

require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.gopls.setup{}

vim.cmd.colorscheme 'torte'
