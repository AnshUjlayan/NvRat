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

-- keymaps
vim.api.nvim_set_keymap("n", "<leader>pp", ":lua PasteClipboardToFile()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>go", ":lua CompileAndRun()<CR>", { noremap = true, silent = true })
