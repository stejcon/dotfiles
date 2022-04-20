require'lspconfig'.ccls.setup{
	capabilities = capabilities,
	on_attach = function(client)
		vim.keymap.set({"n"}, "K", vim.lsp.buf.hover, {buffer = 0})
		vim.keymap.set({"n"}, "gd", vim.lsp.buf.definition, {buffer = 0})
		vim.keymap.set({"n"}, "gt", vim.lsp.buf.type_definition, {buffer = 0})
		vim.keymap.set({"n"}, "gi", vim.lsp.buf.implementation, {buffer = 0})
		vim.keymap.set({"n"}, "gj", vim.diagnostic.goto_next, {buffer = 0})
		vim.keymap.set({"n"}, "gk", vim.diagnostic.goto_prev, {buffer = 0})
		vim.keymap.set({"n"}, "rv", vim.lsp.buf.rename, {buffer = 0})
	end,
}
