return {
  {
    'VonHeikemen/lsp-zero.nvim', 
    branch = 'v3.x',
    lazy = true,
    opts = function()
      local lsp_zero = require('lsp-zero')

      -- NOTE: Keybindings are listed here:
      -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/api-reference.md#default_keymapsopts
      lsp_zero.on_attach(function(client, bufnr)
        lsp_zero.default_keymaps({buffer = bufnr})
      end)
      
      lsp_zero.set_sign_icons({
        error = '',
        warn  = '',
        hint  = '',
        info  = ''
      })

      return {}
    end
  }
}