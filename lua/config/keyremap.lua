local keymap = vim.keymap
local opts = { silent = true }

-- telescope.nvim
local builtin = require('telescope.builtin')
keymap.set('n', 'FF', builtin.live_grep, opts)
keymap.set('n', '<C-p>', '<CMD>lua require("config.utils.telescope").project_files()<CR>', opts)

-- keep clipboard after pasting
keymap.set('v', 'p', '"_dP', opts)

-- cancel search highlight if hit enter key after searching
keymap.set('n', '<Enter>', ':nohlsearch<Enter><Enter>')

