local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		'git',
		'clone',
		'--depth',
		'1',
		'https://github.com/wbthomason/packer.nvim',
		install_path
	})
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
	-- Packer --
	use 'wbthomason/packer.nvim'

	-- LSP --
	use 'williamboman/nvim-lsp-installer'
	use 'neovim/nvim-lspconfig'
	use 'folke/lua-dev.nvim'
	use 'simrat39/rust-tools.nvim'

	-- Snippets --
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	-- Completion --
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-nvim-lua'
	use 'saadparwaiz1/cmp_luasnip'

	-- Git --
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'
	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

	-- Treesitter --
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- Telescope --
	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Colorschemes --
	use 'morhetz/gruvbox'
	use 'jacoborus/tender.vim'
	use {'dracula/vim', as = 'dracula'}
	use 'shaunsingh/nord.nvim'

	-- Misc --
	use 'nvim-lualine/lualine.nvim'
	use 'numToStr/Comment.nvim'

	-- LaTeX --

	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
