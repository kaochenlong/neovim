local options = {
  number = true,            -- show line number
  showmode = false,         -- disable mode(because of Vim-Airline)
  list = false,             -- do not display invisible chars
  wrap = true,
  linebreak = true,
  cursorline = true,
  termguicolors = true,
  clipboard = "unnamed",
  bomb = false,
  mouse = "a",
  showtabline = 2,
  shortmess = "IT",         -- remove splash wording and truncate messages
  equalalways = true,       -- split windows are equal size
  swapfile = false,
  backup = false,
  smartindent = true,

  -- search --
  hlsearch = true,
  ignorecase = true,
  incsearch = true,
  smartcase = true,

  -- split window --
  splitbelow = true,
  splitright = true,

  -- scroll --
  scrolloff = 3,

  -- tab and space --
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,

  -- sound --
  visualbell = true,
  errorbells = false,
  tm = 500,
}

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

for k, v in pairs(options) do
  vim.opt[k] = v
end
