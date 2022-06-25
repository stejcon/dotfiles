local filetypes = {
	-- LSP covered by clangd
	'c',
	'cpp',
	'cuda',

	-- LSP covered by sumneko lua
	'lua',

	-- LSP covered by rust_analyzer
	'rust',

	-- LSP covered by pyright
	'python',

	-- LSP covered by bashls
	'bash',

	-- LSP covered by texlab
	'latex',
	'bibtex',
	'markdown',

	-- LSP covered by spectral
	'yaml',
	'json',

	-- LSP covered by cmake
	'cmake',

	-- LSP covered by taplo
	'toml',

	-- LSP covered by emmet_ls
	'html',
	'css',

	-- LSP covered by r_language_server
	'r',

	-- LSP covered by jdtls
	'java',

	-- Not covered in LSP
	'llvm',
	'http',
 	'make',
	'vim',
}

require 'nvim-treesitter.configs'.setup {

	ensure_installed = filetypes,

	sync_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
      		node_incremental = "grn",
      		scope_incremental = "grc",
      		node_decremental = "grm",
		}
	}
}
