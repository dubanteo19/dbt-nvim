return {
	"nvim-java/nvim-java",
	priority = 1000,
	lazy = false,
	config = function()
		require("java").setup(require("lsp.java-settings"))
		require("lspconfig").jdtls.setup(require("lsp.jdtls"))
	end,
}
