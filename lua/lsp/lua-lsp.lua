-- lsp/lua-lsp.lua
local keymaps = require("key")
return {
	on_attach = function(client, bufnr)
		keymaps.set_lsp_keymaps(bufnr)
		vim.keymap.set("n", "<leader>k", vim.diagnostic.open_float, { buffer = bufnr })
	end,
}
