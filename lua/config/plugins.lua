-- stevearc/conform.nvim
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		markdown = { "prettier" },
		yaml = { "yamlfmt" },
	},
})

-- format on save autocmd
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
