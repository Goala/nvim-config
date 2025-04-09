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
				window = {
					mappings = {
						["<leader>p"] = "preview_image", -- " or another map
					},
				},
				commands = {
					preview_image = function(state)
						local node = state.tree:get_node()
						if node.type == "file" then
							-- ensure imagemagic is installed
							os.execute("display " .. node.path .. "&")
						end
					end,
				},
			},
		})
		require("neo-tree.command").execute({
			action = "wrong_action", -- not sure what to put here to keep closed on startup
			source = "filesystem",
			position = "right",
		})
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal right<CR>", {})
		vim.keymap.set("n", "<leader>b", ":Neotree buffers reveal right<CR>", {})
		vim.keymap.set("n", "<leader>gg", ":Neotree git_status reveal right<CR>", {})
	end,
}
