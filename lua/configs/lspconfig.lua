-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- Language Servers
local servers = {
  "lua_ls",
  "rust_analyzer",
  "ts_ls",
  "clangd",
  "pyright",
  "html",
  "cssls",
  "jsonls",
  "tailwindcss",
  "dockerls",
  "docker_compose_language_service",
}

vim.lsp.enable(servers)
