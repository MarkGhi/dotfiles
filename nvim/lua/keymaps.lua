local keyset = vim.keymap.set

keyset("n", "<Leader>e", ":NvimTreeFocus<CR>", { desc = "NerdTree focus" })
keyset("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "NerdTree toggle" })

keyset("n", "<A-h>", "<C-w>h", { desc = "Move to left windows" })
keyset("n", "<A-j>", "<C-w>j", { desc = "Move to bottom windows" })
keyset("n", "<A-k>", "<C-w>k", { desc = "Move to top windows" })
keyset("n", "<A-l>", "<C-w>l", { desc = "Move to right windows" })
keyset("n", "<A-Left>", "<C-w>h", { desc = "Move to left windows" })
keyset("n", "<A-Down>", "<C-w>j", { desc = "Move to bottom windows" })
keyset("n", "<A-Up>", "<C-w>k", { desc = "Move to top windows" })
keyset("n", "<A-Right>", "<C-w>l", { desc = "Move to right windows" })

keyset("n", "<Esc>", "<cmd> noh <CR>", { desc = "Remove highlight" })
keyset("n", "<C-h>", "<ESC>^", { desc = "Go to beginning" })
keyset("n", "<C-l>", "<End>", { desc = "Go to end" })
keyset("n", "<C-c>", "<cmd> %y+ <CR>", { desc = "Copy all" })
keyset("n", "<C-s>", "<cmd> w <CR>", { desc = "Save" })
keyset("n", "<C-w>", ":b#|bd# <CR>", { desc = "Close current buffer" })
keyset("n", "<C-q>", "<cmd> q <CR>", { desc = "Close current window" })

keyset("n", "<Leader>s", ":vsplit<CR>", { desc = "Create new window to right" })

keyset("n", "<Tab>", ":bn<CR>", { desc = "Go to next buffer" })
keyset("n", "<S-Tab>", ":bp<CR>", { desc = "Go to previous buffer" })

keyset("n", "<Leader>t", "<cmd> ToggleTerm direction=float <CR>", { desc = "Open floating terminal" })
keyset("n", "<Leader>wk", function()
	vim.cmd("WhichKey")
end, { desc = "Show all keybindings" })

-- Flutter
keyset("n", "<Leader>fr", ":CocCommand flutter.run<CR>", { desc = "Run flutter project" })
keyset("n", "<Leader>fd", ":CocCommand flutter.devices<CR>", { desc = "Show all availiable flutter devices" })
keyset("n", "<Leader>fh", ":CocCommand flutter.dev.hotRestart<CR>", { desc = "Run hot restart" })
keyset("n", "<Leader>fb", ":below new output:///flutter-dev<CR>", { desc = "Show debug window" })
keyset("n", "<Leader>fe", ":CocCommand flutter.emulators<CR>", { desc = "Show all availiable flutter emulators" })

-- Coc general (most of them retreived from official coc.nvim repo readme)
local opts = { silent = true, noremap = true, expr = true }

function _G.check_back_space()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

-- Navigate through autocomplete dialog with Tab
keyset("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <CR> to accept selected completion item or notify coc.nvim to format
keyset("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

keyset("n", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
keyset("x", "<Leader>a", "<Plug>(coc-codeaction-selected)", { desc = "Show Coc code action" })
keyset("n", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
keyset("x", "<Leader>f", "<Plug>(coc-format-selected)", { desc = "Format selected code" })
keyset("n", "<Leader>d", "<Plug>(coc-definition)", { desc = "Goto definition" })
keyset("n", "<Leader>r", "<Plug>(coc-references)", { desc = "Goto references" })
keyset("i", "<C-space>", vim.fn["coc#refresh"](), { desc = "Trigger autocomplete in insert mode" })
keyset("n", "<Leader>i", "<Plug>(coc-implementation)", { desc = "Goto implementation" })
keyset("n", "<Leader>ds", ":vsp<CR><Plug>(coc-definition)<C-W>L", { desc = "Show definition in a splitted window" })

-- Telescope
keyset("n", "<Leader>p", ":Telescope project<CR>", { desc = "Show all projects" })
keyset("n", "<Leader>ff", ":Telescope find_files<CR>", { desc = "Show all projects" })
keyset("n", "<Leader>fs", ":Telescope live_grep<CR>", { desc = "Show all projects" })
