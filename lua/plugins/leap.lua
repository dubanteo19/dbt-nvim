return {
	"ggandor/leap.nvim",
	dependencies = {
		{ "tpope/vim-repeat" }, -- Specify repeat.vim here
	},
	config = function()
		require("leap").create_default_mappings()
		vim.keymap.set({ "n", "x", "o" }, "<Leader>s", function()
			require("leap").leap({ target_windows = { vim.fn.win_getid() } })
		end)
	end,
}
