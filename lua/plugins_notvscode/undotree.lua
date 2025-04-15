return {
	"mbbill/undotree",
	event = { "BufReadPost", "BufNewFile", "BufWritePre" },
	config = function()
		vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)
		vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
		vim.opt.undofile = true
	end,
}
