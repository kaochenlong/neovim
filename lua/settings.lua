vim.opt.number = true     -- show line number
vim.opt.showmode = false  -- disable mode(because of Vim-Airline)
vim.opt.list = false      -- do not display invisible chars
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.cursorline = true

-- vim.opt.compatible = false
vim.opt.clipboard = "unnamed"
vim.opt.bomb = false
vim.opt.mouse = "a"

vim.opt.termguicolors = true

vim.opt.showtabline = 2
vim.opt.shortmess = "I"     -- remove splash wording
vim.opt.equalalways = true  -- split windows are equal size
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.smartindent = true

------------------
-- search
------------------
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

------------------
-- split window
------------------
vim.opt.splitbelow = true
vim.opt.splitright = true

------------------
-- Scroll
------------------
vim.opt.scrolloff = 3

------------------
-- Tab and space
------------------
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

------------------
-- Sound
-- disable sound when errors
------------------
vim.opt.visualbell = true
vim.opt.errorbells = false
vim.opt.tm = 500
