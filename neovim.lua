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
					surface0 = "#484848",
					surface1 = "#484848",
					surface2 = "#484848",
					overlay0 = "#484848",
					overlay1 = "#484848",
					overlay2 = "#484848",
					text = "#C2AE93",
					subtext0 = "#C2AE93",
					subtext1 = "#C2AE93",
					red = "#B83E46",
					maroon = "#B83E46",
					peach = "#DCAE3D",
					yellow = "#DCAE3D",
					green = "#838F46",
					teal = "#3AAB87",
					sky = "#3AAB87",
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
					Search = { fg = c.base, bg = c.teal },
					IncSearch = { fg = c.base, bg = c.teal },

					-- Visual Selection: Cyan background, Terminal Base text (Active/Ephemeral)
					Visual = { bg = c.teal, fg = c.base, bold = true },

					-- Cursor Line: Subtle structural underline so Treesitter syntax highlighting survives
					CursorLine = { bg = "NONE", underdouble = true, sp = c.surface1 },
					CursorLineNr = { fg = c.teal, bold = true }, -- Cyan anchor for the eyes

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

					-- Word under cursor (Solid Cyan Block - Matches Visual)
					LspReferenceText = { bg = c.teal, fg = c.base, bold = true },
					LspReferenceRead = { bg = c.teal, fg = c.base, bold = true },
					LspReferenceWrite = { bg = c.teal, fg = c.base, bold = true },

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

					-- Force all links/URLs to Cyan (Active Interaction)
					["@text.uri"] = { fg = c.teal, underline = true },
					["@string.special.url"] = { fg = c.teal, underline = true },
					underlined = { fg = c.teal, underline = true },
					["@text.reference"] = { fg = c.teal, bold = true },

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
		-- 1. Thick, Square Command Line
		"folke/noice.nvim",
		opts = {
			views = {
				cmdline_popup = {
					border = {
						style = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
					},
				},
				cmdline_popupmenu = {
					border = {
						style = { "┏", "━", "┓", "┃", "┛", "━", "┗", "┃" },
					},
				},
			},
		},
	},

	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "catppuccin" },
	},
}
