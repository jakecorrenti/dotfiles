local vim = vim
local o = vim.o
local wo = vim.wo

vim.g.mapleader = ' '

local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

o.syntax = 'true'
o.showcmd = true
o.incsearch = true
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.smartcase = true
o.ignorecase = true
o.smartindent = true
o.updatetime = 50
o.hlsearch = false
o.termguicolors = true
o.softtabstop = 4
o.expandtab = true

wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false
wo.list = true
wo.listchars = 'tab:» ,trail:·,eol:↲'

require'colorbuddy'.colorscheme('gruvbuddy')
require'gitsigns'.setup()

require'plugins'
require'keymaps'
require'compe_config'
require'lsp'


vim.cmd(
  [[
  autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *
\ lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', aligned = true, highlight =
\ "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }
  ]]
  )

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)
