local util = require("carvion.util")

local palette = {}
local colors = {
  orange = "#FF7A1A",

  blue = "#6F8FB0",
  green = "#8FD8A3",
  red = "#E05A47",
  yellow = "#D98C3A",
  neutral = "#8FA1B3",
}

palette.dark = util.deep_merge(colors, {
  bg = "#101010",
  fg = "#E0E0E0",
})

return palette
