local ok, packer = pcall(require, 'packer')

if not ok then
  vim.notify "OOPS! packer.nvim is not installed properly."
  return
end

packer.startup({function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
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
end, config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}})

