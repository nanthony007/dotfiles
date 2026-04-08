vim.pack.add({
  { src = "https://github.com/folke/snacks.nvim" },
})


require("snacks").setup({
  bigfile = { enabled = true },
  explorer = { enabled = true },
  gitbrowse = { enabled = true },
  gh = { enabled = true },
  indent = { enabled = true },
  image = { enabled = true },
  lazygit = { enabled = true },
  picker = { enabled = true },
  statuscolumn = { enabled = true },
})


vim.keymap.set("n", "<C-e>", "<cmd>lua Snacks.picker.explorer()<cr>", { desc = "Explorer" })
vim.keymap.set("n", "<leader>f", "<cmd>lua Snacks.picker.files()<cr>", { desc = "Smart Find Files" })
vim.keymap.set("n", "<leader>b", "<cmd>lua Snacks.picker.buffers()<cr>", { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>/", "<cmd>lua Snacks.picker.grep()<cr>", { desc = "Find grep" })
vim.keymap.set("n", "gd", "<cmd>lua Snacks.picker.lsp_definitions()<cr>", { desc = "Goto Definition" })
vim.keymap.set("n", "gD", "<cmd>lua Snacks.picker.lsp_declarations()<cr>", { desc = "Goto Declaration" })
vim.keymap.set("n", "gr", "<cmd>lua Snacks.picker.lsp_references()<cr>", { desc = "Goto References" })
vim.keymap.set("n", "gb", "<cmd>lua Snacks.gitbrowse()<cr>", { desc = "Git Browse" })
vim.keymap.set("n", "gi", "<cmd>lua Snacks.picker.gh_issue()<cr>", { desc = "GitHub Issue" })
vim.keymap.set("n", "gp", "<cmd>lua Snacks.picker.gh_pr()<cr>", { desc = "GitHub PR" })

