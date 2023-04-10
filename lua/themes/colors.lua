local M = {}

---@param hex Color
---@return integer
---@return integer
---@return integer
M.hex_to_rgb = function(hex)
  if hex:sub(1, 1) == "#" then
    hex = hex:sub(2)
  end

  if #hex == 3 then
    hex = hex:gsub(".", "%0%0")
  end

  local r, g, b = hex:match("(%x%x)(%x%x)(%x%x)")
  r, g, b = tonumber(r, 16), tonumber(g, 16), tonumber(b, 16)

  return r, g, b
end

return M
