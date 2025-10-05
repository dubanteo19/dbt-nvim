return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
		})
		vim.keymap.set("n", "<C-A-l>", function()
			vim.lsp.buf.format()
			vim.cmd("write")
		end, {})
	end,
}
