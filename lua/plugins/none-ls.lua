return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.dart_format,
				null_ls.builtins.formatting.ktlint,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.ktlint,
        require("none-ls.diagnostics.eslint_d")
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
