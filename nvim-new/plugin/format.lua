vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim" },
})


require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format", "ruff_fix", "ruff_organize_imports" },
    rust = { "rustfmt" },
    go = { "gofumpt", "goimports", "gofmt" },
    fish = { "fish_indent" },
    json = { "jq" },
    just = { "just" },
    sh = { "shfmt", "shellharden" },
    typst = { "typstfmt" },
    md = { "mdformat" },
    docker = { "dockerfmt" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
})
