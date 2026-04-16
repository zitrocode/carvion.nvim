local util = require("carvion.util")

local palette = {}
local colors = {
  orange = "#FF7A1A",

  blue = "#6F8FB0",
  green = "#86CFA0",
  red = "#E05A47",
  purple = "#A18BD1",
  yellow = "#E8B04A",
  neutral = "#8FA1B3",
}

palette.dark = util.deep_merge(colors, {
  bg = "#101010",
  fg = "#E0E0E0",
})

return palette
