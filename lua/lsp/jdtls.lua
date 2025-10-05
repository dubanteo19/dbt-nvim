local keymaps = require("key")

return {
	on_attach = function(client, bufnr)
		keymaps.set_lsp_keymaps(bufnr)
		vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
		vim.keymap.set("n", "<leader>oi", function()
			vim.lsp.buf.code_action({
				context = { only = { "source.organizeImports" } },
				apply = true,
			})
		end)
	end,
}
