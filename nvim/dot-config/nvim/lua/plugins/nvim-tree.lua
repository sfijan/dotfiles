return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				width = 40,
			},
		})
		vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
	end,
}
