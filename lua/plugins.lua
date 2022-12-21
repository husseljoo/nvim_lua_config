--Plugins
return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'tpope/vim-fugitive'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'kyazdani42/nvim-web-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'Mofiqul/dracula.nvim'
  use 'mhartington/formatter.nvim'
end)
