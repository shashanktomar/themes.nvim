---@type Integration
local M = {}

---@alias CmpStyle "default" | "flat_light" | "flat_dark"

---@param theme Theme
---@return Highlights
local base_hls = function(theme)
  local colors = theme.base_30
  local base = theme.base_16

  local highlights = {
    CmpItemAbbr = { fg = colors.white },
    CmpItemAbbrMatch = { fg = colors.blue, bold = true },
    CmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
    CmpPmenu = { bg = colors.black },
    CmpSel = { link = "PmenuSel", bold = true },
  }

  local item_kinds = {
    -- cmp item kinds
    CmpItemKindConstant = { fg = base.base09 },
    CmpItemKindFunction = { fg = base.base0D },
    CmpItemKindIdentifier = { fg = base.base08 },
    CmpItemKindField = { fg = base.base08 },
    CmpItemKindVariable = { fg = base.base0E },
    CmpItemKindSnippet = { fg = colors.red },
    CmpItemKindText = { fg = base.base0B },
    CmpItemKindStructure = { fg = base.base0E },
    CmpItemKindType = { fg = base.base0A },
    CmpItemKindKeyword = { fg = base.base07 },
    CmpItemKindMethod = { fg = base.base0D },
    CmpItemKindConstructor = { fg = colors.blue },
    CmpItemKindFolder = { fg = base.base07 },
    CmpItemKindModule = { fg = base.base0A },
    CmpItemKindProperty = { fg = base.base08 },
    CmpItemKindEnum = { fg = colors.blue },
    CmpItemKindUnit = { fg = base.base0E },
    CmpItemKindClass = { fg = colors.teal },
    CmpItemKindFile = { fg = base.base07 },
    CmpItemKindInterface = { fg = colors.green },
    CmpItemKindColor = { fg = colors.white },
    CmpItemKindReference = { fg = base.base05 },
    CmpItemKindEnumMember = { fg = colors.purple },
    CmpItemKindStruct = { fg = base.base0E },
    CmpItemKindValue = { fg = colors.cyan },
    CmpItemKindEvent = { fg = colors.yellow },
    CmpItemKindOperator = { fg = base.base05 },
    CmpItemKindTypeParameter = { fg = base.base08 },
    CmpItemKindCopilot = { fg = colors.green },
  }

  return vim.tbl_extend("force", highlights, item_kinds)
end

---@param theme Theme
---@return Highlights
local style_hls = function(theme)
  local colors = theme.base_30

  return {
    default = {
      CmpBorder = { fg = colors.grey_fg },
    },

    flat_light = {
      CmpPmenu = {
        bg = colors.black2,
      },

      CmpBorder = { fg = colors.black2, bg = colors.black2 },
      CmpDocBorder = { fg = colors.darker_black, bg = colors.darker_black },
    },

    flat_dark = {
      CmpPmenu = {
        bg = colors.darker_black,
      },

      CmpBorder = { fg = colors.darker_black, bg = colors.darker_black },
      CmpDocBorder = { fg = colors.black2, bg = colors.black2 },
      CmpDoc = { bg = colors.black2 },
    },
  }
end

---@param theme Theme
---@param style? CmpStyle
---@return table
M.highlights = function(theme, style)
  local b_hls = base_hls(theme)
  local styles = style_hls(theme)
  local s_hls = styles[style] or styles["default"]
  local all_hls = vim.tbl_extend("force", b_hls, s_hls)
  return {
    hls = all_hls,
  }
end

return M
