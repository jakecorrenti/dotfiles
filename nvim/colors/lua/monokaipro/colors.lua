local util = require("monokaipro.util")

local M = {}

---@param config Config
---@return ColorScheme
function M.setup(config)
  config = config or require("monokaipro.config")

  -- Color Palette
  ---@class ColorScheme
  local filterColors = {}
  filterColors['default'] = {
    none = "NONE",
    bg_black = "#19181a",
    bg_dark = "#221f22",
    bg = "#2d2a2e",
    bg_highlight = "#383539",
    bg_light = "#403e41",
    bg_light_highlight = "#4a484b",
    gray_dark = "#5b595c",
    gray = "#727072",
    gray_light = "#939293",
    fg_dark = "#c1c0c0",
    fg = "#fcfcfa",
    red = "#ff6188",
    orange = "#fc9867",
    green = "#a9dc76",
    yellow = "#ffd866",
    magenta = "#ab9df2",
    cyan = "#78dce8"
  }

  filterColors['ristretto'] = {
    none = "NONE",
    bg_black = "#191515",
    bg_dark = "#211c1c",
    bg = "#2c2525",
    bg_highlight = "#372f2f",
    bg_light = "#403838",
    bg_light_highlight = "#4a4141",
    gray_dark = "#5b5353",
    gray = "#72696a",
    gray_light = "#948a8b",
    fg_dark = "#c3b7b8",
    fg = "#fff1f3",
    red = "#fd6883",
    orange = "#f38d70",
    green = "#adda78",
    yellow = "#f9cc6c",
    magenta = "#a8a9eb",
    cyan = "#85dacc"
  }

  filterColors['machine'] = {
    none = "NONE",
    bg_black = "#161b1e",
    bg_dark = "#1d2528",
    bg = "#273136",
    bg_highlight = "#313c40",
    bg_light = "#3a4449",
    bg_light_highlight = "#434e52",
    gray_dark = "#545f62",
    gray = "#6b7678",
    gray_light = "#8b8798",
    fg_dark = "#b8c4c3",
    fg = "#f2fffc",
    red = "#ff6d72",
    orange = "#ffb270",
    green = "#a2e57b",
    yellow = "#ffed72",
    magenta = "#ab9df2",
    cyan = "#baa0f8"
  }


  filterColors['octogon'] = {
    none = "NONE",
    bg_black = "#161821",
    bg_dark = "#1e1f2b",
    bg = "#282a3a",
    bg_highlight = "#323443",
    bg_light = "#3a3d4b",
    bg_light_highlight = "#434653",
    gray_dark = "#535763",
    gray = "#696d77",
    gray_light = "#888d94",
    fg_dark = "#b2b9bd",
    fg = "#eaf2f1",
    red = "#ff657a",
    orange = "#ffd76d",
    green = "#bad761",
    yellow = "#ffd76d",
    magenta = "#c39ac9",
    cyan = "#9cd1bb"
  }

  filterColors['spectrum'] = {
    none = "NONE",
    bg_black = "#131313",
    bg_dark = "#191919",
    bg = "#222222",
    bg_highlight = "#2d2c2d",
    bg_light = "#363537",
    bg_light_highlight = "#403e41",
    gray_dark = "#525053",
    gray = "#69676c",
    gray_light = "#8b888f",
    fg_dark = "#bab6c0",
    fg = "#f7f1ff",
    red = "#fc618d",
    orange = "#fd9353",
    green = "#7bd88f",
    yellow = "#fce566",
    magenta = "#948ae3",
    cyan = "#5ad4e6"
  }

  filterColors['classic'] = {
    none = "NONE",
    bg_black = "#161613",
    bg_dark = "#1d1e19",
    bg = "#272822",
    bg_highlight = "#32332c",
    bg_light = "#3b3c35",
    bg_light_highlight = "#45463e",
    gray_dark = "#57584f",
    gray = "#607066",
    gray_light = "#919288",
    fg_dark = "#c0c1b5",
    fg = "#fdfff1",
    red = "#f92672",
    orange = "#fd971f",
    green = "#a9dc76",
    yellow = "#e6db74",
    magenta = "#ab9df2",
    cyan = "#66d9ff"
  }

  local filter = config.filter
  local c = {}
  c = filterColors[filter]
  util.bg = c.bg

  local derivedColors = {}
  derivedColors = {

  diff = {
    add = util.darken(c.green, .25),
    change = util.darken(c.orange, .25),
    delete = util.darken(c.red, .25),
    text = util.darken(c.cyan, .15),
  },

  git = {
    add = c.green,
    change = c.orange,
    delete = c.red
  },

  gitSigns = {
    add = util.darken(c.green, .75),
    change = util.darken(c.orange, .75),
    delete = util.darken(c.red, .75)
  },

  fg_gutter = c.gray_dark,
  border_highlight = c.gray,
  border = c.bg_black,
  black = c.bg_black,

  bg_statusline = c.bg_dark,

  -- Sidebar and Floats are configurable
  bg_sidebar = config.flatSidebar and c.bg or c.bg_dark,
  bg_float = config.flatFloat and c.bg or c.bg_light,

  bg_visual = util.darken(c.magenta, 0.33),
  bg_search = c.gray,

  error = c.red,
  warning = c.yellow,
  info = c.cyan,
  hint = c.gray,

  terminal_black = c.gray
  }
for k,v in pairs(derivedColors) do
  c[k] = v
end


  util.color_overrides(c, config)
  return c
end

return M
