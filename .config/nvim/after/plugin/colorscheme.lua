-- codesmell_dark
-- ci_dark
-- codedark
-- onedark
local status, _ = pcall(vim.cmd, "colorscheme codesmell_dark")
if not status then
  print("Colorscheme not found!")
  return
end
