return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				ensure_installed = { "ts_ls", "jdtls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		after = "mason-lspconfig.nvim",
		dependencies = {
			"nvim-java/nvim-java",
		},
		config = function()
			require("lsp")
		end,
	},
}
