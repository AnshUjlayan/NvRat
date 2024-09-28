return {
  "nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle" },
  opts = function()
    local options = require "nvchad.configs.nvimtree"
    options.view.side = "right"
    return options
  end,
}
