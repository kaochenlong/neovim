local T = {}

T.project_files = function()
  local opts = {}
  local builtin = require('telescope.builtin')
  vim.fn.system('git rev-parse --is-inside-work-tree')
  if vim.v.shell_error == 0 then
    builtin.git_files(opts)
  else
    builtin.find_files(opts)
  end
end

return T

