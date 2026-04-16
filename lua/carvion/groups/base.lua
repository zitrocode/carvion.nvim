local M = {}

---@type carvion.HighlightsFn
function M.get(opts, c)
  return {
    -- Core UI
    Normal = { fg = c.ui.fg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    NormalNC = "Normal",
    NormalSB = { fg = c.ui.fg.default, bg = c.ui.bg.sidebar },

    Conceal = { fg = c.ui.fg.subtle },

    Cursor = { fg = c.ui.fg.inverse, bg = c.accent.orange.default },
    lCursor = "Cursor",
    CursorIM = "Cursor",

    CursorColumn = { bg = c.ui.cursorline },
    CursorLine = "CursorColumn",
    CursorLineNr = { fg = c.accent.orange.default, bg = c.ui.cursorline },

    ColorColumn = { bg = c.ui.cursorline },

    LineNr = { fg = c.ui.fg.disabled },
    LineNrAbove = "LineNr",
    LineNrBelow = "LineNr",

    Directory = { fg = c.accent.orange.default },

    EndOfBuffer = { fg = c.ui.bg.default },

    NonText = { fg = c.ui.fg.disabled },

    Whitespace = { fg = c.ui.fg.faint },
    SpecialKey = "Whitespace",

    Title = { fg = c.accent.orange.default, bold = true },

    Bold = { fg = c.ui.fg.default, bold = true },
    Italic = { fg = c.ui.fg.default, italic = true },

    -- Window UI
    VertSplit = { fg = c.ui.border.default },
    WinSeparator = "VertSplit",

    StatusLine = { fg = c.ui.fg.default, bg = c.ui.bg.default },
    StatusLineNC = { fg = c.ui.fg.muted, bg = c.ui.bg.default },

    TabLine = { fg = c.ui.fg.subtle, bg = c.ui.bg.float },
    TabLineFill = { fg = c.ui.fg.default, bg = c.ui.bg.default },
    TabLineSel = { fg = c.ui.fg.inverse, bg = c.accent.orange.default },

    Folded = { fg = c.ui.fg.subtle, bg = c.ui.bg.float },
    FoldColumn = { fg = c.ui.fg.subtle, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },

    SignColumn = { fg = c.ui.bg.default, bg = opts.transparent and c.ui.bg.none or c.ui.bg.default },
    SignColumnSB = { fg = c.ui.fg.default, bg = c.ui.bg.sidebar },

    WinBar = { fg = c.ui.fg.default, bg = c.ui.bg.sidebar },
    WinBarNC = { fg = c.ui.fg.muted, bg = c.ui.bg.sidebar },

    -- Floating UI
    NormalFloat = { fg = c.ui.fg.default, bg = c.ui.bg.float },

    FloatBorder = { fg = c.ui.border.default, bg = c.ui.bg.float },
    FloatTitle = { fg = c.accent.orange.default, bg = c.ui.bg.float, bold = true },

    Pmenu = { fg = c.ui.fg.default, bg = c.ui.bg.float },
    PmenuSel = { fg = c.ui.fg.default, bg = c.ui.bg.option },
    PmenuMatch = { fg = c.accent.orange.default, bold = true },
    PmenuMatchSel = "PmenuMatch",

    PmenuSbar = { bg = c.ui.bg.float },
    PmenuThumb = { bg = c.ui.border.subtle },

    -- Visual & Search
    Visual = { bg = c.ui.visual },
    VisualNOS = "Visual",

    Search = { fg = c.ui.fg.inverse, bg = c.accent.orange.dim },
    IncSearch = { fg = c.ui.fg.inverse, bg = c.accent.orange.default, bold = true },
    CurSearch = "IncSearch",

    MatchParen = { fg = c.accent.orange.default, bold = true },

    -- Syntax
    Comment = { fg = c.syntax.comments, style = opts.styles.comments },

    Constant = { fg = c.syntax.constants },
    String = { fg = c.syntax.strings, style = opts.styles.strings },
    Character = { fg = c.syntax.strings },
    Number = "Constant",
    Boolean = "Constant",
    Float = "Constant",

    Identifier = { fg = c.syntax.identifiers, style = opts.styles.variables },
    Function = { fg = c.syntax.functions, style = opts.styles.functions },

    Statement = { fg = c.syntax.keywords },
    Conditional = "Statement",
    Repeat = "Statement",
    Label = "Statement",
    Operator = { fg = c.syntax.operators },
    Keyword = { fg = c.syntax.keywords, style = opts.styles.keywords },
    Exception = "Statement",

    PreProc = { fg = c.syntax.keywords },
    Include = "PreProc",
    Define = "PreProc",
    Macro = "PreProc",
    PreCondit = "PreProc",

    Type = { fg = c.syntax.identifiers, style = opts.styles.types },
    StorangeClass = { fg = c.syntax.keywords },
    Structure = "StorangeClass",
    Typedef = { fg = c.syntax.functions },

    Special = { fg = c.syntax.operators },
    SpecialChar = "Special",
    SpecialComment = "Special",
    Tag = "Special",

    Delimiter = { fg = c.syntax.operators },

    Debug = { fg = c.accent.orange.default },

    Underlined = { underline = true },

    Ignore = { fg = c.ui.fg.default },

    -- Error = { fg = c.diagnostics.error.fg, bold = true },

    Todo = { fg = c.ui.fg.default, bold = true },

    Added = { fg = c.git.added },
    Changed = { fg = c.git.changed },
    Removed = { fg = c.git.removed },

    -- Messages
    ErrorMsg = { fg = c.accent.red.default },
    WarningMsg = { fg = c.accent.orange.soft },

    ModeMsg = { fg = c.accent.blue.default, bold = true },
    MsgArea = { fg = c.ui.fg.muted },
    MoreMsg = { fg = c.accent.green.default },

    Question = { fg = c.accent.blue.default },
    Substitute = { fg = c.ui.fg.inverse, bg = c.accent.orange.soft },

    -- Navigation
    QuickFixLine = { bg = c.ui.visual },
    WildMenu = { fg = c.ui.fg.default, bg = c.ui.bg.option },

    -- Spell
    SpellBad = { sp = c.accent.red.default, undercurl = true },
    SpellCap = { sp = c.accent.orange.soft, undercurl = true },
    SpellLocal = { sp = c.accent.blue.default, undercurl = true },
    SpellRare = { sp = c.accent.green.default, undercurl = true },

    -- Language Services Protocol
    LspReferenceText = { bg = c.ui.bg.option },
    LspReferenceRead = { bg = c.ui.bg.option },
    LspReferenceWrite = { bg = c.ui.bg.option },

    LspSignatureActiveParameter = { bg = c.ui.visual },
    LspCodeLens = { fg = c.ui.fg.faint },
    LspCodeLensSeparator = { fg = c.ui.fg.faint },

    LspInlayHint = { fg = c.accent.green.default },
    LspInfoBorder = { fg = c.ui.fg.default, bg = c.ui.bg.float },
    ComplHint = { fg = c.accent.blue.default },

    -- Diagnostics
    DiagnosticError = { fg = c.diag.error.fg },
    DiagnosticWarn = { fg = c.diag.warn.fg },
    DiagnosticInfo = { fg = c.diag.info.fg },
    DiagnosticHint = { fg = c.diag.hint.fg },

    DiagnosticUnnecessary = { fg = c.ui.fg.subtle },

    DiagnosticVirtualTextError = { fg = c.diag.error.fg, bg = c.diag.error.bg },
    DiagnosticVirtualTextWarn = { fg = c.diag.warn.fg, bg = c.diag.warn.bg },
    DiagnosticVirtualTextInfo = { fg = c.diag.info.fg, bg = c.diag.info.bg },
    DiagnosticVirtualTextHint = { fg = c.diag.hint.fg, bg = c.diag.hint.bg },

    DiagnosticUnderlineError = { sp = c.diag.error.fg, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.diag.warn.fg, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.diag.info.fg, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.diag.hint.fg, undercurl = true },

    -- Diff
    DiffAdd = { fg = c.diff.add.fg, bg = c.diff.add.bg },
    DiffChange = { fg = c.diff.change.fg, bg = c.diff.change.bg },
    DiffDelete = { fg = c.diff.delete.fg, bg = c.diff.delete.bg },
    DiffText = { fg = c.diff.text.fg, bg = c.diff.text.bg },

    diffAdded = { fg = c.diff.add.fg },
    diffRemoved = { fg = c.diff.delete.fg },
    diffChanged = { fg = c.diff.change.fg },

    diffOldFile = { fg = c.syntax.comments },
    diffNewFile = { fg = c.diff.add.fg },
    diffFile = { fg = c.diff.change.fg },
    diffLine = { fg = c.syntax.comments },
    diffIndexLine = { fg = c.accent.neutral.base },

    -- Health
    healthError = { fg = c.diag.error.fg },
    healthSuccess = { fg = c.diag.hint.fg },
    healthWarning = { fg = c.diag.warn.fg },

    -- Quickfix & Help
    qfFileName = { fg = c.accent.blue.default },
    qfLineNr = { fg = c.accent.neutral.default },

    helpExample = { fg = c.ui.fg.muted },
    helpCommand = { fg = c.accent.orange.default },

    -- Debug
    debugBreakpoint = { fg = c.diag.info.fg },
    debugPC = { bg = c.ui.bg.option },

    -- Filestypes
    dosIniLabel = { fg = c.accent.orange.default },
    htmlH1 = { fg = c.accent.orange.default },
    htmlH2 = "htmlH1",
  }
end

return M
