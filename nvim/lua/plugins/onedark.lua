return {
	"navarasu/onedark.nvim",
	config = function()
		local onedark = require("onedark")

		onedark.setup({
			style = "warmer",
			toggle_style_key = "<leader>@", --Put a random mapping to avoid any conflicts
		})
		onedark.load()
	end,
}
