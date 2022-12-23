local colorscheme = 'onedark'
local ok, theme = pcall(require, colorscheme)

if not ok then
  vim.notify("OOPS! colorscheme " .. colorscheme .. " is not installed.")
  return
end

theme.load()
