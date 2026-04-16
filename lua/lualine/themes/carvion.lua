local palette = require("carvion.colors").setup()
local carvion = {}

carvion.normal = {
  a = {
    fg = palette.ui.fg.inverse,
    bg = palette.accent.orange.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.orange.default,
    bg = palette.ui.bg.float,
  },

  c = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.default,
  },
}

carvion.insert = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.green.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.green.default,
    bg = palette.ui.bg.float,
  },
}

carvion.visual = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.neutral.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.neutral.default,
    bg = palette.ui.bg.float,
  },
}

carvion.replace = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.red.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.red.default,
    bg = palette.ui.bg.float,
  },
}

carvion.command = {
  a = {
    fg = palette.ui.bg.default,
    bg = palette.accent.blue.default,
    gui = "bold",
  },

  b = {
    fg = palette.accent.blue.default,
    bg = palette.ui.bg.float,
  },
}

carvion.terminal = {
  a = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.option,
    gui = "bold",
  },

  b = {
    fg = palette.ui.fg.default,
    bg = palette.ui.bg.float,
  },
}

carvion.inactive = {
  a = {
    fg = palette.ui.fg.faint,
    bg = palette.ui.bg.sidebar,
  },

  b = {
    fg = palette.ui.fg.faint,
    bg = palette.ui.bg.sidebar,
  },

  c = {
    fg = palette.ui.fg.muted,
    bg = palette.ui.bg.sidebar,
  },
}

return carvion
