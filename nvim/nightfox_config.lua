local nightfox = require'nightfox'

nightfox.setup({
  fox = "nordfox",
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = "italic",
    functions = "italic",
    keywords = "italic",
    strings = "italic",
    variables = "NONE",
  },
  inverse = {
    match_paren = false,
    visual = true,
    search = false,
  },
})

nightfox.load()
