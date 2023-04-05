---@type Integration
local M = {}

M.highlights = function(theme)
  local colors = theme.base_30
  return {
    hls = {
      WhichKey = { fg = colors.blue },
      WhichKeySeparator = { fg = colors.light_grey },
      WhichKeyDesc = { fg = colors.red },
      WhichKeyGroup = { fg = colors.green },
      WhichKeyValue = { fg = colors.green },
    },
  }
end

return M
