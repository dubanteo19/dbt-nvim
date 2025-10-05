local capabilities = require("cmp_nvim_lsp").default_capabilities()
local keymaps = require("key")
local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = "",
	}
	vim.lsp.buf.execute_command(params)
end

return {
	capabilities = capabilities,
	settings = {
		typescript = {
			inlayHints = { enabled = false },
			codeLens = { enabled = false },
		},
	},
	root_dir = require("lspconfig").util.root_pattern("tsconfig.json", "package.json", ".git"),
	flags = { debounce_text_changes = 150 },
	single_file_support = false,
	on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.document_range_formatting = false
		vim.keymap.set("n", "<leader>oi", organize_imports, { buffer = bufnr, desc = "Organize Imports" })
		keymaps.set_lsp_keymaps(bufnr)
	end,
}
