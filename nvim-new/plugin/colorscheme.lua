vim.pack.add({
  { src = "https://github.com/catppuccin/nvim", as = "catppuccin" },
  { src = "https://github.com/sainnhe/gruvbox-material" },
})

require("catppuccin").setup({
    transparent_background = true,
    term_colors = true,
    integrations = {
      blink_cmp = true,
      fzf = true,
      gitsigns = true,
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
      noice = true,
      notify = true,
      semantic_tokens = true,
      snacks = true,
      treesitter = true,
      treesitter_context = true,
    },
})

vim.cmd.colorscheme("catppuccin")
