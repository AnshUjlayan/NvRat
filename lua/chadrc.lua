-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "ashes",
  transparency = true,

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

return M
