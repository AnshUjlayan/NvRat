return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim", "folke/which-key.nvim" },
  event = "VeryLazy",
  config = function()
    local harpoon = require "harpoon"
    local conf = require("telescope.config").values
    local wk = require "which-key"

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    harpoon.setup()

    -- stylua: ignore
    wk.add {
      {
        "<leader>hx", function() harpoon:list():add() end,
        icon = "󰓾", desc = "harpoon mark file",
      },
      {
        "<leader>ht", function() toggle_telescope(harpoon:list()) end,
        icon = "", desc = "harpoon toggle menu",
      },
      {
        "<leader>hl", function() harpoon:list():next() end,
        icon = "󰛂", desc = "harpoon next mark",
      },
      {
        "<leader>hp", function() harpoon:list():prev() end,
        icon = "󰛁", desc = "harpoon prev mark",
      },
      {
        "<leader>hd", function() harpoon:list():remove() end,
        icon = "", desc = "harpoon delete mark",
      },
      {
        "<leader>hc", function() harpoon:list():clear() end,
        icon = "󰚤", desc = "harpoon nuke marks",
      },
    }
  end,
}
