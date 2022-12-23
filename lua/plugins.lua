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
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup { style = 'darker' }
      require('onedark').load()
    end
  }
  use {
    'projekt0n/github-nvim-theme',
    config = function()
      require('github-theme').setup()
    end
  }

  -- File Finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Appearance
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
end)

