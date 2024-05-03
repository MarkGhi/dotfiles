return {
	"nvim-lualine/lualine.nvim",
	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	config = function()
		require("lualine").setup({
			options = {
				globalstatus = true, -- Set global to avoid bar split when window is splitted
				theme = "onedark",
			},
			tabline = {
				lualine_a = { "buffers" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "tabs" },
			},
		})
	end
}
