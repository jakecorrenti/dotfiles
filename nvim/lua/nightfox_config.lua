local nightfox = require "nightfox"
local colors = require "nightfox.colors"

nightfox.setup {
  fox = "nordfox",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = "italic",
    functions = "NONE",
    keywords = "italic",
    strings = "italic",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = true,
    search = false,
  },
  hlgroups = {
    GitSignsAdd = { fg = colors.green }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
  },
}

nightfox.load()
