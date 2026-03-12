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
					base = "#0C0C0C",
					mantle = "#0C0C0C",
					crust = "#0C0C0C",
					surface0 = "#3C3C3C",
					surface1 = "#3C3C3C",
					surface2 = "#3C3C3C",
					overlay0 = "#3C3C3C",
					overlay1 = "#3C3C3C",
					overlay2 = "#3C3C3C",
					text = "#C2AE93",
					subtext0 = "#C2AE93",
					subtext1 = "#C2AE93",
					red = "#B83E46",
					maroon = "#B83E46",
					peach = "#DCAE3D",
					yellow = "#DCAE3D",
					green = "#838F46",
					teal = "#40BE96",
					sky = "#40BE96",
					sapphire = "#6C9FBF",
					blue = "#6C9FBF",
					lavender = "#6C9FBF",
					rosewater = "#8B476D",
					flamingo = "#8B476D",
					pink = "#8B476D",
					mauve = "#8B476D",
				},
			},
			custom_highlights = function(c)
				return {
					-- Base UI (Cyan = Active Focus/Interaction)
					Cursor = { fg = c.base, bg = c.teal },
					lCursor = { fg = c.base, bg = c.teal },
					CursorIM = { fg = c.base, bg = c.teal },
					Visual = { bg = c.surface0 },
					CursorLine = { bg = c.surface0 },
					CursorLineNr = { fg = c.teal, bold = true },
					Search = { fg = c.base, bg = c.teal },
					IncSearch = { fg = c.base, bg = c.teal },

					-- Popup Menus (Autocomplete for Cmdline & Code)
					Pmenu = { fg = c.text, bg = c.base }, -- Standard text on dark background
					PmenuSel = { fg = c.base, bg = c.teal, bold = true }, -- Active selection is Cyan
					PmenuSbar = { bg = c.base },
					PmenuThumb = { bg = c.surface0 },
					WildMenu = { fg = c.base, bg = c.teal, bold = true }, -- Native command line selection

					-- Blink Autocomplete Specifics
					BlinkCmpMenu = { fg = c.text, bg = c.base },
					BlinkCmpMenuSelection = { fg = c.base, bg = c.teal, bold = true },
					BlinkCmpLabel = { fg = c.text }, -- Force unselected text to be fully readable
					BlinkCmpLabelMatch = { fg = c.teal, bold = true }, -- Matching typed chars are Cyan

					-- Picker UI (Telescope/Snacks active prompts)
					TelescopeMatching = { fg = c.teal, bold = true },
					TelescopeSelectionCaret = { fg = c.teal },
					TelescopeBorder = { fg = c.surface0 },
					TelescopePromptBorder = { fg = c.teal },

					-- Gray/Dim (Secondary context, Background elements)
					Comment = { fg = c.surface0, italic = true },
					-- Indent Lines (Cyan for the active scope you are currently inside)
					SnacksIndent = { fg = c.surface0, nocombine = true }, -- Inactive lines stay dim gray
					SnacksIndentScope = { fg = c.teal, nocombine = true }, -- Active scope lights up Cyan
					SnacksIndentChunk = { fg = c.teal, nocombine = true },

					-- Noice UI (Command line interactions)
					NoiceCmdlinePopupBorder = { fg = c.teal },
					NoiceCmdlineIcon = { fg = c.teal },
					NoiceCmdlinePopupBorderSearch = { fg = c.teal },
					NoiceCmdlineIconSearch = { fg = c.teal },

					-- Flash.nvim (Prevent jump labels from using Red/Yellow Alarms)
					FlashLabel = { fg = c.base, bg = c.teal, bold = true },
					FlashMatch = { fg = c.text, bg = c.surface0 },
					FlashCurrent = { fg = c.base, bg = c.teal, bold = true },

					-- Magenta (Structural Logic, Brackets & Punctuation)
					["@punctuation"] = { fg = c.mauve },
					["@punctuation.bracket"] = { fg = c.mauve },
					["@punctuation.delimiter"] = { fg = c.mauve },
					["@punctuation.special"] = { fg = c.mauve }, -- String Interpolation brackets
					["@operator"] = { fg = c.mauve },
					["@keyword"] = { fg = c.mauve, italic = true },
					["@keyword.control"] = { fg = c.mauve, italic = true, bold = true },
				}
			end,
		},
	},

	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "catppuccin" },
	},
}
