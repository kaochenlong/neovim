local keymap = vim.keymap

-- Telescope.nvim
local builtin = require('telescope.builtin')
keymap.set('n', 'FF', builtin.live_grep, { silent = true })
keymap.set('n', '<C-p>', '<CMD>lua require("config/telescope").project_files()<CR>', { silent = true })

-- Nvim-tree
keymap.set('n', '<F2>', ':NvimTreeToggle<Enter>', {})
