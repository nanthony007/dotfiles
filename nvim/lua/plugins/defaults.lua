return {
	{ "nvim-lua/plenary.nvim", event = "VeryLazy" },
	"tpope/vim-sleuth", -- smart shift/tabstop
	{ "nvim-tree/nvim-web-devicons", opts = {}, event = "VeryLazy" },
	{ "stevearc/dressing.nvim", opts = {}, event = "VeryLazy" },
	{
		"folke/todo-comments.nvim",
		opts = {},
		event = "VeryLazy",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{ "<leader>t", "<cmd>TodoTrouble<cr>", "Trouble Todo" },
			{ "<leader>T", "<cmd>TodoTelescope<cr>", "Telescope Todo" },
		},
	},
	-- these two need custom setup not 'opts' because they have unique git names
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
	{
		"MunifTanjim/nui.nvim",
		lazy = false,
	},
}
