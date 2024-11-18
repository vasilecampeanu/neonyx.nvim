return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({})
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        dependencies = { 'williamboman/mason.nvim' },
        config = function()
            require('mason-lspconfig').setup({
                handlers = {
                    function(server_name)
                        require('lspconfig')[server_name].setup({})
                    end,
                }
            })
        end,
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig_defaults = require('lspconfig').util.default_config
            lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                'force',
                lspconfig_defaults.capabilities,
                require('cmp_nvim_lsp').default_capabilities()
            )
            vim.api.nvim_create_autocmd('LspAttach', {
                callback = function(event)
                    local opts = { buffer = event.buf }
                    vim.keymap.set('n',          'K',         '<cmd>lua vim.lsp.buf.hover()<cr>',                opts)
                    vim.keymap.set('n',          'gd',        '<cmd>lua vim.lsp.buf.definition()<cr>',           opts)
                    vim.keymap.set('n',          'gD',        '<cmd>lua vim.lsp.buf.declaration()<cr>',          opts)
                    vim.keymap.set('n',          'gi',        '<cmd>lua vim.lsp.buf.implementation()<cr>',       opts)
                    vim.keymap.set('n',          'go',        '<cmd>lua vim.lsp.buf.type_definition()<cr>',      opts)
                    vim.keymap.set('n',          'gr',        '<cmd>lua vim.lsp.buf.references()<cr>',           opts)
                    vim.keymap.set('n',          'gs',        '<cmd>lua vim.lsp.buf.signature_help()<cr>',       opts)
                    vim.keymap.set('n',          '<F2>',      '<cmd>lua vim.lsp.buf.rename()<cr>',               opts)
                    vim.keymap.set({ 'n', 'x' }, '<F3>',      '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
                    vim.keymap.set('n', '<F4>',  '<cmd>lua vim.lsp.buf.code_action()<cr>',                       opts)
                end,
            })
        end,
    },
    {
        'hrsh7th/cmp-nvim-lsp',
        dependencies = { 'neovim/nvim-lspconfig' },
    },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' },
                },
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({}),
            })
        end,
    },
}