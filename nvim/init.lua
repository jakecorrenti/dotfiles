require("options")
require("keymaps")
-- require("plugins")
-- require("telescope_conf")
-- require("cmp_conf")

local vim = vim

vim.cmd[[colorscheme tempus_classic]]

-- local default_colors = require'kanagawa.colors'.setup()
-- require 'kanagawa'.setup ({
--     colors = {
--         diag = {
--             error = default_colors.autumnRed,
--             warning = default_colors.autumnYellow,
--             info = default_colors.dragonBlue,
--             hint = default_colors.waveAqua1,
--         }
--     },
-- })

-- require('onedarkpro').load()

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

-- vim.api.nvim_exec([[
-- autocmd BufWritePre * silent! lua vim.lsp.buf.formatting()
-- ]], false)

-- treesitter
-- local configs = require "nvim-treesitter.configs"
-- configs.setup { ensure_installed = "maintained", highlight = { enable = true } }

-- local lsp_installer = require("nvim-lsp-installer")

-- lsp_installer.on_server_ready(function(server)
--     local opts = {}
--     server:setup(opts)
-- end)
