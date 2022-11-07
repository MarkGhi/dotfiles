require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({
		"goolord/alpha-nvim", -- Startup screen
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			-- Set header
			dashboard.section.header.val = {
				"                                                     ",
				"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
				"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
				"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
				"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
				"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
				"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
				"                                                     ",
			}

			-- Set menu
			dashboard.section.buttons.val = {
				dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
				dashboard.button("f", "  > Find file", ":cd $HOME/Documents | Telescope find_files<CR>"),
				dashboard.button("r", "  > Recent", ":Telescope project<CR>"),
				dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
				dashboard.button("q", "  > Quit NVIM", ":qa<CR>"),
			}

			table.insert(dashboard.config.layout, { type = "padding", val = 1 })
			table.insert(dashboard.config.layout, {
				type = "text",
				val = require("alpha.fortune")(),
				opts = {
					position = "center",
					hl = "AlphaQuote",
				},
			})

			-- Send config to alpha
			alpha.setup(dashboard.opts)
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-telescope/telescope-project.nvim",
		config = function()
			require("telescope").load_extension("project")
		end,
	})
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
	use({
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("daschw/leaf.nvim")
	use("sainnhe/everforest")
	use("navarasu/onedark.nvim")
	use("ellisonleao/gruvbox.nvim")
	use({ "neoclide/coc.nvim", branch = "release" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("jiangmiao/auto-pairs") -- Automatically closes parentheses, square brackets and braces when typing.
	use("ap/vim-css-color") -- Show colors directly in the code
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})
	use("plasticboy/vim-markdown") -- .md syntax support
	use("airblade/vim-gitgutter") -- Shows git changes in open files
	use("tpope/vim-fugitive") -- Git integration
end)
