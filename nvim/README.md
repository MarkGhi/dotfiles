# neovim-config

NeoVim config written in Lua.

It features:
- Startup screen with [Alpha](https://github.com/goolord/alpha-nvim)
- Fuzzy finder with project manager with [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- Keymaps management with [WhichKey](https://github.com/folke/which-key.nvim)
- Terminal management with [ToggleTerm](https://github.com/akinsho/toggleterm.nvim)
- Statusline with [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- Lsp management with [Mason](https://github.com/williamboman/mason.nvim)
- Syntax highlight with [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- File navigator with [Nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
- Code outline with [Symbols-outline](https://github.com/simrat39/symbols-outline.nvim)
- Smooth scroll with [Neoscroll](https://github.com/karb94/neoscroll.nvim)
- Parenthesis autoclosing with [Auto-pairs](https://github.com/jiangmiao/auto-pairs)

Dependencies:
- Packer for plugin management (Installation instruction at project [Github page](https://github.com/wbthomason/packer.nvim))
- Nerd Font to correctly display icons and symbols

Install necessaries Treesitter extensions with:
````
:TSInstall language_name
````

To easily install a language server open a code source file and run:
````
:LspInstall
````
A pop-up window will show all available server for that particoular language. Selecting one from the list will start the installation process through Mason.

To install a specific DAP, Linter or Formatter use the command:
````
:MasonInstall package_name
````
