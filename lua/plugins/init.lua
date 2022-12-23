require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  require "plugins.dev_tools"
  require "plugins.lsp"
  require "plugins.color_themes"
  require "plugins.appearance"
end)
