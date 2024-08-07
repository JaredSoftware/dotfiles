-- init.lua
vim.g.mapleader = ' '

-- Packer bootstrap
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Load configurations
require('user.plugins')
require('user.options')
require('user.keymaps')
require('user.treesitter')
require('user.lualine')
require('user.telescope')
require('user.nvim-tree')
require('user.indent-blankline')
require('user.ufo')
require('user.null-ls') 
