vim.g.mapleader = " " -- Use space as leader key

--Options
vim.opt.background = "dark"       -- Apply the color set for dark colors
vim.opt.clipboard = "unnamedplus" -- Enable clipboard between Neovim and other applications
vim.opt.hidden = true             -- Hide unused buffer
vim.opt.inccommand = "split"      -- Show replacements in a split screen, before applying to the file.
vim.opt.mouse = "a"               -- Enable mouse use
vim.opt.splitbelow = true         -- Screen will always split below right the current screen
vim.opt.splitright = true
vim.opt.title = true              -- Show the file title
vim.opt.ttimeoutlen = 0           -- Time in millisecond to run commands

-- Handle escape from terminal mode
vim.cmd([[au TermOpen * tnoremap <Esc> <C-\><C-n>]])
