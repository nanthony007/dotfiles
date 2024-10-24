return {
	{
		"onsails/lspkind.nvim",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
		},
		config = function()
			local cmp = require("cmp")
			local defaults = require("cmp.config.default")()
			require("luasnip.loaders.from_vscode").lazy_load()

			vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })

			cmp.setup({
				completion = {
					completeopt = "menu,menuone,noinsert",
				},
				formatting = {
					-- format = lspkind.cmp_format(),
					format = function(entry, vim_item)
						if vim.tbl_contains({ "path" }, entry.source.name) then
							local icon, hl_group =
									require("nvim-web-devicons").get_icon(entry:get_completion_item().label)
							if icon then
								vim_item.kind = icon
								vim_item.kind_hl_group = hl_group
								return vim_item
							end
						end
						return require("lspkind").cmp_format({ mode = "symbol_text", with_text = false })(
							entry,
							vim_item
						)
					end,
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					-- completion = cmp.config.window.bordered(),
					-- documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "buffer" },
					{ name = "path" },
				}),
				experimental = {
					ghost_text = {
						hl_group = "CmpGhostText",
					},
				},
				sorting = defaults.sorting,
			})
		end,
	},
}
