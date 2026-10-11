vim.pack.add({
	{ src = "https://github.com/catppuccin/nvim", as = "catppuccin" },
	{ src = "https://github.com/sainnhe/gruvbox-material" },
  { src = "https://github.com/rebelot/kanagawa.nvim" },
})

vim.g.gruvbox_material_background = "medium"
vim.g.gruvbox_material_foreground = "material"
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_better_performance = 1

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

require('kanagawa').setup({
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         
    dimInactive = false,        
    terminalColors = true,     
    colors = {                
        palette = {},
        theme = {
            all = {
                ui = {
                    bg_gutter = "none"
                }
            }
        }
    },
    overrides = function(colors)
        return {}
    end,
    theme = "wave",            
    background = {            
        dark = "wave",       
        light = "lotus"
    },
})

vim.cmd.colorscheme("kanagawa-wave")
