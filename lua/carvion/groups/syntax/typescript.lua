local M = {}

---@type carvion.HighlightsFn
function M.get(_, c)
  return {
    -- typescript
    ["@type.typescript"] = { fg = c.colors.blue.base },
    ["@type.builtin.typescript"] = "@type.typescript",

    -- TSX
    -- ["@constructor.tsx"] = { fg = c.blue500 },
    -- ["@tag.delimiter.tsx"] = { fg = c.orange500 },
    -- ["@tag.tsx"] = { fg = c.yellow500 },
    -- ["@keyword.return.tsx"] = { fg = c.green500, italic = true },
    -- ["@keyword.tsx"] = { fg = c.green500, italic = true },
  }
end

return M
