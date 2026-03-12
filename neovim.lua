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
					PmenuSel = { bg = c.surface0 },

					-- Picker UI (Telescope/Snacks active prompts)
					TelescopeMatching = { fg = c.teal, bold = true },
					TelescopeSelectionCaret = { fg = c.teal },
					TelescopeBorder = { fg = c.surface0 },
					TelescopePromptBorder = { fg = c.teal },

					-- Gray/Dim (Secondary context, Background elements)
					Comment = { fg = c.surface0, italic = true },
					SnacksIndent = { fg = c.surface0, nocombine = true },
					SnacksIndentScope = { fg = c.surface0, nocombine = true },
					SnacksIndentChunk = { fg = c.teal, nocombine = true },

					-- Magenta (Structural Logic & Punctuation)
					["@punctuation"] = { fg = c.mauve },
					["@punctuation.special"] = { fg = c.mauve }, -- String Interpolation
					["@operator"] = { fg = c.mauve },
					["@keyword"] = { fg = c.mauve, italic = true },
					["@keyword.control"] = { fg = c.mauve, italic = true, bold = true },

					-- Blue (Structural Architecture: Load-bearing)
					["@function"] = { fg = c.blue, bold = true },
					["@function.call"] = { fg = c.blue },
					["@function.method"] = { fg = c.blue, bold = true },
					["@function.method.call"] = { fg = c.blue },
					["@function.builtin"] = { fg = c.blue },
					["@function.macro"] = { fg = c.blue, bold = true },
					["@constant"] = { fg = c.blue, bold = true },
					["@type"] = { fg = c.blue, bold = true },
					["@module"] = { fg = c.blue, bold = true },

					-- Cyan (Contextual Metadata: References, Ephemeral info)
					["@variable.parameter"] = { fg = c.teal, italic = true },
					["@variable.builtin"] = { fg = c.teal, italic = true },
					["@boolean"] = { fg = c.teal },
					["@number"] = { fg = c.teal },

					-- Green (Cargo: Additions, Strings)
					["@string"] = { fg = c.green },

					-- Yellow/Red (Alarms: Warnings, Errors, Unstable States ONLY)
					["@keyword.exception"] = { fg = c.yellow, bold = true },
					DiagnosticWarn = { fg = c.yellow },
					DiagnosticError = { fg = c.red },
					Todo = { fg = c.yellow, bold = true, bg = c.surface0 },

					-- EDGE CASES & SPECIFIC LANGUAGES --

					-- Regex & Escapes (Separate from standard Green strings)
					["@string.regexp"] = { fg = c.mauve },
					["@string.escape"] = { fg = c.teal, bold = true },

					-- ERB / HTML Noise (Fade the wrapper, pop the Ruby logic)
					["@tag"] = { fg = c.text },
					["@tag.delimiter"] = { fg = c.surface0 },
					["@tag.attribute"] = { fg = c.text, italic = true },

					-- Fix Ruby Symbols (They were bleeding into Magenta)
					["@string.special.symbol"] = { fg = c.teal },
					["@symbol"] = { fg = c.teal },

					-- Bash Variables (Prevent bleeding into Magenta keywords)
					["@variable.parameter.bash"] = { fg = c.teal, italic = true },
					["@variable.bash"] = { fg = c.text },

					-- Specific Comment Alerts (Force High Contrast)
					["@comment.todo"] = { fg = c.base, bg = c.yellow, bold = true },
					["@comment.warning"] = { fg = c.base, bg = c.yellow, bold = true },
					["@comment.error"] = { fg = c.base, bg = c.red, bold = true },

					-- Standard Data (Foreground)
					["@variable"] = { fg = c.text },
					["@variable.member"] = { fg = c.text }, -- Prevent object property coloring
					["@property"] = { fg = c.text }, -- Prevent object property coloring
				}
			end,
		},
	},

	{
		"LazyVim/LazyVim",
		opts = { colorscheme = "catppuccin" },
	},
}
