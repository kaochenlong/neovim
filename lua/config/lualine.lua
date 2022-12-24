local ok, lualine = pcall(require, 'lualine')

if ok then
  lualine.setup {
    options = { theme = 'onedark' }
  }
end
