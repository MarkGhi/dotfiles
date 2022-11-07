vim.g.mapleader = " " -- Use space as a the leader key

--Options
vim.opt.background = "dark" -- Apply the color set for dark colors (not only the background as it might look)
vim.opt.clipboard = "unnamedplus" -- Enable clipboard between Neovim and other applications
vim.opt.completeopt = "noinsert,menuone,noselect" -- Modifies the auto-complete menu to behave more like an IDE
vim.opt.hidden = true -- Hide unused buffer
vim.opt.inccommand = "split" -- Show replacements in a split screen, before applying to the file.
vim.opt.mouse = "a" -- Enable mouse use
vim.opt.splitbelow = true -- Screen will always split below right the current screen
vim.opt.splitright = true
vim.opt.title = true -- Show the file title
vim.opt.ttimeoutlen = 0 -- Time in millisecond to run commands
vim.opt.wildmenu = true -- Advanced menu for auto-completition

-- Lualine setup
require("lualine").setup({
	options = {
		globalstatus = true, -- Set global to avoid bar split when window is splitted
		theme = "gruvbox",
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

vim.cmd([[
  syntax enable
  au TermOpen * tnoremap <Esc> <C-\><C-n>
]])

-- Theme config
--[[
require("onedark").setup({
	style = "warmer",
	toggle_style_key = "<leader>@", --Put a random mapping to avoid any conflicts
})
require("leaf").setup({
	contrast = "low", -- default "low", alternatives: "medium", "high"
})
]]--
require("gruvbox").setup()

--require("onedark").load()
--vim.cmd("colorscheme leaf")
--vim.cmd("colorscheme everforest")
vim.cmd("colorscheme gruvbox")

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

-- NvimTree setup
require("nvim-tree").setup()

--vim.opt.t_Co=256 --Enable 256 colors on the terminal (don't really know what it means, so off for now)
