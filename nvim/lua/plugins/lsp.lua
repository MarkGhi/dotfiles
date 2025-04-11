return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- LSP Support
    { 'williamboman/mason.nvim', config = true },
    { 'williamboman/mason-lspconfig.nvim' },

    -- Autocompletion
    -- { 'saghen/blink.cmp' }
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
  },
  config = function(_, opts)
    -- Copied from LspZero site and modified a bit cmp
    -- https://lsp-zero.netlify.app/docs/template/lua-config.html

    local lspconfig_defaults = require('lspconfig').util.default_config
    lspconfig_defaults.capabilities = vim.tbl_deep_extend(
      'force',
      lspconfig_defaults.capabilities,
      require('cmp_nvim_lsp').default_capabilities()
    )

    require('mason').setup()
    require("mason-lspconfig").setup()
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
    })

    local cmp = require('cmp')

    cmp.setup({
      snippet = {
        expand = function(args)
      	  vim.snippet.expand(args.body)
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
      	['<C-Space>'] = cmp.mapping.complete(),
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
      }, {
      	{ name = 'buffer' },
      })
    })

    -- Tried with blijk.cpm without luck

    --local lspconfig = require('lspconfig')
    --for server, config in pairs(opts.servers) do
    --  -- passing config.capabilities to blink.cmp merges with the capabilities in your
    --  -- `opts[server].capabilities, if you've defined it
    --  config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
    --  lspconfig[server].setup(config)
    --end

    --local capabilities = vim.lsp.protocol.make_client_capabilities()
    --
    --capabilities = vim.tbl_deep_extend('force', capabilities, require('blink.cmp').get_lsp_capabilities({}, false))
    --
    --capabilities = vim.tbl_deep_extend('force', capabilities, {
    --  textDocument = {
    --    foldingRange = {
    --      dynamicRegistration = false,
    --      lineFoldingOnly = true
    --    }
    --  }
    --})

    --vim.lsp.config("*", {
    --  capabilities = capabilities,
    --  root_markers = { ".git" },
    --})
    --
    ---- Enable each language server by filename under the lsp/ folder
    --vim.lsp.enable({ "pyright" })
  end
}
