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
map("n", "<leader>ww", "<cmd>w<CR>", { desc = "General Write to file" })
map("n", "<leader>Q", "<cmd>q!<CR>", { desc = "General Force Quit" })
map("n", "<leader>q", "<cmd>qa<CR>", { desc = "General Quit All" })

-- navigate
map("n", "H", "^", { desc = "Navigate Move to start of line" })
map("n", "L", "$", { desc = "Navigate Move to end of line" })
map("n", "J", "<C-d>", { desc = "Navigate Move half page down" })
map("n", "K", "<C-u>", { desc = "Navigate Move half page up" })
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Navigate left" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Navigate down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Navigate up" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Navigate right" })

-- window
map("n", "<leader>wv", "<C-w>v", { desc = "Window Split vertically" })
map("n", "<leader>wh", "<C-w>s", { desc = "Window split horizontally" })
map("n", "<leader>we", "<C-w>=", { desc = "Window splits equal size" })
map("n", "<leader>wx", "<cmd>close<CR>", { desc = "Window current split" })
map("n", "<leader>wm", "<cmd> TZFocus<CR>", { desc = "Window focus" })

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

-- utilities
map("n", "<leader>go", utils.compile_and_run, { desc = "Utility Compile and Run" })
map("n", "<leader>pp", utils.paste_clipboard, { desc = "Utility Paste clipboard content" })
map("n", "<leader>pm", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Utility Markdown Preview" })
map("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", { desc = "Undo tree toggle" })
