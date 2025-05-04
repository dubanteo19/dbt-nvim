return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },

	config = function()
		local ts_config = require("nvim-treesitter.configs")
		ts_config.setup({
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
		require("nvim-ts-autotag").setup()
	end,
}
