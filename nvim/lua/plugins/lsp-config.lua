return {
	-- LSP Configuration & Plugins
	"neovim/nvim-lspconfig",
	lazy = false,
	dependencies = {
		-- Automatically install LSPs to stdpath for neovim
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",

		-- Additional lua configuration, makes nvim stuff amazing!
		"folke/neodev.nvim",
	},
	opts = { -- options for vim.diagnostic.config()
		diagnostics = {
			underline = true,
			update_in_insert = false,
			virtual_text = {
				spacing = 4,
				source = "if_many",
				prefix = "●",
				-- this will set set the prefix to a function that returns the diagnostics icon based on the severity
				-- this only works on a recent 0.10.0 build. Will be set to "●" when not supported
				-- prefix = "icons",
			},
			severity_sort = true,
		},
		-- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
		-- Be aware that you also will need to properly configure your LSP server to
		-- provide the inlay hints.
		inlay_hints = {
			enabled = false,
		},
		-- add any global capabilities here
		capabilities = {},
		-- options for vim.lsp.buf.format
		-- `bufnr` and `filter` is handled by the LazyVim formatter,
		-- but can be also overridden when specified
		format = {
			formatting_options = nil,
			timeout_ms = nil,
		},
		servers = {
			gopls = {},
			pyright = {},
			ruff = {},
			rust_analyzer = {},
			lua_ls = {},
			marksman = {},
			jsonls = {},
			astro = {},
			svelte = {},
			tailwindcss = {},
			ts_ls = {},
			denols = {},
		},
		-- you can do any additional lsp server setup here
		-- return true if you don't want this server to be setup with lspconfig
		setup = {
			-- example to setup with typescript.nvim
			-- tsserver = function(_, opts)
			--   require("typescript").setup({ server = opts })
			--   return true
			-- end,
			-- Specify * to use this function as a fallback for any server
			-- ["*"] = function(server, opts) end,
		},
	},
	keys = {
		{ "K",  vim.lsp.buf.hover,        desc = "Hover item" },
		{ "gd", vim.lsp.buf.definition,   desc = "Goto Definition" },
		{ "gr", vim.lsp.buf.references,   desc = "Goto References" },
		{ "ca", vim.lsp.buf.code_action,  desc = "Code action" },
		{ "cr", vim.lsp.buf.rename,       desc = "Rename" },
		{ "[d", vim.diagnostic.goto_next, desc = "Next diagnostic" },
		{ "]d", vim.diagnostic.goto_prev, desc = "Previous diagnostic" },
	},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			settings = {
				["rust-analyzer"] = {
					lens = {
						enable = true,
					},
					-- Add clippy lints for Rust.
					check = {
						enable = true,
						allFeatures = true,
						command = "clippy",
						extraArgs = { "--no-deps" },
					},
				},
			},
		})
		-- prefer pyright for hover
		local on_attach = function(client, bufnr)
			if client.name == "ruff" then
				-- Disable hover in favor of Pyright
				client.server_capabilities.hoverProvider = false
			end
		end
		lspconfig.gopls.setup({})
		lspconfig.lua_ls.setup({})
		lspconfig.marksman.setup({})
		lspconfig.ruff.setup({
			on_attach = on_attach,
		})
		-- use ruff only for formatting/linting/imports
		lspconfig.pyright.setup({
			settings = {
				pyright = {
					disableOrganizeImports = true,
				},
				python = {
					analysis = {
						ignore = { "*" },
					},
				},
			},
		})
		lspconfig.astro.setup({})
		lspconfig.svelte.setup({})
		lspconfig.tailwindcss.setup({})
		lspconfig.ts_ls.setup({})

		lspconfig.denols.setup {
			on_attach = on_attach,
			root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
		}

		lspconfig.ts_ls.setup {
			on_attach = on_attach,
			root_dir = lspconfig.util.root_pattern("package.json"),
			single_file_support = false
		}
		lspconfig.tailwindcss.setup {
			on_attach = on_attach,
			root_dir = lspconfig.util.root_pattern("tailwind.config.js"),
			single_file_support = false
		}
	end,
}
