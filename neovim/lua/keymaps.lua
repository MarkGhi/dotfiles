vim.keymap.set("n", "<Leader>e", ":NERDTreeFocus<CR>", { desc = "NerdTree focus" })
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", { desc = "NerdTree toggle" })

vim.keymap.set("n", "<A-h>", "<C-w>h", { desc = "Move to left windows" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { desc = "Move to bottom windows" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { desc = "Move to top windows" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { desc = "Move to right windows" })
vim.keymap.set("n", "<A-Left>", "<C-w>h", { desc = "Move to left windows" })
vim.keymap.set("n", "<A-Down>", "<C-w>j", { desc = "Move to bottom windows" })
vim.keymap.set("n", "<A-Up>", "<C-w>k", { desc = "Move to top windows" })
vim.keymap.set("n", "<A-Right>", "<C-w>l", { desc = "Move to right windows" })

vim.keymap.set("n", "<Esc>", "<cmd> noh <CR>", { desc = "Remove highlight" })
vim.keymap.set("n", "<C-h>", "<ESC>^", { desc = "Go to beginning" })
vim.keymap.set("n", "<C-l>", "<End>", { desc = "Go to end" })
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy all" })
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", { desc = "Save" })
vim.keymap.set("n", "<C-w>", ":b#|bd# <CR>", { desc = "Close current buffer" })
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", { desc = "Close current window" })
vim.keymap.set("n", "<C-f>", ":s/", { desc = "Search in current file" })

vim.keymap.set("n", "<Leader>s", ":vsplit<CR>", { desc = "Create new window to right" })

vim.keymap.set("n", "<Tab>", ":bn<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bp<CR>", { desc = "Go to previous buffer" })

vim.keymap.set("n", "<Leader>t", "<cmd> ToggleTerm direction=float <CR>", { desc = "Open floating terminal" })
vim.keymap.set("n", "<Leader>wk", function()
	vim.cmd("WhichKey")
end, { desc = "Show all keybindings" })

-- Flutter
vim.keymap.set("n", "<Leader>fr", ":CocCommand flutter.run<CR>", { desc = "Run flutter project" })
vim.keymap.set("n", "<Leader>fd", ":CocCommand flutter.devices<CR>", { desc = "Show all availiable flutter devices" })
vim.keymap.set("n", "<Leader>fh", ":CocCommand flutter.dev.hotRestart<CR>", { desc = "Run hot restart" })
vim.keymap.set("n", "<Leader>fb", ":below new output:///flutter-dev<CR>", { desc = "Show debug window" })
vim.keymap.set(
	"n",
	"<Leader>fe",
	":CocCommand flutter.emulators<CR>",
	{ desc = "Show all availiable flutter emulators" }
)

-- Coc general
vim.keymap.set("n", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
vim.keymap.set("x", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
vim.keymap.set("n", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
vim.keymap.set("x", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
vim.keymap.set("n", "<Leader>d", "<Plug>(coc-definition)", { desc = "Goto definition" })
vim.keymap.set("n", "<Leader>r", "<Plug>(coc-references)", { desc = "Goto references" })
vim.keymap.set("i", "<C-space>", vim.fn["coc#refresh"](), { desc = "Trigger autocomplete in insert mode" })
vim.keymap.set("n", "<Leader>i", "<Plug>(coc-implementation)", { desc = "Goto implementation" })
vim.keymap.set(
	"n",
	"<Leader>ds",
	":vsp<CR><Plug>(coc-definition)<C-W>L",
	{ desc = "Show definition in a splitted window" }
)

vim.keymap.set("n", "<Leader>p", ":Telescope project<CR>", { desc = "Show all projects" })
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>", { desc = "Show all projects" })
vim.keymap.set("n", "<Leader>fs", ":Telescope live_grep<CR>", { desc = "Show all projects" })
