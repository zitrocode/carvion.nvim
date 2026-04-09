local palette = require("carvion.colors")
local carvion = {}

carvion.normal = {
  a = { fg = palette.fg.alternative, bg = palette.colors.orange.base },
  b = { fg = palette.colors.orange.base, bg = palette.bg.popup },
  c = { fg = palette.fg.default, bg = palette.bg.statusline },
}

carvion.insert = {
  a = { fg = palette.bg.default, bg = palette.colors.green.base },
  b = { fg = palette.colors.green.base, bg = palette.bg.popup },
}

carvion.visual = {
  a = { fg = palette.bg.default, bg = palette.colors.neutral.base },
  b = { fg = palette.colors.neutral.base, bg = palette.bg.popup },
}

carvion.replace = {
  a = { fg = palette.bg.default, bg = palette.diagnostics.error.fg },
  b = { fg = palette.diagnostics.error.fg, bg = palette.bg.popup },
}

carvion.command = {
  a = { fg = palette.bg.default, bg = palette.colors.blue.base },
  b = { fg = palette.colors.blue.base, bg = palette.bg.popup },
}

carvion.terminal = {
  a = { fg = palette.fg.alternative, bg = palette.fg.strong },
  b = { fg = palette.fg.default, bg = palette.fg.disabled },
}

carvion.inactive = {
  a = { fg = palette.fg.muted, bg = palette.bg.statusline },
  b = { fg = palette.fg.muted, bg = palette.bg.statusline, gui = "bold" },
  c = { fg = palette.fg.muted, bg = palette.bg.statusline },
}

return carvion
