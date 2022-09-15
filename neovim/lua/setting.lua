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

-- Airline setup
vim.g["airline_theme"] = "bubblegum" -- Set Airline theme
vim.g["airline_powerline_fonts"] = 1 -- Set powerline mode
vim.g["airline#extensions#tabline#enabled"] = 1 -- Enable Airline also for the tab bar

-- NerdTree setup
vim.g["NERDTreeShowHidden"] = 1 -- Set NerdTree to show also hidden file

-- Last line tell to open by default NerdTree and focus on editor
vim.cmd([[
  syntax enable
  au TermOpen * tnoremap <Esc> <C-\><C-n>
  au BufEnter * if &buftype == 'terminal' | :startinsert | endif
]])

require("onedark").setup({
	style = "warmer",
	toggle_style_key = "<leader>@", --Put a random mapping to avoid any conflicts
})
require("onedark").load()

--vim.opt.t_Co=256 --Enable 256 colors on the terminal (don't really know what it means, so off for now)
