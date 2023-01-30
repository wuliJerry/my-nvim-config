require("lsp.config.lua")
require("lsp.config.clangd")
require'lspconfig'.zls.setup{}
require'lspconfig'.marksman.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.svls.setup{}
require'lspconfig'.vtsls.setup{}

