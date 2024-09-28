-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@class ChadrcConfig
local M = {}

M.base46 = {
  theme = "onedark",
  transparency = true,
  theme_toggle = { "onedark", "one_light" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  nvdash = {
    load_on_startup = true,
    header = {
      '         __             _,-"~^"-.            _   __      ____        __     ',
      '       _// )      _,-"~`         `.         / | / /   __/ __ \\____ _/ /_    ',
      '     ." ( /`"-,-"`                 ;       /  |/ / | / / /_/ / __ `/ __/    ',
      "    / 6                             ;     / /|  /| |/ / _, _/ /_/ / /_      ",
      '   /           ,             ,-"     ;   /_/ |_/ |___/_/ |_|\\__,_/\\__/      ',
      "  (,__.--.      \\           /        ;                                      ",
      "   //'   /`-.\\   |          |        `._________                            ",
      "     _.-'_/`  )  )--...,,,___\\     \\-----------,)                           ",
      "   (((\"~` _.-'.-'           __`-.   )         //                            ",
      '         ((("`             (((---~"`         //                             ',
      "                                            ((________________              ",
      '                                            `----""""~~~~^^^``              ',
    },
  },
}

M.cheatsheet = {
  theme = "grid",
  excluded_groups = {
    "which-key-trigger (x)",
    "which-key-trigger (i)",
    "terminal (t)",
    "autopairs",
    "Nvim",
    "Opens",
    "toggle (v)",
    "toggle (x)",
    ":help",
    ":help (i)",
    ":help (x)",
    "LSP (v)",
    "Toggle (v)",
    "Toggle (x)",
    "Show",
  },
}

M.mason = {
  cmd = true,
  pkgs = {
    -- LSP
    "rust-analyzer",
    "clangd",
    "pyright",
    "typescript-language-server",
    "tailwindcss-language-server",
    "docker-compose-language-service",
    "dockerfile-language-server",
    "lua-language-server",
    "json-lsp",
    "html-lsp",
    "css-lsp",

    -- Formatter
    "black",
    "stylua",
    "prettier",
  },
}

return M
