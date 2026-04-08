local config = require("carvion.config")

local M = {}

---@param opts? carvion.Config
function M.colorscheme(opts)
  opts = config.extend(opts)

  local colors = require("carvion.colors")
  local groups = require("carvion.groups").setup(opts, colors)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_scheme then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_scheme = "carvion"

  for group, hl in pairs(groups) do
    if type(hl) == "string" then
      vim.api.nvim_set_hl(0, group, { link = hl })
      goto continue
    end

    vim.api.nvim_set_hl(0, group, hl)
    ::continue::
  end
end

M.setup = config.setup

return M
