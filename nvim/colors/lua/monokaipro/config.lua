---@class Config
local config

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local function opt(key, default)
  key = "monokaipro_" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  filter = opt("filter", "default"),
  transparent = opt("transparent", false),
  commentStyle = opt("italic_comments", true) and "italic" or "NONE",
  keywordStyle = opt("italic_keywords", true) and "italic" or "NONE",
  functionStyle = opt("italic_functions", false) and "italic" or "NONE",
  variableStyle = opt("italic_variables", false) and "italic" or "NONE",
  hideInactiveStatusline = opt("hide_inactive_statusline", false),
  terminalColors = opt("terminal_colors", true),
  sidebars = opt("sidebars", {"vista_kind"}),
  float = opt("float", {}),
  colors = opt("colors", {}),
  dev = opt("dev", false),
  flatFloat = opt("flat_float", false),
  flatSidebar = opt("flat_sidebar", false),
  flatTerm = opt("flat_term", false),
  transform_colors = false
}

vim.o.background = "dark"

return config
