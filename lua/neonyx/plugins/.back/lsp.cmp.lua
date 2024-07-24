return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    opts = function()
      local cmp = require('cmp')
      local lsp_zero = require('lsp-zero')
      local cmp_action = lsp_zero.cmp_action()
  
      -- NOTE: This is the function that loads the extra snippets from rafamadriz/friendly-snippets.
      require('luasnip.loaders.from_vscode').lazy_load()

      return {
        window = {
          completion    = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        sources = {
          {name = 'path'},
          {name = 'nvim_lsp'},
          {name = 'luasnip', keyword_length = 2},
          {name = 'buffer',  keyword_length = 3},
        },
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          -- Confirm completion item.
          ['<Enter>']   = cmp.mapping.confirm({ select = true }),
      
          -- Trigger completion menu.
          ['<C-Space>'] = cmp.mapping.complete(),
      
          -- Scroll up and down the documentation window.
          ['<C-u>']     = cmp.mapping.scroll_docs(-4),
          ['<C-d>']     = cmp.mapping.scroll_docs( 4),   
      
          -- Navigate between snippet placeholders.
          ['<C-f>']     = cmp_action.luasnip_jump_forward (),
          ['<C-b>']     = cmp_action.luasnip_jump_backward(),
        }),
        formatting = lsp_zero.cmp_format({details = true}),
      }
    end    
  },
  {'L3MON4D3/LuaSnip'},
  {'saadparwaiz1/cmp_luasnip'},
  {'rafamadriz/friendly-snippets'},
}
