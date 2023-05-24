local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
-- local lualine = require("lualine.themes.nightfly")
-- local lualine = require("gruvbox.lightline")
-- local theme = require("lualine.themes.vscode")
-- local theme = require("lualine.themes.tokyonight")

-- configure lualine with modified theme
-- lualine.setup({
-- options = {
-- theme = theme,
-- },
-- })
