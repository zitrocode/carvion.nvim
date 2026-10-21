local M = {}

---@type carvion.HighlightsFn
function M.get(_, c)
  return {
    FlashBackdrop = "Comment",
    FlashMatch = { fg = c.ui.fg.default, bg = c.accent.orange.dim },
    FlashCurrent = { fg = c.ui.fg.inverse, bg = c.accent.orange.default, bold = true },
    FlashLabel = { fg = c.ui.fg.inverse, bg = c.accent.green.default, bold = true },
    FlashPrompt = "MsgArea",
    FlashPromptIcon = { fg = c.accent.orange.default },
    FlashCursor = "Cursor",
  }
end

return M
