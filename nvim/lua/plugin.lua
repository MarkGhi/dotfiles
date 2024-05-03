require("packer").startup(function()
	use("wbthomason/packer.nvim")
	-- Theme
	use(require "plugins.onedark")
	-- Startup screen
	use(require "plugins.alpha")
	-- Fuzzy finder
	use(require "plugins.telescope")
	use(require "plugins.telescope_project")
	-- Key mapping viewer
	use(require "plugins.which_key")
	-- Floating terminal
	use(require "plugins.toggle_term")
	-- Lsp stuffs
	use(require "plugins.lsp")
	-- Bottom status line
	use(require "plugins.lualine")
	-- Syntax highlighter
	use(require "plugins.treesitter")
	-- Add smooth scrolling
	use(require "plugins.neoscroll")
	-- Automatically closes parentheses, square brackets and braces when typing.
	use("jiangmiao/auto-pairs")
	-- Outline window
	use(require "plugins.outline")
	-- File explorer window
	use(require "plugins.tree")
end)
