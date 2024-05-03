local keyset = vim.keymap.set

-- MacOs has different key signal for Alt-hjkl
if vim.fn.has "mac" == 1 then
	keyset("n", "∆", "<C-w>h", { desc = "Move to left windows" })
	keyset("n", "ª", "<C-w>j", { desc = "Move to bottom windows" })
	keyset("n", "º", "<C-w>k", { desc = "Move to top windows" })
	keyset("n", "¬", "<C-w>l", { desc = "Move to right windows" })
else
	keyset("n", "<A-h>", "<C-w>h", { desc = "Move to left windows" })
	keyset("n", "<A-j>", "<C-w>j", { desc = "Move to bottom windows" })
	keyset("n", "<A-k>", "<C-w>k", { desc = "Move to top windows" })
	keyset("n", "<A-l>", "<C-w>l", { desc = "Move to right windows" })
end
keyset("n", "<A-Left>", "<C-w>h", { desc = "Move to left windows" })
keyset("n", "<A-Down>", "<C-w>j", { desc = "Move to bottom windows" })
keyset("n", "<A-Up>", "<C-w>k", { desc = "Move to top windows" })
keyset("n", "<A-Right>", "<C-w>l", { desc = "Move to right windows" })

keyset("n", "<Esc>", "<cmd> noh <CR>", { desc = "Remove highlight" })
keyset("n", "<C-h>", "<ESC>^", { desc = "Go to beginning" })
keyset("v", "<C-h>", "<ESC>^", { desc = "Go to beginning" })
keyset("n", "<C-l>", "<End>", { desc = "Go to end" })
keyset("v", "<C-l>", "<End>", { desc = "Go to end" })
keyset("n", "<C-ac>", "<cmd> %y+ <CR>", { desc = "Copy all" })
keyset("n", "<C-s>", "<cmd> w <CR>", { desc = "Save" })
keyset("n", "<C-w>", ":bp|bd# <CR>", { desc = "Close current buffer" })
keyset("n", "<C-q>", "<cmd> q <CR>", { desc = "Close current window" })

keyset("n", "<Leader>s", ":vsplit<CR>", { desc = "Create new window to right" })

keyset("n", "<Tab>", ":bn<CR>", { desc = "Go to next buffer" })
keyset("n", "<S-Tab>", ":bp<CR>", { desc = "Go to previous buffer" })

keyset("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "NerdTree toggle" })
keyset("n", "<C-o>", ":SymbolsOutline<CR>", { desc = "Outline toggle" })

keyset("n", "<Leader>t", "<cmd> ToggleTerm direction=float <CR>", { desc = "Open floating terminal" })
keyset("n", "<Leader>wk", function()
	vim.cmd("WhichKey")
end, { desc = "Show all keybindings" })

-- LSP related shortcuts
keyset("n", "<Leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Show Coc code action" })
keyset("x", "<Leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", { desc = "Show Coc code action" })
keyset("n", "<Leader>f", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", { desc = "Format selected code" })
keyset("x", "<Leader>f", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", { desc = "Format selected code" })

keyset("n", "<Leader>dg", vim.lsp.buf.definition, { desc = "Goto definition" })
keyset("n", "<Leader>r", "<cmd>Telescope lsp_references<cr>", { desc = "Show references" })
keyset("n", "<Leader>i", vim.lsp.buf.implementation, { desc = "Goto implementation" })
keyset("n", "<Leader>ds", ":vsp<CR><cmd>lua vim.lsp.buf.definition()<cr>", { desc = "Show definition in a splitted window" })

-- Telescope
keyset("n", "<Leader>p", ":Telescope project<CR>", { desc = "Show all projects" })
keyset("n", "<Leader>ff", ":Telescope find_files<CR>", { desc = "Show all projects" })
keyset("n", "<Leader>fs", ":Telescope live_grep<CR>", { desc = "Show all projects" })
