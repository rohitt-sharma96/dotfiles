return {
	{
		"hrsh7th/nvim-cmp",
		-- This ensures the completion engine loads right when you enter Insert mode
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp", -- The source that was throwing the error
			"hrsh7th/cmp-buffer",   -- Allows autocompletion from words in the current file
			"hrsh7th/cmp-path",     -- Allows autocompletion for file paths
		},
		config = function()
			local cmp = require("cmp")
			cmp.setup({
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "buffer" },
					{ name = "path" },
				}),
			})
		end,
	},
}

