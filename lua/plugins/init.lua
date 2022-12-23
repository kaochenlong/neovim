local ok, packer = pcall(require, 'packer')

if not ok then
  vim.notify "OOPS! packer.nvim is not installed properly."
  return
end

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup { style = 'darker' }
    end
  }
  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup()
    end
  }

  require "plugins.dev_tools"
  require "plugins.lsp"
  require "plugins.color_themes"
  require "plugins.appearance"
end)
