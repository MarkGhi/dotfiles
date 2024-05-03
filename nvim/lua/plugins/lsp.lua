return {
	"VonHeikemen/lsp-zero.nvim",
	branch = 'v3.x',
	requires = {
		-- LSP Support
		{ 'neovim/nvim-lspconfig' }, -- Required
		{ 'williamboman/mason.nvim' }, -- Optional
		{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

		-- Autocompletion
		{ 'hrsh7th/nvim-cmp' }, -- Required
		{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
		{ 'hrsh7th/cmp-buffer' }, -- Optional
		{ 'hrsh7th/cmp-path' }, -- Optional
		{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
		{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

		-- Snippets
		{ 'L3MON4D3/LuaSnip' }, -- Required
		{ 'rafamadriz/friendly-snippets' }, -- Optional

		-- Linter
		{ 'mfussenegger/nvim-lint' }
	},
	config = function()
		local lsp_zero = require('lsp-zero')

		lsp_zero.on_attach(function(client, bufnr)
			lsp_zero.default_keymaps({ buffer = bufnr })
		end)

		require('mason').setup({})
		require('mason-lspconfig').setup({
			handlers = {
				lsp_zero.default_setup,
			},
		})

		local cmp = require('cmp')
		local ls = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function(args)
					-- Set `luasnip` as snippet engine
					ls.lsp_expand(args.body)
				end,
			},
			window = {
				-- Set rounded border (by default there are not present)
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(), -- TODO: it doesn't work
				['<C-e>'] = cmp.mapping.abort(), -- Dismiss the pop-up window
				['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				["<Tab>"] = cmp.mapping(function(fallback) -- Set Tab to cycle forward the suggestions list
					if cmp.visible() then
						cmp.select_next_item()
					elseif ls.expand_or_jumpable() then
						ls.expand_or_jump()
					else
						fallback()
					end
				end, { "i", "s" }),
				["<S-Tab>"] = cmp.mapping(function(fallback) -- Set Shift + Tab to cycle backward the suggestions list
					if cmp.visible() then
						cmp.select_prev_item()
					elseif ls.jumpable(-1) then
						ls.jump(-1)
					else
						fallback()
					end
				end, { "i", "s" }),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
			}, {
				{ name = 'buffer' },
			})
		})

		--[[
		require('lint').linters_by_ft = {
			python = {'pylint'}
		}

		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end
		})
		]]
		--
	end,
}
