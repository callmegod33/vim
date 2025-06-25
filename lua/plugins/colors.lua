function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

        vim.cmd([[highlight! link WhichKeyBorder FloatBorder]])
        vim.cmd([[highlight! link FzfLuaBorder   FloatBorder]])

	vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "#000000" })
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		config = function()
			require("rose-pine").setup({
				enable = {
					terminal = true,
					legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},

				styles = {
					italic = false,
					transparency = false,
				},

				highlight_groups = {
					Comment = { fg = "muted" },
					StatusLine = { fg = "subtle", bg = "muted", blend = 15 },
					-- Background = { bg = "#000000" }
				},

				palette = {
					moon = {
						rose = "#ebbcba",
						gold = "#e0c797",
						foam = "#b0c6d5",
						-- love = "#b4637a",
					},
				},
			})
			ColorMyPencils()
		end,
	},
}
