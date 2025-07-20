return {
	{
		"folke/trouble.nvim",
		opts = {}, -- for default options, refer to the configuration section for custom setup.
		cmd = "Trouble",
		keys = {
			{
				"<leader>xx",
				"<cmd>trouble diagnostics toggle<cr>",
				desc = "diagnostics (trouble)",
			},
			{
				"<leader>xX",
				"<cmd>trouble diagnostics toggle filter.buf=0<cr>",
				desc = "buffer diagnostics (trouble)",
			},
			{
				"<leader>cs",
				"<cmd>trouble symbols toggle focus=false<cr>",
				desc = "symbols (trouble)",
			},
			{
				"<leader>cl",
				"<cmd>trouble lsp toggle focus=false win.position=right<cr>",
				desc = "lsp definitions / references / ... (trouble)",
			},
			{
				"<leader>xL",
				"<cmd>Trouble loclist toggle<cr>",
				desc = "location list (trouble)",
			},
			{
				"<leader>xQ",
				"<cmd>trouble qflist toggle<cr>",
				desc = "quickfix list (trouble)",
			},
		},
	},
}
