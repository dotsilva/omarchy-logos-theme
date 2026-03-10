return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		opts = {
			flavour = "mocha",
			term_colors = false,
			color_overrides = {
				mocha = {
					base = "#121212",
					mantle = "#121212",
					crust = "#121212",

					surface0 = "#3A3A3A",
					surface1 = "#3A3A3A",
					surface2 = "#3A3A3A",

					overlay0 = "#3A3A3A",
					overlay1 = "#3A3A3A",
					overlay2 = "#3A3A3A",

					text = "#D5D5D5",
					subtext0 = "#D5D5D5",
					subtext1 = "#D5D5D5",

					red = "#A83838",
					maroon = "#A83838",

					peach = "#D4AF37",
					yellow = "#D4AF37",

					green = "#6A8F5C",

					teal = "#4A968C",
					sky = "#4A968C",

					sapphire = "#5B85AA",
					blue = "#5B85AA",
					lavender = "#5B85AA",

					rosewater = "#825EAA",
					flamingo = "#825EAA",
					pink = "#825EAA",
					mauve = "#825EAA",
				},
			},
			custom_highlights = function(c)
				return {
					Cursor = { fg = c.base, bg = c.yellow },
					lCursor = { fg = c.base, bg = c.yellow },
					CursorIM = { fg = c.base, bg = c.yellow },

					Visual = { bg = c.surface0 },
					CursorLine = { bg = c.surface0 },
					CursorLineNr = { fg = c.yellow, bold = true },

					Search = { fg = c.base, bg = c.yellow },
					IncSearch = { fg = c.base, bg = c.yellow },
					PmenuSel = { bg = c.surface0 },
				}
			end,
		},
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "catppuccin",
		},
	},
}
