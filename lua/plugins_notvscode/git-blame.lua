return {
	"f-person/git-blame.nvim",
	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	config = function()
		require("gitblame").setup({
			--Note how the `gitblame_` prefix is omitted in `setup`
			enabled = true,
			date_format = "%d-%m-%Y %H:%M:%S",
		})
	end,
}
