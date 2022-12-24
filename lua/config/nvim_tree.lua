local ok, nvim_tree = pcall(require, 'nvim-tree')

if ok then
  nvim_tree.setup({
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
end
