local config = require("monokaipro.config")
local colors = require("monokaipro.colors").setup(config)
local util = require("monokaipro.util")

local monokaipro = {}

monokaipro.normal = {
  left = {{ colors.black, colors.cyan }, { colors.cyan, colors.bg }},
  middle = {{ colors.cyan, colors.fg_gutter }},
  right = {{ colors.fg_sidebar, colors.bg_statusline }, { colors.cyan, colors.bg }},
  error = {{ colors.black, colors.error }},
  warning = {{ colors.black, colors.warning }},
}

monokaipro.insert = {
  left = {{ colors.black, colors.green }, { colors.cyan, colors.bg }},
}

monokaipro.visual = {
  left = {{ colors.black, colors.magenta }, { colors.cyan, colors.bg }},
}

monokaipro.replace = {
  left = {{ colors.black, colors.red }, { colors.cyan, colors.bg }},
}

monokaipro.inactive = {
  left = {{ colors.cyan, colors.bg_statusline }, {colors.bg_light, colors.bg }},
  middle = {{ colors.fg_gutter, colors.bg_statusline }},
  right = {{ colors.fg_gutter, colors.bg_statusline }, {colors.bg_light, colors.bg }},
}

if vim.o.background == "light" then
  for _, mode in pairs(monokaipro) do
    for _, section in pairs(mode) do
      for _, subsection in pairs(section) do
        subsection[1] = util.getColor(subsection[1])
        subsection[2] = util.getColor(subsection[2])
      end
    end
  end
end

return monokaipro
