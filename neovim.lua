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
					base = "#080608",
					mantle = "#080608",
					crust = "#080608",

					surface0 = "#362C38",
					surface1 = "#362C38",
					surface2 = "#362C38",

					overlay0 = "#875E2E",
					overlay1 = "#875E2E",
					overlay2 = "#875E2E",

					text = "#C2AE93",
					subtext0 = "#C2AE93",
					subtext1 = "#C2AE93",

					red = "#B83E46",
					maroon = "#B83E46",

					peach = "#DCAE3D",
					yellow = "#DCAE3D",

					green = "#729B59",

					teal = "#48A89F",
					sky = "#48A89F",

					sapphire = "#5C84A3",
					blue = "#5C84A3",
					lavender = "#5C84A3",

					rosewater = "#D47B36",
					flamingo = "#D47B36",

					pink = "#7C5796",
					mauve = "#7C5796",
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

					Comment = { fg = c.overlay0, italic = true },

					-- brackets only: [] {} ()
					["@punctuation.bracket"] = { fg = c.flamingo },

					-- delimiters like ; , . :
					["@punctuation.delimiter"] = { fg = c.flamingo },

					-- Snacks Indent Overrides
					SnacksIndent = { fg = c.surface0, nocombine = true },
					SnacksIndentScope = { fg = c.overlay2, nocombine = true },
					SnacksIndentChunk = { fg = c.overlay2, nocombine = true },
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
