-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

-- Language Servers
local servers = {
  "lua_ls",
  "clangd",
  "pyright",
  "html",
  "cssls",
  "jsonls",
  "ts_ls",
  "tailwindcss",
  "dockerls",
  "docker_compose_language_service",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
