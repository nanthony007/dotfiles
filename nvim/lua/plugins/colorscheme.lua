return {
	{ "sainnhe/gruvbox-material", opts = {
		gruvbox_material_transparent_background = 2,
	} },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			enable = {
				terminal = true,
			},
			styles = {
				transparency = true,
			},
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			transparent_background = true,
			term_colors = true,
			integrations = {
				cmp = true,
				flash = true,
				gitsigns = true,
				illuminate = true,
				indent_blankline = { enabled = true },
				lsp_trouble = true,
				mason = true,
				markdown = true,
				mini = true,
				native_lsp = {
					enabled = true,
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
				navic = { enabled = true, custom_bg = "lualine" },
				neotree = true,
				noice = true,
				semantic_tokens = true,
				telescope = {
					enabled = true,
					style = "nvchad",
				},
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		},
	},
}
