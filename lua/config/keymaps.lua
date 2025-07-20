local augroup = vim.api.nvim_create_augroup
local MyGroup = augroup("MyGroup", {})

vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "open diagnostic in float" })

vim.keymap.set("n", "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
	})
end, { desc = "format current file" })

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "yanking highlight",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

vim.keymap.set("n", "K", function()
	vim.lsp.buf.hover({ border = "rounded", max_height = 25, max_width = 120 })
end)

local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
	group = MyGroup,
	callback = function()
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, { desc = "goto defintion" })

		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, { desc = "goto declaration" })

		vim.keymap.set("n", "<leader>gi", function()
			vim.lsp.buf.implementation()
		end, { desc = "goto implementation" })

		-- vim.keymap.set("n", "<leader>ws", function()
		-- 	vim.lsp.buf.workspace_symbol()
		-- end, { desc = "workspace symbols" })

		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, { desc = "code action" })

		vim.keymap.set("n", "<leader>vr", function()
			vim.lsp.buf.references()
		end, { desc = "goto refs" })

		vim.keymap.set("n", "<leader>cr", function()
			vim.lsp.buf.rename()
		end, { desc = "rename" })

		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, { desc = "signature help" })
	end,
})
