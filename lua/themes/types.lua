---@meta

---------- Options ------------

---@alias IntegrationTypes "default" |  "which-key"

---@class CustomOptions
---@field themes_path? string # User path to search for custom themes, defaults to `config.ui.themes`

---@class Options
---@field theme? string # The name of the theme. Setting this as nil is equivalent to disabling the plugin
---@field custom CustomOptions

---------- Core Types ------------

---@alias Color string # A hexadecimal value representing a color e.g. #ffffff
---@alias ThemeType "dark" | "light"

---@class Theme
---@field base_30 Base30
---@field base_16 Base16
---@field extended_hls { ns_id?: number, hls: Highlights }
---@field type ThemeType

---@class Base30
---@field white Color
---@field darker_black Color
---@field black Color
---@field black2 Color
---@field one_bg Color
---@field one_bg2 Color
---@field one_bg3 Color
---@field grey Color
---@field grey_fg Color
---@field grey_fg2 Color
---@field light_grey Color
---@field red Color
---@field baby_pink Color
---@field pink Color
---@field line Color
---@field green Color
---@field vibrant_green Color
---@field blue Color
---@field nord_blue Color
---@field yellow Color
---@field sun Color
---@field purple Color
---@field dark_purple Color
---@field teal Color
---@field orange Color
---@field cyan Color
---@field statusline_bg Color
---@field lightbg Color
---@field pmenu_bg Color
---@field folder_bg Color

---@class Base16
---@field base00 Color
---@field base01 Color
---@field base02 Color
---@field base03 Color
---@field base04 Color
---@field base05 Color
---@field base06 Color
---@field base07 Color
---@field base08 Color
---@field base09 Color
---@field base0A Color
---@field base0B Color
---@field base0C Color
---@field base0D Color
---@field base0E Color
---@field base0F Color

---@class HighlightMap # Same as {val} accepted by nvim_set_hl()
---@field fg Color|nil
---@field bg Color|nil
---@field sp Color|nil
---@field blend integer|nil # Between 0 and 100
---@field bold boolean|nil
---@field standout boolean|nil
---@field underline boolean|nil
---@field undercurl boolean|nil
---@field underdouble boolean|nil
---@field underdotted boolean|nil
---@field underdashed boolean|nil
---@field strikethrough boolean|nil
---@field italic boolean|nil
---@field reverse boolean|nil
---@field nocombine boolean|nil
---@field link string|nil # Name of another highlight group to link to

---@alias Highlights table<string, HighlightMap>

---@class HighlightMap
---@field hls Highlights
---@field ns_id? number # Namespace id for this hightlight group. Defaults to 0

---@class Integration
---@field highlights fun(theme: Theme, style?: string): HighlightMap
---@field styles? string[]
