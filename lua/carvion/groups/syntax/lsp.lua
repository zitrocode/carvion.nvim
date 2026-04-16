local M = {}

---@type carvion.HighlightsFn
function M.get(_, c)
  return {
    ["@lsp.type.class"] = { fg = c.syntax.identifiers },

    ["@lsp.type.comment"] = "Comment",
    ["@lsp.typemod.keyword.documentation"] = { fg = c.syntax.comments },
  }
end

return M
