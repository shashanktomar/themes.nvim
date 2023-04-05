local config = require("themes.config")
local core = require("themes.core")

local M = {}

---@param opts? Options
function M.setup(opts)
  local o = config.setup(opts)

  if o.theme == nil then
    return
  end

  local theme = M.get_theme(o.theme)
  ---@cast theme Theme
  core.load_highlights(theme)
end

---@param name string # name of the theme
---@return Theme|nil # `opts.custom.themes_path` is given higher priority than inbuilt themes
function M.get_theme(name)
  local user_path = config.options.custom.themes_path .. "." .. name
  local themes_path = "themes.themes." .. name
  local user_theme_present, user_theme = pcall(require, user_path)
  local theme_present, theme = pcall(require, themes_path)

  if not user_theme_present and not theme_present then
    return nil
  end

  theme = theme_present and theme or {}
  user_theme = user_theme_present and user_theme or {}
  return vim.tbl_extend("force", {}, theme, user_theme)
end

return M
