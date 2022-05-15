local cmp = require 'cmp'
local luasnip = require 'luasnip'

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup {
	mapping = {
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<C-y>"] = cmp.mapping.confirm {
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		},
	},

	sources = {
		{ name = "nvim_lua" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer", keyword_length = 5 },
	},

	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
}
