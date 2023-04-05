---@type Integration
local M = {}

M.highlights = function(theme)
  local colors = theme.base_30
  return {
    hls = {
      NeoTreeNormal = { bg = colors.darker_black },
      NeoTreeDirectoryIcon = { fg = colors.folder_bg },
      NeoTreeDirectoryName = { fg = colors.folder_bg },
      NeoTreeGitIgnored = { fg = colors.light_grey },
      NeoTreeCursorLine = { bg = colors.black2 },
      NeoTreeGitAdded = { fg = colors.yellow },
      NeoTreeGitDeleted = { fg = colors.red },
    },
  }
end

return M

-- NeoTreeBufferNumber
-- NeoTreeCursorLine
-- NeoTreeDimText
-- NeoTreeDotfile
-- NeoTreeEndOfBuffer
-- NeoTreeExpander
-- NeoTreeFadeText1
-- NeoTreeFadeText2
-- NeoTreeFileIcon
-- NeoTreeFileName
-- NeoTreeFileNameOpened
-- NeoTreeFilterTerm
-- NeoTreeFloatBorder
-- NeoTreeFloatNormal
-- NeoTreeFloatTitle
-- NeoTreeGitConflict
-- NeoTreeGitModified
-- NeoTreeGitRenamed
-- NeoTreeGitStaged
-- NeoTreeGitUnstaged
-- NeoTreeGitUntracked
-- NeoTreeHiddenByName
-- NeoTreeIndentMarker
-- NeoTreeMessage
-- NeoTreeModified
-- NeoTreeNormalNC
-- NeoTreePreview
-- NeoTreeRootName
-- NeoTreeSignColumn
-- NeoTreeStatusLine
-- NeoTreeStatusLineNC
-- NeoTreeSymbolicLinkTarget
-- NeoTreeTabActive
-- NeoTreeTabInactive
-- NeoTreeTabSeparatorActive
-- NeoTreeTabSeparatorInactive
-- NeoTreeTitleBar
-- NeoTreeVertSplit
-- NeoTreeWinSeparator
-- NeoTreeWindowsHidden
