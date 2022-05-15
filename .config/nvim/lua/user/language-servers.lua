local lsp_installer = require "nvim-lsp-installer"
local lspconfig = require "lspconfig"
local luadev = require "lua-dev".setup({})
local servers = {
	"clangd",
	"rust_analyzer",
	"sumneko_lua",
	"bashls",
	"pyright",
}

lsp_installer.setup({
	ensure_installed = servers,
	automatic_installation = true,
})

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

for _, lsp in ipairs(servers) do
	if (lsp == 'sumneko_lua') then
		lspconfig.sumneko_lua.setup(luadev, {
			on_attach = on_attach,
			capabilities = capabilities,
		})
	elseif (lsp == 'rust_analyzer') then
		require "rust-tools".setup({})
		lspconfig.rust_analyzer.setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	else
	lspconfig[lsp].setup {
		on_attach = on_attach,
		capabilities = capabilities,
	}
	end
end
