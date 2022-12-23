local use = require('packer').use

use 'neovim/nvim-lspconfig'
use {
  'williamboman/mason.nvim', config = function()
    require("mason").setup()
  end
}
