local use = require('packer').use

require('packer').startup(function()
  -- Package Manager
  use 'wbthomason/packer.nvim'

  require("plugins.dev_tools")
  require("plugins.lsp")
  require("plugins.color_themes")
  require("plugins.appearance")

  -- File Finder
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Development
  use {
    'akinsho/toggleterm.nvim',
    tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  }
  require("toggleterm").setup{
    open_mapping = [[<C-\>]],
  }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    config = function()
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
    end
  }
end)