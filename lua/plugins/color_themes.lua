local use = require('packer').use

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
