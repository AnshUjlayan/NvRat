vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Harpoon keymaps
keymap.set("n", "<leader>hh", function()
  require("harpoon.mark").add_file()
end, { noremap = true, silent = true })
keymap.set("n", "<leader>ht", function()
  require("harpoon.ui").toggle_quick_menu()
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hj", function()
  require("harpoon.ui").nav_next()
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hk", function()
  require("harpoon.ui").nav_prev()
end, { noremap = true, silent = true })
keymap.set("n", "<leader>ha", function()
  require("harpoon.ui").nav_file(5)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hs", function()
  require("harpoon.ui").nav_file(4)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hd", function()
  require("harpoon.ui").nav_file(3)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hf", function()
  require("harpoon.ui").nav_file(2)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>hg", function()
  require("harpoon.ui").nav_file(1)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>h1", function()
  require("harpoon.ui").nav_file(6)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>h2", function()
  require("harpoon.ui").nav_file(7)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>h3", function()
  require("harpoon.ui").nav_file(8)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>h4", function()
  require("harpoon.ui").nav_file(9)
end, { noremap = true, silent = true })
keymap.set("n", "<leader>h5", function()
  require("harpoon.ui").nav_file(10)
end, { noremap = true, silent = true })

-- Codeforces keymaps
keymap.set("n", "<leader>pp", "<cmd>lua PasteClipboardToFile()<CR>", { desc = "Paste clipboard content to input.txt" })
keymap.set("n", "<leader>go", "<cmd>lua CompileAndRun()<CR>", { desc = "Compile and run code" })

-- Codeforces compile and run
function CompileAndRun()
  local file = vim.fn.expand("%:p")
  local file_name = vim.fn.expand("%:t:r")
  local file_extension = vim.fn.expand("%:e")
  local output_file = file_name .. ".out"
  local command = ""
  local show_output = "bat input.txt output.txt"

  if file_extension == "cpp" then
    command = "g++ -std=c++20 -o " .. output_file .. " " .. file .. " && ./" .. output_file
  elseif file_extension == "java" then
    command = "javac " .. file .. " && java " .. file_name
  elseif file_extension == "py" then
    command = "pypy3 " .. file .. " < input.txt > output.txt"
  else
    print("Unsupported file type")
    return
  end

  vim.cmd("w")
  vim.cmd("vsplit")
  vim.cmd("term " .. command .. " && " .. show_output)
end

-- Paste to input.txt
function PasteClipboardToFile()
  local clipboard_content = vim.fn.getreg("+")
  local file, err = io.open("input.txt", "w")
  if not file then
    print("Error opening file: " .. err)
    return
  end

  file:write(clipboard_content)
  file:close()
  print("Clipboard content pasted to input.txt")
end
