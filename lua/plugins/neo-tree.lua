return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<leader>eq", ":Neotree toggle left<CR>", {})
		vim.keymap.set("n", "<leader>ee", ":Neotree reveal left<CR>", {})
	end,
}
