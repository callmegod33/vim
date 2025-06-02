return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	-- dependencies = { "echasnovski/mini.icons" },
	opts = {},

	config = function()
		require("fzf-lua").setup({
				-- local map = function(keys, func, desc, mode)
				-- 	mode = mode or "n"
				-- 	vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
				-- end,
			-- lsp = {
			-- 	async_or_timeout = 5000,
			-- 	code_actions = false, -- disable fzf-lua LSP code actions
			-- },

			vim.keymap.set("n", "<leader>D", function()
				vim.lsp_typedefs()
			end, { desc = "type def" }),

			vim.keymap.set("n", "<leader>ds", function()
				vim.lsp_document_symbols()
			end, { desc = "doc symbols" }),

			vim.keymap.set("n", "<leader>ws", function()
				vim.lsp_live_workspace_symbols()
			end, { desc = "worksapce symbols" }),
		})
	end,

	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").files()
			end,
			desc = "find files in project dir",
		},
		{
			"<leader>fg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "grep project dir",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
			end,
			desc = "find in neovim configuration",
		},
		{
			"<leader>fh",
			function()
				require("fzf-lua").helptags()
			end,
			desc = "find help",
		},
		{
			"<leader>fk",
			function()
				require("fzf-lua").keymaps()
			end,
			desc = "find keymaps",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "find builtin FZF",
		},
		{
			"<leader>fw",
			function()
				require("fzf-lua").grep_cword()
			end,
			desc = "find current word",
		},
		{
			"<leader>fW",
			function()
				require("fzf-lua").grep_cWORD()
			end,
			desc = "find current WORD",
		},
		{
			"<leader>fd",
			function()
				require("fzf-lua").diagnostics_document()
			end,
			desc = "find diagnostics",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").resume()
			end,
			desc = "find resume",
		},
		{
			"<leader>fo",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "find old Files",
		},
		{
			"<leader><leader>",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "[ ] find existing buffers",
		},
		{
			"<leader>/",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "live grep current buffer",
		},
	},
}
