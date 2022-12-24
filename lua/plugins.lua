local ok, packer = pcall(require, 'packer')

if not ok then
  vim.notify "OOPS! packer.nvim is not installed properly."
  return
end

local packer_config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end
  }
}

packer.startup({
  function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'neovim/nvim-lspconfig'
    use {
      'williamboman/mason.nvim',
      config = [[require 'config.dev.mason']]
    }

    use {
      'akinsho/toggleterm.nvim',
      config = [[require 'config.utils.toggleterm']]
    }

    use {
      'nvim-tree/nvim-tree.lua',
      requires = { 'nvim-tree/nvim-web-devicons' },
      config = [[require 'config.utils.nvim_tree']]
    }

    use {
      'terrortylor/nvim-comment',
      config = [[require 'config.utils.comment']]
    }

    -- color themes
    use { 'navarasu/onedark.nvim', config = [[require 'config.themes.onedark']] }
    use { 'projekt0n/github-nvim-theme', config = function()
      require('github-theme').setup()
    end }

    -- appearances
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = [[require 'config.utils.lualine']]
    }
  end,
  config = packer_config
})
