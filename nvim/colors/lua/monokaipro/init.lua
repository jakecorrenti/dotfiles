local util = require("monokaipro.util")
local theme = require("monokaipro.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
