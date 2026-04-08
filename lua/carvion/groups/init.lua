local ns = require("carvion.namespaces")
local util = require("carvion.util")

local M = {}

-- Loads highlight groups from all discovered namespaces.
-- Scans directories, requires modules, and merges their highlights
--
---@type carvion.HighlightsFn
function M.setup(opts, colors)
  local groups = {}
  local namespaces = ns.scan("groups")

  for _, namespace in ipairs(namespaces) do
    local path = ns.to_path(namespace)

    if vim.fn.isdirectory(path) == 1 then
      local modules = ns.list(path)

      for _, name in ipairs(modules) do
        local modname = "carvion." .. namespace .. "." .. name
        local ok, mod = pcall(require, modname)

        if ok and type(mod.get) == "function" then
          local highlight = mod.get(opts, colors)

          if type(highlight) == "table" then
            for key, value in pairs(highlight) do
              groups[key] = value
            end
          end
        else
          vim.notify("carvion.nvim: Failed to load " .. modname, vim.log.levels.WARN)
        end
      end
    end
  end

  return util.resolve(groups)
end

return M
