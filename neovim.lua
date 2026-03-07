return {
  {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "dracula-soft",
      colors = {
        bg = "#151515",
        fg = "#d2d2d2",
        black = "#3E4452",
        white = "#d2d2d2",
        -- bright variations are bloat
        bright_red = "#DD6E6B",
        bright_green = "#87E58E",
        bright_yellow = "#E8EDA2",
        bright_blue = "#BAA0E8",
        bright_magenta = "#E48CC1",
        bright_cyan = "#A7DFEF",
        bright_white = "#d2d2d2",
      },
      overrides = {
        Visual = { bg = "#3E4452" },
        CursorLine = { bg = "#3E4452" }
      },
    }
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula-soft",
    },
  },
}
