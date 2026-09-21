local M = {}

---@type carvion.HighlightsFn
function M.get(_, c)
  return {
    BlinkCmpLabel = { fg = c.ui.fg.muted },
    BlinkCmpLabelDeprecated = { fg = c.ui.fg.subtle, strikethrough = true },
    BlinkCmpLabelMatch = "PmenuMatch",
    BlinkCmpLabelDetail = "PmenuExtra",
    BlinkCmpLabelDescription = "PmenuExtra",

    BlinkCmpKind = { fg = c.accent.blue.default },
    BlinkCmpKindText = { fg = c.accent.green.default },
    BlinkCmpKindMethod = { fg = c.accent.blue.default },
    BlinkCmpKindFunction = { fg = c.accent.blue.default },
    BlinkCmpKindConstructor = { fg = c.accent.blue.default },
    BlinkCmpKindField = { fg = c.accent.green.default },
    BlinkCmpKindVariable = { fg = c.accent.orange.default },
    BlinkCmpKindClass = { fg = c.accent.yellow.default },
    BlinkCmpKindInterface = { fg = c.accent.yellow.default },
    BlinkCmpKindModule = { fg = c.accent.blue.default },
    BlinkCmpKindProperty = { fg = c.accent.blue.default },
    BlinkCmpKindUnit = { fg = c.accent.green.default },
    BlinkCmpKindValue = { fg = c.accent.orange.default },
    BlinkCmpKindEnum = { fg = c.accent.yellow.default },
    BlinkCmpKindKeyword = { fg = c.syntax.keywords },
    BlinkCmpKindSnippet = { fg = c.accent.orange.default },
    BlinkCmpKindColor = { fg = c.accent.red.default },
    BlinkCmpKindFile = { fg = c.accent.blue.default },
    BlinkCmpKindReference = { fg = c.accent.red.default },
    BlinkCmpKindFolder = { fg = c.accent.blue.default },
    BlinkCmpKindEnumMember = { fg = c.accent.green.default },
    BlinkCmpKindConstant = { fg = c.accent.orange.default },
    BlinkCmpKindStruct = { fg = c.accent.blue.default },
    BlinkCmpKindEvent = { fg = c.accent.blue.default },
    BlinkCmpKindOperator = { fg = c.accent.blue.default },
    BlinkCmpKindTypeParameter = { fg = c.accent.red.default },
    BlinkCmpKindCopilot = { fg = c.accent.green.default },

    BlinkCmpSource = "PmenuExtra",
    BlinkCmpGhostText = "NonText",

    BlinkCmpMenu = "Pmenu",
    BlinkCmpMenuBorder = "FloatBorder",
    BlinkCmpMenuSelection = { bg = c.ui.bg.option },
    BlinkCmpScrollBarGutter = { bg = c.ui.bg.option },
    BlinkCmpScrollBarThumb = { bg = c.ui.border.default },

    BlinkCmpDoc = "NormalFloat",
    BlinkCmpDocBorder = "FloatBorder",
    BlinkCmpDocSeparator = "FloatBorder",
    BlinkCmpDocCursorLine = "Visual",

    BlinkCmpSignatureHelp = "NormalFloat",
    BlinkCmpSignatureHelpBorder = "FloatBorder",
    BlinkCmpSignatureHelpActiveParameter = "LspSignatureActiveParameter",
  }
end

return M
