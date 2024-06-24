return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		theme = "catppuccin",
		sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { { "filename", path = 1 }, "diagnostics" },
			lualine_x = {
				{
					"diff",
					source = function()
						local gitsigns = vim.b.gitsigns_status_dict
						if gitsigns then
							return {
								added = gitsigns.added,
								modified = gitsigns.changed,
								removed = gitsigns.removed,
							}
						end
					end,
				},
				"branch",
			},
			lualine_y = {},
			lualine_z = {},
		},
	},
}
