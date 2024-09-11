require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del
local utils = require "utils"

-- unmap existing mappings
unmap("n", "<leader>h")
unmap("n", "<leader>v")
unmap("n", "<C-h>")
unmap("n", "<C-j>")
unmap("n", "<C-k>")
unmap("n", "<C-l>")

-- basic mappings
map("n", ";", ":", { desc = "General command mode" })
map("i", "jk", "<ESC>", { desc = "General Escape" })

-- navigation
map("n", "H", "^", { desc = "General Move to start of line" })
map("n", "L", "$", { desc = "General Move to end of line" })
map("n", "J", "<C-d>", { desc = "General Move half page down" })
map("n", "K", "<C-u>", { desc = "General Move half page up" })

-- bufferline
map("n", "<leader>ww", "<cmd>w<CR>", { desc = "General Write to file" })
map("n", "<leader>Q", "<cmd>q!<CR>", { desc = "General Force Quit" })
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "General Quit All" })

-- vim-tmux-navigator
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate right" })

-- window splitting
map("n", "<leader>wv", "<C-w>v", { desc = "Window Split vertically" })
map("n", "<leader>wh", "<C-w>s", { desc = "Window split horizontally" })
map("n", "<leader>we", "<C-w>=", { desc = "Window splits equal size" })
map("n", "<leader>wx", "<cmd>close<CR>", { desc = "Window current split" })

-- terminal
map("n", "<leader>tj", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "terminal below" })

map("n", "<leader>tl", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "terminal right" })

-- copilot
map("n", "<leader>ce", "<cmd> Copilot enable<CR>", { desc = "Copilot Enable" })
map("n", "<leader>cd", "<cmd> Copilot disable<CR>", { desc = "Copilot Disable" })

-- Utilities
map("n", "<leader>go", utils.compile_and_run, { desc = "Utility Compile and Run" })
map("n", "<leader>pp", utils.paste_clipboard, { desc = "Utility Paste clipboard content" })

-- true zen
map("n", "<leader>wm", "<cmd> TZFocus<CR>", { desc = "Window focus" })
