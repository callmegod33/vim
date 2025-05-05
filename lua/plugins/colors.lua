function ColorMyPencils(color)
	color = color or "rose-pine-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		priority = 1000,
		lazy = false,
		config = function()
			require("rose-pine").setup({
				-- disable_background = true,
				styles = {
					italic = false,
				},
			})
			ColorMyPencils("rose-pine")
		end,
	},

	{
		"nyoom-engineering/oxocarbon.nvim",
		-- Add in any other configuration;
		--   event = foo,
		--   config = bar
		--   end,
	},
}
