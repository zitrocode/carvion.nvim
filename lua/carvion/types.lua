---@class carvion.Styles
---@field comments vim.api.keyset.highlight
---@field keywords vim.api.keyset.highlight
---@field functions vim.api.keyset.highlight
---@field variables vim.api.keyset.highlight
---@field strings vim.api.keyset.highlight
---@field types vim.api.keyset.highlight

---@class carvion.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias carvion.Highlights table<string,carvion.Highlight|string>

---@alias carvion.HighlightsFn fun(opts: carvion.Config, colors: ColorScheme):carvion.Highlights
