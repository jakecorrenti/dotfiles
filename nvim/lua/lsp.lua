vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = true,
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
require("lspconfig").gopls.setup {
  capabilities = capabilities,
}

require("lspconfig").rust_analyzer.setup {
  capabilities = capabilities,
  settings = {
    -- to enable rust-analyzer settings visit:
    -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
    ["rust-analyzer"] = {
      -- enable clippy on save
      checkonsave = {
        command = "clippy",
      },
    },
  },
}

require("lspconfig").tsserver.setup {
  capabilities = capabilities,
}

require("lspconfig").bashls.setup {
  capabilities = capabilities,
}

require("lspconfig").clangd.setup {
  capabilities = capabilities,
}

require("lspconfig").pyright.setup {
  capabilities = capabilities,
}

require("lspconfig").diagnosticls.setup {
  capabilities = capabilities,
}

require("lspconfig").yamlls.setup {
  capabilities = capabilities,
}

-- https://jdhao.github.io/2021/08/12/nvim_sumneko_lua_conf/
local sumneko_binary_path = vim.fn.exepath "lua-language-server"
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ":h:h:h")

local runtime_path = vim.split(package.path, ";")
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

-- require("lspconfig").sumneko_lua.setup {
--   cmd = { sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua" },
--   capabilities = capabilities,
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = "LuaJIT",
--         -- Setup your lua path
--         path = runtime_path,
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = { "vim" },
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       -- Do not send telemetry data containing a randomized but unique identifier
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
-- }
