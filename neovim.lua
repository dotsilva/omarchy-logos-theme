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
					base = "#040B0A",
					mantle = "#040B0A",
					crust = "#040B0A",
					surface0 = "#243342",
					surface1 = "#243342",
					surface2 = "#243342",
					overlay0 = "#243342",
					overlay1 = "#243342",
					overlay2 = "#243342",
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
					-- Base UI (Blue = Active Focus)
					Cursor = { fg = c.base, bg = c.blue },
					lCursor = { fg = c.base, bg = c.blue },
					CursorIM = { fg = c.base, bg = c.blue },
					Visual = { bg = c.surface0 },
					CursorLine = { bg = c.surface0 },
					CursorLineNr = { fg = c.blue, bold = true },
					Search = { fg = c.base, bg = c.blue },
					IncSearch = { fg = c.base, bg = c.blue },
					PmenuSel = { bg = c.surface0 },

					-- Gray/Dim (Secondary text)
					Comment = { fg = c.surface0, italic = true },
					SnacksIndent = { fg = c.surface0, nocombine = true },
					SnacksIndentScope = { fg = c.surface0, nocombine = true },
					SnacksIndentChunk = { fg = c.surface0, nocombine = true },

					-- Magenta (Structural Logic & Punctuation)
					["@punctuation.bracket"] = { fg = c.mauve },
					["@punctuation.delimiter"] = { fg = c.mauve },
					["@operator"] = { fg = c.mauve },
					["@keyword"] = { fg = c.mauve, italic = true },
					["@keyword.control"] = { fg = c.mauve, italic = true, bold = true },
					["@keyword.function"] = { fg = c.mauve, italic = true },

					-- Blue (Structural Architecture: Load-bearing)
					["@function"] = { fg = c.blue, bold = true },
					["@function.call"] = { fg = c.blue },
					["@method"] = { fg = c.blue, bold = true },
					["@method.call"] = { fg = c.blue },
					["@constant"] = { fg = c.blue, bold = true },
					["@type"] = { fg = c.blue, bold = true },

					-- Cyan (Contextual Metadata: References, Ephemeral info)
					["@symbol"] = { fg = c.teal },
					["@variable.parameter"] = { fg = c.teal, italic = true },
					["@variable.builtin"] = { fg = c.teal, italic = true },

					-- Green (Cargo: Additions, Strings)
					["@string"] = { fg = c.green },

					-- Yellow (Alarms: Warnings, Unstable States, Exceptions ONLY)
					["@exception"] = { fg = c.yellow, bold = true },
					DiagnosticWarn = { fg = c.yellow },
					Todo = { fg = c.yellow, bold = true, bg = c.surface0 },

					-- Fix Bash built-ins and macros showing as Red
					["@function.builtin"] = { fg = c.blue },
					["@function.macro"] = { fg = c.blue },
					["@keyword.builtin"] = { fg = c.blue },

					-- Raw Data Primitives (Cyan: Ephemeral Info / Contextual Metadata)
					["@boolean"] = { fg = c.teal },
					["@number"] = { fg = c.teal },
					["@float"] = { fg = c.teal },

					-- Standard Data (Foreground)
					["@variable"] = { fg = c.text },
				}
			end,
		},
	},

	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "catppuccin" },
	},
}
