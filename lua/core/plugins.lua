local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer - Package Manager
  use 'wbthomason/packer.nvim'
  -- Tokyonight - Colortheme
  use 'folke/tokyonight.nvim'
  -- Gruvbox - Colortheme
  use 'ellisonleao/gruvbox.nvim'
  -- Neovim Tree - Navigation Menu
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  -- Lualine
  use 'nvim-lualine/lualine.nvim'
  -- Treesitter - Text highligthing
  use 'nvim-treesitter/nvim-treesitter'
  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
