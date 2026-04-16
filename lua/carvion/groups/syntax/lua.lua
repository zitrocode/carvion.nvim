local M = {}

---@type carvion.HighlightsFn
function M.get(opts, c)
  return {
    ["@keyword.luadoc"] = { fg = c.syntax.functions, bold = true },
  }
end

return M
