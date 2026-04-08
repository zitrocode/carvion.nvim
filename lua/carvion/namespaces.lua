local M = {}

local source = debug.getinfo(1, "S").source:sub(2)
local ROOT = vim.fn.fnamemodify(source, ":h")

-- Converts a namespaces into filesystem path.
--
--- @param namespaces string
--- @return string
function M.to_path(namespaces)
  return ROOT .. "/" .. namespaces:gsub("%.", "/")
end

-- Recursively scans namespaces starting from a base namespaces.
-- Collects all nested namespaces found in the filesystem.
--
---@param namespaces string
---@param result? string[]
---@return string[]
function M.scan(namespaces, result)
  result = result or {}
  local path = M.to_path(namespaces)

  table.insert(result, namespaces)

  if not vim.fn.isdirectory(path) then
    return result
  end

  local entries = vim.fn.globpath(path, "*", false, true)

  for _, entry in ipairs(entries) do
    local name = vim.fn.fnamemodify(entry, ":t")
    local child = namespaces .. "." .. name

    M.scan(child, result)
  end
  return result
end

-- List lua modules inside a directory.
-- Returns file names without extensions.
---@param path string
---@return string[]
function M.list(path)
  local modules = {}

  local files = vim.fn.globpath(path, "*.lua", false, true)

  for _, file in ipairs(files) do
    local name = vim.fn.fnamemodify(file, ":t:r")
    if name ~= "init" then
      modules[#modules + 1] = name
    end
  end

  table.sort(modules)
  return modules
end

return M
