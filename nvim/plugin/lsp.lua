vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
})

-- disabled bc prefer `ty` format for now
-- vim.lsp.enable("pyrefly")
vim.lsp.enable({
	-- lua
	"lua_ls",
	-- python
	"pyrefly",
	"ruff",
	"ty",
	"basedpyright",
	-- rust
	"rust_analyzer",
	-- go
	"gopls",
	-- docker
	"docker_language_server",
})

vim.lsp.config("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			cargo = {
				features = "all",
			},
		},
	},
})

vim.lsp.config("basedpyright", {
	settings = {
		["basedpyright"] = {
			analysis = {
				typeCheckingMode = "strict",
				diagnosticSeverityOverrides = {
					reportUnknownMemberType = "information",
				},
			},
		},
	},
})

vim.diagnostic.config({ virtual_text = true })

require("nvim-treesitter.config").setup({
	ensure_installed = {
		"lua",
		"python",
		"rust",
		"json",
		"dockerfile",
		"typst",
		"markdown",
		"go",
	},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
