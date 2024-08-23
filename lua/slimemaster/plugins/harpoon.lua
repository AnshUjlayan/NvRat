return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup({
      projects = {
        ["/home/alex/Projects"] = {
          term = {
            cmds = {
              "nvim",
            },
          },
        },
      },
    })
  end,
}
