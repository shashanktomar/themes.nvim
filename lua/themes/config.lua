local M = {}

---@type Options
local defaults = {
  ---@type string|nil
  theme = nil,
  custom = { -- custom theme related options
    themes_path = "config.ui.themes", -- user path to search for custom themes, default to `config/themes`
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
