return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	lazy = false,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
			rust = { "rustfmt" },
			go = { "gofumpt", "goimports", "gofmt" },
			fish = { "fish_indent" },
			json = { "jq" },
			just = { "just" },
			sh = { "shfmt", "shellcheck" },
			typst = { "typstfmt" },
			md = { "mdformat" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
}
