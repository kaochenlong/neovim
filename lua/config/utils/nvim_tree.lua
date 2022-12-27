require("nvim-tree").setup({
  sort_by = "name",
  view = {
    width = 23,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- nvim-tree
vim.keymap.set('n', '<F2>', ':NvimTreeToggle<Enter>', opts)

