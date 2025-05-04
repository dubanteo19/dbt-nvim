return {
	"MeanderingProgrammer/dashboard.nvim",
	event = "VimEnter",
	dependencies = {
		{ "MaximilianLloyd/ascii.nvim", dependencies = { "MunifTanjim/nui.nvim" } },
	},
	config = function()
		require("dashboard").setup({
			directories = {
				"~/.config",
				"~/.config/nvim",
				"~/dev",
				"~/dev/tai-lieu-xanh-project/tai-lieu-xanh-app",
			},
		})
	end,
}
