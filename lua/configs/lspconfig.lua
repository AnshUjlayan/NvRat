-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lsp = vim.lsp.config
local nvlsp = require "nvchad.configs.lspconfig"

-- common opts
local opts = {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
}

-- servers with default config
local servers = {
  "ts_ls",
  "pyright",
  "html",
  "cssls",
  "jsonls",
  "tailwindcss",
  "dockerls",
  "docker_compose_language_service",
}

for _, server in ipairs(servers) do
  lsp(server, opts)
end

-- lua_ls
lsp(
  "lua_ls",
  vim.tbl_deep_extend("force", opts, {
    settings = {
      Lua = {
        diagnostics = { globals = { "vim" } },
      },
    },
  })
)

-- clangd
lsp(
  "clangd",
  vim.tbl_deep_extend("force", opts, {
    cmd = { "/usr/bin/clangd" },
  })
)

-- rust_analyzer
lsp(
  "rust_analyzer",
  vim.tbl_deep_extend("force", opts, {
    cmd = { "rustup", "run", "stable", "rust-analyzer" },
    settings = {
      ["rust-analyzer"] = {
        cargo = { allFeatures = true },
      },
    },
  })
)
