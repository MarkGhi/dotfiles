return {
	"simrat39/symbols-outline.nvim",
	tag = "v2.*",
	config = function()
		-- Set outline size and starting unfolding depth
		require("symbols-outline").setup({
			width = 10,
			autofold_depth = 2
		})
	end,
}
