return {
  "stevearc/aerial.nvim",
  event = "VeryLazy",
  config = function()
    require("aerial").setup()

    vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle! left<CR>")
  end,
}
