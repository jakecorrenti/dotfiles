local vim = vim

require("options")
require("keymaps")
require("plugins")
require("telescope_conf")
require("cmp_conf")
require'gitsigns'.setup()

-- highlight the current yanked line
vim.api.nvim_exec(
	[[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
augroup END
]],
	false
)

vim.cmd[[colorscheme zenbones]]
-- vim.cmd[[
-- highlight Pmenu guibg=black
-- highlight WinSeparator guibg=None
-- ]]

require'lualine'.setup {
  sections = {
    lualine_b = {'branch', 'diagnostics'},
  },
}

vim.cmd[[set laststatus=3]]

-- format on save
vim.api.nvim_exec([[
autocmd BufWritePre * silent! lua vim.lsp.buf.formatting()
]], false)

-- treesitter
local configs = require "nvim-treesitter.configs"
configs.setup {ensure_installed = "maintained", highlight = { enable = true } }

-- lsp
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = true,
})
