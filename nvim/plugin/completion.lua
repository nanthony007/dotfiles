vim.pack.add({
	{
		src = "https://github.com/saghen/blink.cmp",
		version = "v1.*",
	},
})

vim.cmd("highlight Pmenu guibg=none")
vim.cmd("highlight PmenuExtra guibg=none")
vim.cmd("highlight FloatBorder guibg=none")
vim.cmd("highlight NormalFloat guibg=none")

require("blink.cmp").setup({
	fuzzy = { implementation = "prefer_rust_with_warning" },
	keymap = { preset = "enter" },
	signature = { enabled = true },
	sources = {
		default = { "lsp", "path" },
	},
	appearance = {
		use_nvim_cmp_as_default = false,
		nerd_font_variant = "normal",
	},
	completion = {
		documentation = {
			auto_show = false,
			window = {
				border = nil,
				scrollbar = false,
				winhighlight = "Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc",
			},
		},
		menu = {
			border = nil,
			scrolloff = 1,
			scrollbar = false,
			draw = {
				columns = {
					{ "kind_icon" },
					{ "label", "label_description", gap = 1 },
					{ "kind" },
				},
			},
		},
	},
})
