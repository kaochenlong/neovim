local use = require('packer').use

require('packer').startup(function()
  -- Package Manager
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use {
    'williamboman/mason.nvim', config = function()
      require("mason").setup()
    end
  }

  -- Color Theme
  use {
    'navarasu/onedark.nvim', config = function()
      require('onedark').setup {
        style = 'darker'
      }
      require('onedark').load()
    end
  }
end)

