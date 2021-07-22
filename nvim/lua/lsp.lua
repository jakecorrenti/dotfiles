local lspconfig = require("lspconfig")

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      underline = true,
      virtual_text = true,
      signs = true,
      update_in_insert = true
    })

lspconfig.ccls.setup {}
lspconfig.gopls.setup {
  settings = {gopls = {analyses = {unusedparams = true}, staticcheck = true}}
}
lspconfig.rust_analyzer.setup {}
lspconfig.bashls.setup {}
-- lspconfig.pyls.setup {
--   plugins = {pyls_mypy = {enabled = true, live_mode = false}}
-- }

USER = vim.fn.expand("$USER")

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("mac") == 1 then
  -- sumneko_root_path = "/Users/" .. USER .. "/.config/nvim/lua-language-server"
  -- sumneko_binary = "/Users/" .. USER ..
  --                      "/.config/nvim/lua-language-server/bin/macOS/lua-language-server"
  sumneko_root_path = "/Users/" .. USER .. "/lua-language-server"
  sumneko_binary = "/Users/" .. USER ..
                       "/lua-language-server/bin/macOS/lua-language-server"
elseif vim.fn.has("unix") == 1 then
  sumneko_root_path = "/home/" .. USER .. "/lua-language-server"
  sumneko_binary = "/home/" .. USER ..
                       "/lua-language-server/bin/Linux/lua-language-server"
else
  print("Unsupported system for sumneko")
end

require("lspconfig").sumneko_lua.setup({
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
        -- Setup your lua path
        path = vim.split(package.path, ";")
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {"vim"}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
        }
      }
    }
  }
})

lspconfig.efm.setup({
  init_options = {documentFormatting = true},
  filetypes = {"lua"},
  settings = {
    rootMarkers = {".git/"},
    languages = {
      lua = {
        {
          -- formatCommand = "lua-format -i --break-after-table-lb --no-break-after-operator --no-keep-simple-function-one-line --column-limit=80 --indent-width=2",
          formatCommand = "lua-format -i --break-after-table-lb --no-keep-simple-function-one-line --column-limit=80 --indent-width=2",
          formatStdin = true
        }
      }
    }
  }
})
