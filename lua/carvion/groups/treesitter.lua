local M = {}

---@type carvion.HighlightsFn
function M.get(opts, c)
  return {
    ["@variable"] = { fg = c.fg.default, style = opts.styles.variables },
    ["@variable.builtin"] = { fg = c.fg.default },
    ["@variable.parameter"] = { fg = c.fg.default },
    ["@variable.parameter.builtin"] = { fg = c.specials.symbol },
    ["@variable.member"] = { fg = c.specials.member },

    ["@constant"] = { fg = c.fg.default },
    ["@constant.builtin"] = { fg = c.colors.neutral.base },
    ["@constant.macro"] = { fg = c.colors.neutral.base },

    ["@module"] = { fg = c.fg.default },
    ["@module.builtin"] = { fg = c.fg.default },
    ["@label"] = { fg = c.colors.green.base },

    ["@string"] = { fg = c.colors.green.base, style = opts.styles.strings },
    ["@string.documentation"] = { fg = c.colors.green.base },
    ["@string.regexp"] = { fg = c.colors.green.base },
    ["@string.escape"] = { fg = c.specials.symbol },
    ["@string.special"] = { fg = c.colors.green.base },
    ["@string.special.symbol"] = { fg = c.colors.green.base },
    ["@string.special.path"] = { fg = c.colors.green.base },
    ["@string.special.url"] = { fg = c.colors.blue.base, underline = true },

    ["@character"] = { fg = c.colors.green.base },
    ["@character.special"] = { fg = c.specials.symbol },

    ["@boolean"] = { fg = c.colors.neutral.base },
    ["@number"] = { fg = c.colors.neutral.base },
    ["@number.float"] = { fg = c.colors.neutral.base },

    ["@type"] = { fg = c.colors.blue.base },
    ["@type.builtin"] = { fg = c.specials.keyword, style = opts.styles.types },
    ["@type.definition"] = { fg = c.fg.default },

    ["@attribute"] = { fg = c.colors.orange.base },
    -- ["@attribute.builtin"] = { fg = "blue" },
    ["@property"] = { fg = c.specials.member },

    ["@function"] = { fg = c.colors.orange.base },
    ["@function.builtin"] = { fg = c.colors.orange.base },
    ["@function.call"] = { fg = c.colors.orange.base },
    ["@function.macro"] = { fg = c.colors.orange.base },

    ["@function.method"] = { fg = c.colors.orange.base },
    ["@function.method.call"] = { fg = c.colors.orange.base },

    ["@constructor"] = { fg = c.specials.symbol },
    ["@operator"] = { fg = c.specials.symbol },

    ["@keyword"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.coroutine"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.function"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.operator"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.import"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.type"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.modifier"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.repeat"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.return"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.debug"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.exception"] = { fg = c.specials.keyword, style = opts.styles.keywords },

    ["@keyword.conditional"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.conditional.ternary"] = { fg = c.specials.keyword, style = opts.styles.keywords },

    ["@keyword.directive"] = { fg = c.specials.keyword, style = opts.styles.keywords },
    ["@keyword.directive.define"] = { fg = c.specials.keyword, style = opts.styles.keywords },

    ["@punctuation.delimiter"] = { fg = c.specials.symbol },
    ["@punctuation.bracket"] = { fg = c.specials.symbol },
    ["@punctuation.special"] = { fg = c.specials.symbol },

    ["@comment"] = { fg = c.specials.comment, style = opts.styles.comments },
    -- ["@comment.documentation"] = {},

    ["@comment.error"] = { fg = c.diagnostics.error.fg },
    ["@comment.warning"] = { fg = c.diagnostics.warn.fg },
    ["@comment.todo"] = { fg = c.fg.default },
    ["@comment.note"] = { fg = c.diagnostics.hint.fg },
    ["@comment.info"] = { fg = c.diagnostics.info.fg },
    ["@comment.hint"] = { fg = c.diagnostics.hint.fg },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },

    ["@markup.heading"] = { fg = c.colors.orange.base, bold = true },
    ["@markup.heading.1"] = "@markup.heading",
    ["@markup.heading.2"] = { fg = c.colors.orange.soft, bold = true },
    ["@markup.heading.3"] = { fg = c.colors.orange.dim, bold = true },
    ["@markup.heading.4"] = { fg = c.fg.strong, bold = true },
    ["@markup.heading.5"] = { fg = c.fg.default },
    ["@markup.heading.6"] = { fg = c.fg.muted },

    ["@markup.quote"] = { fg = c.fg.muted },
    ["@markup.math"] = "Special",

    ["@markup.link"] = { fg = c.colors.blue.base, underline = true, sp = c.colors.blue.base },
    ["@markup.link.label"] = { fg = c.colors.orange.base },
    ["@markup.link.url"] = "@markup.link",

    ["@markup.raw"] = { fg = c.specials.keyword },
    ["@markup.raw.block"] = "@markup.raw",

    ["@markup.list"] = { fg = c.specials.symbol },
    ["@markup.list.checked"] = { fg = c.colors.orange.base },
    ["@markup.list.unchecked"] = { fg = c.colors.orange.dim },

    ["@diff.plus"] = "DiffAdd",
    ["@diff.minus"] = "DiffDelete",
    ["@diff.delta"] = "DiffChange",

    ["@tag"] = { fg = c.colors.orange.base },
    ["@tag.builtin"] = "@tag",
    ["@tag.attribute"] = { fg = c.specials.keyword },
    ["@tag.delimiter"] = { fg = c.specials.symbol },
  }
end

return M
