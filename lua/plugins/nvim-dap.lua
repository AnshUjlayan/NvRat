return {
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
    },
  },
  {
    "mfussenegger/nvim-dap",
    -- stylua: ignore
    keys = {
      { "<leader>db", mode = { "n" }, function() require("dap").toggle_breakpoint() end, desc = "Nvim-dap Toggle breakpoint" },
      { "<leader>dc", mode = { "n" }, function() require("dap").continue() end, desc = "Nvim-dap Continue" },
      { "<leader>di", mode = { "n" }, function() require("dapui").toggle() end, desc = "Nvim-dap Toggle UI" },
      { "<leader>dr", mode = { "n" }, function() require("dap").repl.open() end, desc = "Nvim-dap Open REPL" },
      { "<leader>ds", mode = { "n" }, function() require("dap").step_into() end, desc = "Nvim-dap Step into" },
      { "<leader>do", mode = { "n" }, function() require("dap").step_out() end, desc = "Nvim-dap Step out" },
      { "<leader>dl", mode = { "n" }, function() require("dap").step_over() end, desc = "Nvim-dap Step over" },
    },
  },
}
