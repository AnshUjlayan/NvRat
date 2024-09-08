return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"
    local config = require "nvchad.configs.cmp"

    -- Change the mappings for insert mode
    config.mapping["<C-j>"] = cmp.mapping.select_next_item { behavior = cmp.SelectBehavior.Insert }
    config.mapping["<C-k>"] = cmp.mapping.select_prev_item { behavior = cmp.SelectBehavior.Insert }

    -- Optionally, disable the Tab and Shift-Tab mappings if you want
    config.mapping["<Tab>"] = nil
    config.mapping["<S-Tab>"] = nil

    return config
  end,
}
