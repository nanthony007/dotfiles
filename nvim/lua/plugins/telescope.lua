return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	version = false, -- telescope did only one release, so use HEAD for now
	keys = {
		{
			"<leader>,",
			"<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
			desc = "Switch Buffer",
		},
		-- find
		{ "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files (root dir)" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Grep" },
		-- search
		{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
		{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
		{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
		{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
		{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
	},
	opts = function()
		local actions = require("telescope.actions")

		local open_with_trouble = function(...)
			return require("trouble.providers.telescope").open_with_trouble(...)
		end
		local open_selected_with_trouble = function(...)
			return require("trouble.providers.telescope").open_selected_with_trouble(...)
		end

		return {
			defaults = {
				prompt_prefix = " ",
				selection_caret = " ",
				-- open files in the first window that is an actual file.
				-- use the current window if no other window is available.
				get_selection_window = function()
					local wins = vim.api.nvim_list_wins()
					table.insert(wins, 1, vim.api.nvim_get_current_win())
					for _, win in ipairs(wins) do
						local buf = vim.api.nvim_win_get_buf(win)
						if vim.bo[buf].buftype == "" then
							return win
						end
					end
					return 0
				end,
				path_display = {
					"filename_first",
				},
				file_ignore_patterns = {
					"node_modules",
				},
			},
			mappings = {
				i = {
					["<c-t>"] = open_with_trouble,
					["<a-t>"] = open_selected_with_trouble,
					["<C-Down>"] = actions.cycle_history_next,
					["<C-Up>"] = actions.cycle_history_prev,
					["<C-f>"] = actions.preview_scrolling_down,
					["<C-b>"] = actions.preview_scrolling_up,
				},
				n = {
					["q"] = actions.close,
				},
			},
			pickers = {
				find_files = {
					theme = "dropdown",
				},
				buffers = {
					theme = "dropdown",
					previewer = false,
				},
				diagnostics = {
					theme = "dropdown",
				},
			},
		}
	end,
}
