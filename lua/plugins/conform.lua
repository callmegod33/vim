return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang_format" },
			-- python = { "isort", "black" },
			rust = { "rustfmt", lsp_format = "fallback" },
		},
		formatters = {
			clang_format = {
				command = "clang-format",
				args = { "--style=Microsoft" },
			},
		},
	},
}
