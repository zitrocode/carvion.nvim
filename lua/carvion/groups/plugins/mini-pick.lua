local M = {}

---@type carvion.HighlightsFn
function M.get(opts, c)
  local bg = c.ui.bg.float

  return {
    MiniPickBorder = { fg = c.ui.border.default, bg = bg },
    MiniPickBorderBusy = { fg = c.accent.orange.default, bg = bg },
    MiniPickBorderText = { fg = c.accent.blue.default, bg = bg, bold = true },
    MiniPickCursor = { fg = c.ui.fg.inverse, bg = c.accent.blue.default },
    MiniPickIconDirectory = "Directory",
    MiniPickIconFile = { fg = c.ui.fg.default },
    MiniPickHeader = { fg = c.accent.blue.default, bold = true },
    MiniPickMatchCurrent = { fg = c.ui.fg.default, bg = c.ui.bg.option },
    MiniPickMatchMarked = { fg = c.ui.fg.default, bg = c.ui.visual },
    MiniPickMatchRanges = { fg = c.accent.orange.default, bold = true },
    MiniPickNormal = { fg = c.ui.fg.default, bg = bg },
    MiniPickPreviewLine = { bg = c.ui.bg.option },
    MiniPickPreviewRegion = { bg = c.ui.visual },
    MiniPickPrompt = { fg = c.ui.fg.default, bg = bg },
    MiniPickPromptCaret = { fg = c.accent.orange.default, bg = bg, bold = true },
    MiniPickPromptPrefix = { fg = c.accent.orange.default, bg = bg },
  }
end

return M
