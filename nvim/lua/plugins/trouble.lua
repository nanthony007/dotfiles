return {
	{
		"folke/trouble.nvim",
		cmd = { "TroubleToggle", "Trouble" },
		opts = { use_diagnostic_signs = true },
		keys = {
			-- these are in telescope now
			-- but i also like this interface
			{ "<leader>d", "<cmd>Trouble diagnostics<cr>", desc = "Document Diagnostics (Trouble)" },
			-- { "<leader>D", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics (Trouble)" },
			-- { "<leader>xL", "<cmd>TroubleToggle loclist<cr>", desc = "Location List (Trouble)" },
			-- { "<leader>xQ", "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List (Trouble)" },
		},
	},
}
