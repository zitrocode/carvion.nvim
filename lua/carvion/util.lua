local M = {}

-- Convert hex color (#RRGGBB) into RGB components.
--
---@param hex string
---@return { r: number, g: number, b: number }
local function hex_to_rgb(hex)
  return {
    r = tonumber(hex:sub(2, 3), 16),
    g = tonumber(hex:sub(4, 5), 16),
    b = tonumber(hex:sub(6, 7), 16),
  }
end

-- Convert RGB components to hex color (#RRGGBB).
--
---@param r number
---@param g number
---@param b number
---@return string
local function rgb_to_hex(r, g, b)
  return string.format("#%02X%02X%02X", r, g, b)
end

-- Clamp number into valid RGB range (0-255).
---@param x number
local function clamp(x)
  return math.max(0, math.min(255, x))
end

-- Blend foreground color into background color using alpha.
-- alpha = 0 return bg, alpha = 1 return fg.
--
---@param fg string
---@param bg string
---@param alpha number
---@return string
function M.blend(fg, bg, alpha)
  local f = hex_to_rgb(fg)
  local b = hex_to_rgb(bg)

  local red = clamp((alpha * f.r) + ((1 - alpha) * b.r))
  local green = clamp((alpha * f.g) + ((1 - alpha) * b.g))
  local blue = clamp((alpha * f.b) + ((1 - alpha) * b.b))

  return rgb_to_hex(math.floor(red + 0.5), math.floor(green + 0.5), math.floor(blue + 0.5))
end

-- Lighten color by blending it with white
--
---@param color string
---@param amount number
---@return string
function M.lighten(color, amount)
  return M.blend("#FFFFFF", color, amount)
end

-- Darken color by blending it with black
--
---@param color string
---@param amount number
---@return string
function M.darken(color, amount)
  return M.blend("#000000", color, amount)
end

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

-- Deep merge tables without mutating source.
--
---@param base table
---@param override table
---@return table
function M.deep_merge(base, override)
  local result = {}

  for k, v in pairs(base) do
    if type(v) == "table" then
      result[k] = M.deep_merge(v, {})
    else
      result[k] = v
    end
  end

  for k, v in pairs(override) do
    if type(v) == "table" and type(result[k]) == "table" then
      result[k] = M.deep_merge(result[k], v)
    else
      result[k] = v
    end
  end

  return result
end

return M
