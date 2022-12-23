local opt = vim.opt
local g = vim.g

opt.number = true     -- show line number
opt.showmode = false  -- disable mode(because of Vim-Airline)
opt.list = false      -- do not display invisible chars
opt.wrap = true
opt.linebreak = true
opt.cursorline = true
opt.termguicolors = true

opt.clipboard = "unnamed"
opt.bomb = false
opt.mouse = "a"

opt.showtabline = 2
opt.shortmess = "IT"    -- remove splash wording and truncate messages
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
-- scroll
------------------
opt.scrolloff = 3

------------------
-- tab and space
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

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
