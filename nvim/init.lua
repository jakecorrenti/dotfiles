require("options")
require("keymaps")
require("plugins")
require("telescope_conf")
require("cmp_conf")

local vim = vim

local default_colors = require'kanagawa.colors'.setup()
require 'kanagawa'.setup ({
    colors = {
        diag = {
            error = default_colors.autumnRed,
            warning = default_colors.autumnYellow,
            info = default_colors.dragonBlue,
            hint = default_colors.waveAqua1,
        }
    },
})

require('material').setup({
	contrast = {
		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
		floating_windows = false, -- Enable contrast for floating windows
		line_numbers = false, -- Enable contrast background for line numbers
		sign_column = false, -- Enable contrast background for the sign column
		cursor_line = false, -- Enable darker background for the cursor line
		non_current_windows = false, -- Enable darker background for non-current windows
		popup_menu = false, -- Enable lighter background for the popup menu
	},

	italics = {
		comments = false, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},

	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
		"terminal", -- Darker terminal background
		"packer", -- Darker packer background
		"qf" -- Darker qf list background
	},

	high_visibility = {
		lighter = false, -- Enable higher contrast text for lighter style
		darker = false -- Enable higher contrast text for darker style
	},

	disable = {
		borders = false, -- Disable borders between verticaly split windows
		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
		term_colors = false, -- Prevent the theme from setting terminal colors
		eob_lines = false -- Hide the end-of-buffer lines
	},

	custom_highlights = {} -- Overwrite highlights with your own
})

vim.cmd[[colorscheme material]]

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

vim.api.nvim_exec([[
autocmd BufWritePre * silent! lua vim.lsp.buf.formatting()
]], false)

-- treesitter
local configs = require "nvim-treesitter.configs"
configs.setup { ensure_installed = "maintained", highlight = { enable = true } }

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}
    server:setup(opts)
end)
