vim.pack.add({
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
})


require("gitsigns").setup({
    signs = {
		    add = { text = "+" },
				change = { text = "~" },
				delete = { text = "-" },
		},
})

vim.keymap.set("n", "[c", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Git previous hunk"} )
vim.keymap.set("n", "]c", "<cmd>Gitsigns next_hunk<cr>", { desc = "Git next hunk"} )
vim.keymap.set("n", "cp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Git preview hunk"} )
