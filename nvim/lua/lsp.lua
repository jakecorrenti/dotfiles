vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  virtual_text = true,
  signs = true,
  update_in_insert = true,
})

-- local function setup_servers()
--   require("lspinstall").setup()
--   local servers = require("lspinstall").installed_servers()
--   for _, server in pairs(servers) do
--     if server == "lua" then
--       require("lspconfig")[server].setup {
--         settings = {
--           Lua = {
--             diagnostics = {
--               -- Get the language server to recognize the `vim` global
--               globals = { "vim" },
--             },
--             workspace = {
--               -- Make the server aware of Neovim runtime files
--               library = vim.api.nvim_get_runtime_file("", true),
--             },
--             -- Do not send telemetry data containing a randomized but unique identifier
--             telemetry = {
--               enable = false,
--             },
--           },
--         },
--       }
--     else
--       require("lspconfig")[server].setup {}
--     end
--   end
-- end
--
-- setup_servers()
--
-- -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
-- require("lspinstall").post_install_hook = function()
--   setup_servers() -- reload installed servers
--   vim.cmd "bufdo e"
-- end
--
local lsp_installer = require "nvim-lsp-installer"

lsp_installer.on_server_ready(function(server)
  local opts = {}

  -- (optional) Customize the options passed to the server
  -- if server.name == "tsserver" then
  --     opts.root_dir = function() ... end
  -- end

  -- This setup() function is exactly the same as lspconfig's setup function.
  -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/ADVANCED_README.md
  server:setup(opts)
end)
