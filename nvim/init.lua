local vim = vim
require("options")
require("plugins")
require("keymaps")
require("cmp_conf")
require("telescope_conf")
require "fidget".setup {}
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = false,
    italic = true,
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    overrides = {},
})
require('gitsigns').setup()

-- highlight the current yanked line
vim.api.nvim_exec(
    [[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]]   ,
    false
)

-- auto recompile packer
vim.cmd [[autocmd BufWritePost plugins.lua source <afile> | PackerCompile]]

vim.cmd [[
    colorscheme tokyonight-moon
    highlight WinSeparator guibg=None

    set laststatus=3
]]

-- format on save
vim.api.nvim_exec([[
autocmd BufWritePre * silent! lua vim.lsp.buf.formatting()
]], false)

-- treesitter
local configs = require "nvim-treesitter.configs"
configs.setup { highlight = { enable = true } }

-- lsp
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
    local opts = { capabilities = capabilities }
    server:setup(opts)
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = false,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
})

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
