local vim = vim
require("options")
require("plugins")
require("keymaps")
require("cmp_conf")
require("telescope_conf")
--require 'gitsigns'.setup {}
require "fidget".setup {}

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
    highlight WinSeparator guibg=None
    highlight SignColumn guibg=black
    highlight Pmenu guibg=black

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
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = true,
})
