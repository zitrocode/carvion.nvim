---@class ColorScheme
local ret = {
  bg = {
    sidebar = "#0D0D0D",
    default = "#101010",
    inactive = "#131313",
    subtle = "#151515", -- panels / floats
    tab = "#161616",
    statusline = "#171717",
    cursorline = "#181818",
    option = "#1D1D1D",
    scrollbar = "#202020",
    popup = "#242424",
    visual = "#262626",
  },
  fg = {
    strong = "#FFFFFF", -- títulos importantes
    default = "#E0E0E0", -- texto principal
    muted = "#B0B0B0", -- texto secundario
    subtle = "#909090", -- símbolos
    faint = "#707070", -- UI secundaria
    disabled = "#555555", -- comentarios
    alternative = "#101010", -- texto invertido
  },
  border = {
    subtle = "#1A1A1A",
    strong = "#2E2E2E",
    default = "#242424",
  },
  specials = {
    member = "#C8C8C8",
    keyword = "#A0A0A0",
    symbol = "#808080",
    comment = "#555555",
    whitespace = "#707070",
  },

  colors = {
    orange = {
      base = "#FF7A1A",
      soft = "#E98A3A",
      dim = "#B8652A",
    },

    blue = { base = "#6F8FB0" },
    green = { base = "#8FD8A3" },
    purple = { base = "#A18BD1" },
    neutral = { base = "#8FA1B3" },
  },

  diagnostics = {
    error = { fg = "#E05A47", bg = "#2A1412" },
    warn = { fg = "#D98C3A", bg = "#2A2012" },
    info = { fg = "#6F8FB0", bg = "#121A2A" },
    hint = { fg = "#8FD8A3", bg = "#121A2A" },
  },

  none = "none",
}

return ret
