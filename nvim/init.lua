require('lazy_config')
require("options")
require("keymaps");
require("telescope_conf")
require "fidget".setup {}
-- require('gitsigns').setup()
-- require('cmp_conf')
-- require "lsp_signature".setup({
--     bind = true, -- This is mandatory, otherwise border config won't get registered.
--     handler_opts = {
--         border = "rounded"
--     },
--     hint_prefix = "=> ",
-- })
require('Comment').setup()
require('todo-comments').setup()
require('trouble').setup({
    use_diagnostic_signs = true,
    icons = false,
})
require('treesitter_config')
-- require('mason').setup()
-- require('mason-lspconfig').setup({
--     ensure_installed = { "lua_ls", "rust_analyzer", "gopls" },
--     automatic_installation = true,
-- })
-- require('mason-lspconfig').setup_handlers {
--     function(server_name)
--         local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
--         local opts = { capabilities = capabilities }
--         require("lspconfig")[server_name].setup {
--             options = opts,
--         }
--     end,
-- }
require("symbols-outline").setup()

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

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
vim.cmd.colorscheme 'torte'
