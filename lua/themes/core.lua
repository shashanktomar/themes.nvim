local config = require("themes.config")
local plugin_path = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":p:h")

local M = {}

---@param group string
---@return Integration
local load_hls = function(group)
  group = require("themes.integrations." .. group)
  return group
end

---@param highlights Highlights
---@param ns_id integer|nil
local set_hls = function(highlights, ns_id)
  for key, value in pairs(highlights) do
    vim.api.nvim_set_hl(ns_id or 0, key, value)
  end
end

---@param theme Theme
local loadIntegrations = function(theme)
  local hl_files = plugin_path .. "/integrations"
  for _, file in ipairs(vim.fn.readdir(hl_files)) do
    local filename = vim.fn.fnamemodify(file, ":r")
    local integration = load_hls(filename)

    local style = nil
    local int_config = config.options.integrations[filename]
    if int_config then
      style = int_config.style or nil
    end

    local highlights = integration.highlights(theme, style)
    set_hls(highlights.hls, highlights.ns_id)
  end
end

---@param theme Theme
M.load_highlights = function(theme)
  loadIntegrations(theme)

  if theme.extended_hls then
    set_hls(theme.extended_hls.hls, theme.extended_hls.ns_id)
  end
end

return M
