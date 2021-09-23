vim.g.colors_name = "gruvbones"

-- let's base bg=dark, bg=light on zenflesh, zenbones specs respectively
local base_name = vim.opt.background:get() == "dark" and "zenflesh" or "zenbones"

-- reset base palette and specs
package.loaded[base_name .. ".palette"] = nil
package.loaded[base_name] = nil

local lush = require "lush"
local hsl = lush.hsl

-- modify base palette (before requiring specs)
-- and we can also define our own
-- note: non-exhaustive copy of gruvbox palette. Ref: https://github.com/gruvbox-community/gruvbox#palette
local base = require(base_name .. ".palette")
local gruv
if base_name == "zenbones" then
    base.bg = hsl "#fbf1c7"
    base.fg = hsl "#3c3836"
    gruv = {
        gray = hsl "#7c6f64",
        fg0 = hsl "#282828",
        fg1 = hsl "#3c3836",
        fg2 = hsl "#504945",
        fg3 = hsl "#665c54",
        fg4 = hsl "#7c6f64",
    }
else
    base.bg = hsl "#282828"
    base.fg = hsl "#ebdbb2"
    gruv = {
        gray = hsl "#a89984",
        fg0 = hsl "#fbf1c7",
        fg1 = hsl "#ebdbb2",
        fg2 = hsl "#d5c4a1",
        fg3 = hsl "#d5c4a1",
        fg4 = hsl "#a89984",
    }
end

base.rose = hsl "#cc241d"
base.leaf = hsl "#98971a"
base.wood = hsl "#d79921"
base.water = hsl "#458588"
base.blossom = hsl "#b16286"
base.sky = hsl "#689d6a"

-- extend specs using Lush
local theme = require(base_name)
local specs = lush.extends({ theme }).with(function()
    return {
        Constant { fg = gruv.fg4, gui = "italic" },
        Identifier { fg = gruv.fg2, gui = "italic" },
        Special { fg = gruv.fg3, gui = "bold" },
        Delimiter { fg = gruv.gray },
        Comment { fg = gruv.gray, gui = "italic" },
        LineNr { fg = Comment.fg },
    }
end)

-- apply terminal colors
require(base_name .. ".terminal").setup()

-- include our theme file and pass it to lush to apply
lush(specs)
