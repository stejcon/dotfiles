-- Leader --
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Telescope --
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>sf', function()
  require('telescope.builtin').find_files { previewer = false }
end)
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').current_buffer_fuzzy_find)
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags)
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').grep_string)
vim.keymap.set('n', '<leader>sp', require('telescope.builtin').live_grep)

-- Diagnostic --
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Fugitive --
vim.keymap.set('n', '<leader>G', ':G<CR>')
vim.keymap.set('n', '<leader>Gb', ':G blame<CR>')
vim.keymap.set('n', '<leader>Gd', ':Gvdiffsplit!<CR>')

-- LSP --
-- Note: These are set in language-servers.lua, this is only here as a copy for easy referencing --
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
-- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
-- vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
-- vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)

-- Brackets --
vim.keymap.set('i', '{}', '{}<Left>')
vim.keymap.set('i', '[]', '[]<Left>')
vim.keymap.set('i', '()', '()<Left>')
vim.keymap.set('i', '\'\'', '\'\'<Left>')
vim.keymap.set('i', '""', '""<Left>')
vim.keymap.set('i', '<>', '<><Left>')

-- Window Movement --
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
