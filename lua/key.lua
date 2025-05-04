local M = {}

M.set_lsp_keymaps = function(bufnr)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
	vim.keymap.set("n", "<C-b>", vim.lsp.buf.definition, { buffer = bufnr })
	vim.keymap.set("n", "<C-k>", vim.lsp.buf.references, { buffer = bufnr })
	vim.keymap.set("n", "<A-CR>", vim.lsp.buf.code_action, { buffer = bufnr })
end

return M
