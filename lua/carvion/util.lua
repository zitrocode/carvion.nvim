local M = {}

-- Resolve `style` fields into highlight attributes.
-- Merges style value into the highlight and removes the 'style' key.
--
---@param groups carvion.Highlights
---@return carvion.Highlights
function M.resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return groups
end

-- Shallow merge of `src` into `dest`.
-- Existings keys in `dest` are overwritten
--
---@param dest carvion.Highlights
---@param src carvion.Highlights
---@return carvion.Highlights
function M.merge(dest, src)
  for key, value in pairs(src) do
    dest[key] = value
  end

  return dest
end

return M
