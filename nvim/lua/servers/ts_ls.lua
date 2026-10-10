return function(lspconfig, capabilities, on_attach )
lspconfig.ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = {
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
	},
	settings = {
		typescript = {
			indentStyle = "space",
			indentSize = 2,
		},
	},
})
end
