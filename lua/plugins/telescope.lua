return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			local my_live_grep = function()
				builtin.live_grep({
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--hidden",
						"--glob=!node_modules/**", -- Ignore node_modules
					},
				})
			end

			local find_files_in_src = function()
				builtin.find_files({ cwd = "src" })
			end
			vim.keymap.set("n", "<C-e>", find_files_in_src, {})
			vim.keymap.set("n", "<C-A-e>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", my_live_grep, {})
			vim.keymap.set("n", "<leader>pd", ":NeovimProjectDiscover<CR>", {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
