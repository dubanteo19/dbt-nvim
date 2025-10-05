return {
	"nvim-java/nvim-java",
	lazy = false,
	priority = 1000,
	config = function()
		require("java").setup(require("lsp.java-settings"))
		require("lspconfig").jdtls.setup(require("lsp.jdtls"))
	end,
}
