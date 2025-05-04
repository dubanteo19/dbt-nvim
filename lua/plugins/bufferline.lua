return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({})
		vim.keymap.set("n", "<leader>ww", ":bd!<CR>")
		vim.keymap.set("n", "<A-l>", ":BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<A-h>", ":BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<leader>bb", ":b#<CR>", {
			desc = "Select last buffer",
		})
		vim.keymap.set("n", "<leader>bp", ":BufferLinePick<CR>", {
			desc = "Select buffer to pick",
		})
	end,
}
