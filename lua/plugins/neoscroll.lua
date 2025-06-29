return {
  "karb94/neoscroll.nvim",
  event = "BufReadPost",
  -- stylua: ignore
  opts = {
    mappings = {
      "<C-u>", "<C-d>",
      "<C-b>", "<C-f>",
      "<C-y>", "<C-e>",
      "zt", "zz", "zb",
    },
    hide_cursor = false,
    stop_eof = true,
    respect_scrolloff = false,
    cursor_scrolls_alone = true,
    easing = "linear",
    duration_multiplier = 1.0,
    pre_hook = nil,
    post_hook = nil,
    performance_mode = false,
    ignored_events = {
      "WinScrolled",
      "CursorMoved",
    },
  },
  config = function()
    local neoscroll = require "neoscroll"
  -- stylua: ignore
    local keymap = {
      ["K"] = function() neoscroll.ctrl_u { duration = 150 } end,
      ["J"] = function() neoscroll.ctrl_d { duration = 150 } end,
      ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 }) end,
      ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100 }) end,
    }
    local modes = { "n", "v", "x" }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end,
}
