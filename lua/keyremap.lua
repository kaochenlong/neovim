local keymap = vim.keymap
local opts = { silent = true }

-- Telescope.nvim
local builtin = require('telescope.builtin')
keymap.set('n', 'FF', builtin.live_grep, opts)
keymap.set('n', '<C-p>', '<CMD>lua require("config.telescope").project_files()<CR>', opts)

-- Nvim-tree
keymap.set('n', '<F2>', ':NvimTreeToggle<Enter>', opts)

keymap.set('v', 'p', '"_dP', opts) -- keep clipboard after pasting
