local M = {}

---@class carvion.Config
---@field transparent boolean
---@field styles carvion.Styles
M.defaults = {
  transparent = false, -- Enable this to disable setting the background color
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    strings = {},
    types = {},
  },
}

---@type carvion.Config
M.options = nil

---@param options? carvion.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param options? carvion.Config
---@return carvion.Config
function M.extend(options)
  return options and vim.tbl_deep_extend("force", {}, M.options, options) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
