return {
  "ThePrimeagen/harpoon",
  init = function()
    local mark = require "harpoon.mark"
    local ui = require "harpoon.ui"
    local wk = require "which-key"

    wk.add {
      { "<leader>hh", mark.add_file, desc = "Harpoon Mark file", icon = "󰓾" },
      { "<leader>ht", ui.toggle_quick_menu, desc = "Harpoon Toggle menu", icon = "" },
      { "<leader>hg", ui.nav_next, desc = "Harpoon Next mark", icon = "󰛂" },
      { "<leader>hl", ui.nav_prev, desc = "Harpoon Prev mark", icon = "󰛁" },
    }
  end,
}
