local generate_color = require("themes.colors").change_hex_lightness

---@type Integration
local M = {}

M.highlights = function(theme)
  local colors = theme.base_30
  local base = theme.base_16

  local hls = {
    MatchWord = {
      bg = colors.grey,
      fg = colors.white,
    },

    Pmenu = { bg = colors.one_bg },
    PmenuSbar = { bg = colors.one_bg },
    PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
    PmenuThumb = { bg = colors.grey },

    MatchParen = { link = "MatchWord" },

    Comment = { fg = colors.grey_fg },

    CursorLineNr = { fg = colors.white },
    LineNr = { fg = colors.grey },

    -- floating windows
    FloatBorder = { fg = colors.blue },
    NormalFloat = { bg = colors.darker_black },

    NvimInternalError = { fg = colors.red },
    WinSeparator = { fg = colors.line },

    Normal = {
      fg = base.base05,
      bg = base.base00,
    },

    Bold = {
      bold = true,
    },

    Debug = {
      fg = base.base08,
    },

    Directory = {
      fg = base.base0D,
    },

    Error = {
      fg = base.base00,
      bg = base.base08,
    },

    ErrorMsg = {
      fg = base.base08,
      bg = base.base00,
    },

    Exception = {
      fg = base.base08,
    },

    FoldColumn = {
      fg = base.base0C,
      bg = base.base01,
    },

    Folded = {
      fg = base.base03,
      bg = base.base01,
    },

    IncSearch = {
      fg = base.base01,
      bg = base.base09,
    },

    Italic = {
      italic = true,
    },

    Macro = {
      fg = base.base08,
    },

    ModeMsg = {
      fg = base.base0B,
    },

    MoreMsg = {
      fg = base.base0B,
    },

    Question = {
      fg = base.base0D,
    },

    Search = {
      fg = base.base01,
      bg = base.base0A,
    },

    Substitute = {
      fg = base.base01,
      bg = base.base0A,
      sp = "none",
    },

    SpecialKey = {
      fg = base.base03,
    },

    TooLong = {
      fg = base.base08,
    },

    UnderLined = {
      underline = true,
    },

    Visual = {
      bg = base.base02,
    },

    VisualNOS = {
      fg = base.base08,
    },

    WarningMsg = {
      fg = base.base08,
    },

    WildMenu = {
      fg = base.base08,
      bg = base.base0A,
    },

    Title = {
      fg = base.base0D,
      sp = "none",
    },

    Conceal = {
      bg = "NONE",
    },

    Cursor = {
      fg = base.base00,
      bg = base.base05,
    },

    NonText = {
      fg = base.base03,
    },

    SignColumn = {
      fg = base.base03,
      sp = "NONE",
    },

    ColorColumn = {
      bg = base.base01,
      sp = "none",
    },

    CursorColumn = {
      bg = base.base01,
      sp = "none",
    },

    CursorLine = {
      bg = "none",
      sp = "none",
    },

    QuickFixLine = {
      bg = base.base01,
      sp = "none",
    },

    -- spell
    SpellBad = {
      undercurl = true,
      sp = base.base08,
    },

    SpellLocal = {
      undercurl = true,
      sp = base.base0C,
    },

    SpellCap = {
      undercurl = true,
      sp = base.base0D,
    },

    SpellRare = {
      undercurl = true,
      sp = base.base0E,
    },

    healthSuccess = {
      bg = colors.green,
      fg = colors.black,
    },

    -- lazy.nvim
    LazyH1 = {
      bg = colors.green,
      fg = colors.black,
    },

    LazyButton = {
      bg = colors.one_bg,
      fg = generate_color(colors.light_grey, vim.o.bg == "dark" and 10 or -20),
    },

    LazyH2 = {
      fg = colors.red,
      bold = true,
      underline = true,
    },

    LazyReasonPlugin = { fg = colors.red },
    LazyValue = { fg = colors.teal },
    LazyDir = { fg = base.base05 },
    LazyUrl = { fg = base.base05 },
    LazyCommit = { fg = colors.green },
    LazyNoCond = { fg = colors.red },
    LazySpecial = { fg = colors.blue },
    LazyReasonFt = { fg = colors.purple },
    LazyOperator = { fg = colors.white },
    LazyReasonKeys = { fg = colors.teal },
    LazyTaskOutput = { fg = colors.white },
    LazyCommitIssue = { fg = colors.pink },
    LazyReasonEvent = { fg = colors.yellow },
    LazyReasonStart = { fg = colors.white },
    LazyReasonRuntime = { fg = colors.nord_blue },
    LazyReasonCmd = { fg = colors.sun },
    LazyReasonSource = { fg = colors.cyan },
    LazyReasonImport = { fg = colors.white },
    LazyProgressDone = { fg = colors.green },
  }

  return {
    hls = hls,
  }
end

return M
