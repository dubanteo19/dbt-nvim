local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
		vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
	end,
	root_dir = require("lspconfig").util.root_pattern(".eslintrc", "package.json", ".git"),
}
