local opt = vim.opt
opt.number = true     -- show line number
opt.showmode = false  -- disable mode(because of Vim-Airline)
opt.list = false      -- do not display invisible chars
opt.wrap = true
opt.linebreak = true
opt.cursorline = true

-- vim.opt.compatible = false
opt.clipboard = "unnamed"
opt.bomb = false
opt.mouse = "a"

opt.termguicolors = true

opt.showtabline = 2
opt.shortmess = "I"     -- remove splash wording
opt.equalalways = true  -- split windows are equal size
opt.swapfile = false
opt.backup = false
opt.smartindent = true

------------------
-- search
------------------
opt.hlsearch = true
opt.ignorecase = true
opt.incsearch = true
opt.smartcase = true

------------------
-- split window
------------------
opt.splitbelow = true
opt.splitright = true

------------------
-- Scroll
------------------
opt.scrolloff = 3

------------------
-- Tab and space
------------------
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

------------------
-- Sound
-- disable sound when errors
------------------
opt.visualbell = true
opt.errorbells = false
opt.tm = 500
