return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  init = function()
    -- do nothing
  end,
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          -- hide_gitignored = true,
        },
        follow_current_file = {
          enabled = true,
        },
      },
    })
    require("neo-tree.command").execute({
      action = "focus",   -- OPTIONAL, this is the default value
      source = "filesystem", -- OPTIONAL, this is the default value
      position = "right", -- OPTIONAL, this is the default value
    })
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
    vim.keymap.set("n", "<C-b>", ":Neotree buffers reveal right<CR>", {})
  end,
}
