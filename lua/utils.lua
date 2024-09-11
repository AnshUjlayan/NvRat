local M = {}

-- Function to compile and run based on file type
M.compile_and_run = function()
  local filetype = vim.bo.filetype
  local cmd = ""
  if filetype == "cpp" then
    cmd = "g++-14 -std=c++20 % -o %< && time ./%< && bat input.txt output.txt"
  elseif filetype == "go" then
    cmd = "go run % && bat input.txt output.txt"
  elseif filetype == "rust" then
    cmd = "cargo run"
  elseif filetype == "python" then
    cmd = "python3 % < input.txt > output.txt && bat input.txt output.txt"
  else
    print "Unsupported file type"
    return
  end

  -- Open a new split and run the command
  vim.cmd("vsplit term://" .. cmd)
  vim.cmd "startinsert"
end

-- Function to paste clipboard content into input.txt
M.paste_clipboard = function()
  local input_file = "input.txt"
  local content = vim.fn.getreg "+"
  local file = io.open(input_file, "w")
  if file then
    file:write(content)
    file:close()
    print "Pasted clipboard content into input.txt"
  else
    print "Error opening input.txt"
  end
end

return M
