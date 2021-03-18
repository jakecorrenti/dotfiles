local lspconfig = require'lspconfig'

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = false,
    signs = true,
    update_in_insert = true,
  }
)

lspconfig.ccls.setup{}
lspconfig.rust_analyzer.setup{}
lspconfig.bashls.setup{}
lspconfig.sumneko_lua.setup{
    settings = {
    Lua = {
		runtime = {
		      version = 'Lua 5.3',
		      path = {
		    '?.lua',
	    '?/init.lua',
	    vim.fn.expand'~/.luarocks/share/lua/5.3/?.lua',
	    vim.fn.expand'~/.luarocks/share/lua/5.3/?/init.lua',
	    '/usr/share/5.3/?.lua',
	    '/usr/share/lua/5.3/?/init.lua'
		      }
     },
	    workspace = {
		  [vim.fn.expand'~/.luarocks/share/lua/5.3'] = true,
		  ['/usr/share/lua/5.3'] = true
	      }
     }
   }
}
