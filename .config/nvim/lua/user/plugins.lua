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

vim.api.nvim_create_autocmd("BufWritePost", {
	pattern = "*",
	callback = function()
		vim.cmd[[so %]]
		vim.cmd[[PackerSync]]
	end
})

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

	-- Telescope --
	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	-- Misc --
	use 'nvim-lualine/lualine.nvim'
	use 'numToStr/Comment.nvim'
	use 'morhetz/gruvbox'

	if PACKER_BOOTSTRAP then
		require('packer').sync()
	end
end)
