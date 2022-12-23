local keymap = vim.keymap

-- Telescope.nvim
local builtin = require('telescope.builtin')
keymap.set('n', 'FF', builtin.live_grep, {silent = true})
keymap.set('n', '<C-p>', '<CMD>lua require("config/telescope").project_files()<CR>', {
  noremap = true,
  silent = true
})
