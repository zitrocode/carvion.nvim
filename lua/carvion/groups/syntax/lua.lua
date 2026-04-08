local M = {}

---@type carvion.HighlightsFn
function M.get(_, colors)
  return {
    ["@keyword.luadoc"] = { fg = colors.specials.keyword, bold = true },
  }
end

return M
