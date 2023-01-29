require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"sumneko_lua",
		"pyright",
		"clangd",
		"zls",
	}
})


local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
-- vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

require("lsp.config")
require("lsp.ui")
