return {
	{
		"williamboman/mason.nvim",
		version = "^1.0.0",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		version = "^1.0.0",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				ensure_installed = { "ts_ls"  },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		after = "mason-lspconfig.nvim",
		config = function()
			require("lsp")
		end,
	},
}
