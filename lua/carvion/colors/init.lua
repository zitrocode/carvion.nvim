local palette = require("carvion.colors.palette")
local util = require("carvion.util")

local M = {}

function M.setup(opts)
  opts = require("carvion.config").extend(opts)
  local v = palette.dark

  ---@class carvion.ColorScheme
  local colors = {}

  colors.ui = {
    bg = {
      default = v.bg,
      sidebar = util.lighten(v.bg, 0.02),
      float = util.lighten(v.bg, 0.04),
      option = util.lighten(v.bg, 0.08),
      none = "NONE",
    },

    fg = {
      default = v.fg,
      muted = util.blend(v.fg, v.bg, 0.68),
      subtle = util.blend(v.fg, v.bg, 0.52),
      faint = util.blend(v.fg, v.bg, 0.48),
      disabled = util.blend(v.fg, v.bg, 0.32),
      inverse = v.bg,
      none = "NONE",
    },

    border = {
      default = util.lighten(v.bg, 0.18),
      subtle = util.lighten(v.bg, 0.12),
      strong = util.lighten(v.bg, 0.28),
    },

    cursorline = util.lighten(v.bg, 0.04),
    visual = util.blend(v.fg, v.bg, 0.12),
  }

  colors.accent = {
    orange = {
      default = v.orange,
      soft = util.blend(v.orange, v.bg, 0.45),
      dim = util.blend(v.orange, v.bg, 0.25),
    },

    green = {
      default = v.green,
      soft = util.blend(v.green, v.bg, 0.45),
      dim = util.blend(v.green, v.bg, 0.25),
    },

    blue = {
      default = v.blue,
      soft = util.blend(v.blue, v.bg, 0.45),
      dim = util.blend(v.blue, v.bg, 0.25),
    },

    purple = {
      default = v.purple,
      soft = util.blend(v.purple, v.bg, 0.45),
      dim = util.blend(v.purple, v.bg, 0.25),
    },

    red = {
      default = v.red,
      soft = util.blend(v.red, v.bg, 0.45),
      dim = util.blend(v.red, v.bg, 0.25),
    },

    yellow = {
      default = v.yellow,
      soft = util.blend(v.yellow, v.bg, 0.45),
      dim = util.blend(v.yellow, v.bg, 0.25),
    },

    neutral = {
      default = v.neutral,
      soft = util.blend(v.neutral, v.bg, 0.45),
      dim = util.blend(v.neutral, v.bg, 0.25),
    },
  }

  colors.syntax = {
    comments = util.blend(v.fg, v.bg, 0.42),

    constants = colors.accent.neutral.default,
    strings = colors.accent.green.default,
    identifiers = colors.ui.fg.default,
    functions = colors.accent.orange.default,

    keywords = util.blend(v.fg, v.bg, 0.62),
    operators = util.blend(v.fg, v.bg, 0.50),

    types = colors.accent.blue.default,
    members = util.blend(v.fg, v.bg, 0.78),
    links = colors.accent.blue.default,
  }
  colors.diag = {
    error = {
      fg = colors.accent.red.default,
      bg = util.blend(colors.accent.red.default, colors.ui.bg.default, 0.10),
    },
    warn = {
      fg = colors.accent.yellow.default,
      bg = util.blend(colors.accent.yellow.default, colors.ui.bg.default, 0.10),
    },
    info = {
      fg = colors.accent.blue.default,
      bg = util.blend(colors.accent.blue.default, colors.ui.bg.default, 0.10),
    },
    hint = {
      fg = colors.accent.green.default,
      bg = util.blend(colors.accent.green.default, colors.ui.bg.default, 0.10),
    },
  }
  colors.git = {
    added = colors.accent.green.default,
    changed = colors.accent.blue.default,
    removed = colors.accent.red.default,
  }
  colors.diff = {
    add = {
      fg = colors.accent.green.default,
      bg = util.blend(colors.accent.green.default, colors.ui.bg.default, 0.10),
    },
    change = {
      fg = colors.accent.blue.default,
      bg = util.blend(colors.accent.blue.default, colors.ui.bg.default, 0.10),
    },
    delete = {
      fg = colors.accent.red.default,
      bg = util.blend(colors.accent.red.default, colors.ui.bg.default, 0.10),
    },
    text = {
      fg = colors.ui.fg.default,
      bg = util.blend(colors.ui.fg.default, colors.ui.bg.default, 0.16),
    },
  }

  return colors
end

return M
