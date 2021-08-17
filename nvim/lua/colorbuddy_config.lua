require'colorbuddy'.colorscheme 'gruvbuddy'

local Group = require'colorbuddy.group'.Group
local groups = require'colorbuddy.group'.groups
local styles = require'colorbuddy.style'.styles
local c = require("colorbuddy.color").colors
local Color = require("colorbuddy.color").Color

Color.new("background", "#282c34")
Group.new("EndOfBuffer", c.background)
Group.new("LineNr", c.gray3, c.background)
Group.new("SignColumn", c.background)
Group.new("TSPunctBracket", c.purple:light():light())
Group.new('italicBoldFunction', groups.Function, groups.Function,
          styles.bold + styles.italic)
Group.new('TSPunctDelimiter', c.red:light():light())
Group.new('VertSplit', c.gray3)
