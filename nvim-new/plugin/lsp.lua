vim.pack.add{
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { 
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
  },
}

-- disabled bc prefer `ty` format for now
-- vim.lsp.enable("pyrefly")
vim.lsp.enable({
  -- lua
  "lua_ls",
  -- python
  -- disabled bc prefer `ty` for now
  -- "pyrefly"
  "ruff",
  "ty",
  -- rust
  "rust_analyzer",
  -- go
  "gopls",
  -- docker
  "docker-language-service",
  "compose-language-service",
})

vim.diagnostic.config({ virtual_text = true })

require("nvim-treesitter.configs").setup({
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
