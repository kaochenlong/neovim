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
    use 'williamboman/mason.nvim'

    use 'akinsho/toggleterm.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use 'nvim-tree/nvim-web-devicons'

    -- color themes
    use { 'navarasu/onedark.nvim', config = function()
      require('onedark').setup { style = 'darker' }
    end }
    use { 'projekt0n/github-nvim-theme', config = function()
      require('github-theme').setup()
    end }

    -- appearances
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
  end,
  config = packer_config
})
