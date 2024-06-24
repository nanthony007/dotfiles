return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			open_mapping = [[<c-\>]],
			direction = "float",
			float_opts = {
				border = "curved",
				height = 30,
				width = 120,
			},
		},
		keys = {
			{
				"<C-\\>",
				"<cmd>ToggleTerm direction=float size=60 float_opts=border = 'curved'<cr>",
				{ desc = "Toggle term" },
			},
			{ "t", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle term" } },
		},
	},
}
