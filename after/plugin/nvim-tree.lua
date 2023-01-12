vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        mappings = {
            list = {
                { key = "<C-x>", action = "vsplit" }
            }
        },
        side = "right",
        float = {
            eneable = true,
            quit_on_focus_loss = false
        }

    }
})


vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
