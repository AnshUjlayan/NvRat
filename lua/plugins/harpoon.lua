return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup {}
  end,
  init = function()
    local mark = require "harpoon.mark"
    local ui = require "harpoon.ui"
    local wk = require "which-key"

    wk.add {
      { "<leader>hh", mark.add_file, desc = "harpoon mark file", icon = "󰓾" },
      { "<leader>ht", ui.toggle_quick_menu, desc = "harpoon toggle menu", icon = "" },
      { "<leader>hg", ui.nav_next, desc = "harpoon next mark", icon = "󰛂" },
      { "<leader>hl", ui.nav_prev, desc = "harpoon prev mark", icon = "󰛁" },
    }
  end,
}
