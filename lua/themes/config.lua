local M = {}

---@type Options
local defaults = {
  ---@type string|nil
  theme = nil, -- name of the theme to select
  integrations = { -- integrations to include or exclude
    -- include = {}, -- TODO: add support
    -- exclude = {}, -- TODO: add support
    cmp = {
      ---@type CmpStyle
      style = "default",
    },
  },
  custom = { -- custom theme related options
    -- themes = {}, --TODO: add support
    themes_path = "config.ui.themes", -- user path to search for custom themes, default to `config/themes`
    ---@type Highlights
    -- highlights = {}, --TODO: add support
    -- highlights_path = "config.ui.highlights", --TODO: add support
  },
}

---@type Options
M.options = {}

---@param opts? Options
function M.setup(opts)
  M.options = vim.tbl_deep_extend("force", {}, defaults, opts or {})
  return M.options
end

M.setup()

return M
