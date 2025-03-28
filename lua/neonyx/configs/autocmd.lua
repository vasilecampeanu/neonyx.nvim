-- See `:help lua-guide-autocommands`
-- Highlight when yanking (copying) text
-- Try it with `yap` in normal mode
-- See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
    desc  = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('neonyx-highlight-yank', {
        clear = true
    }),
    callback = function()
        vim.highlight.on_yank()
    end
})

-- Attach LSP keymaps when LSP attaches to a buffer
vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'Attach LSP keymaps when LSP attaches to a buffer',
    callback = function(event)
        local opts = {
            buffer = event.buf
        }
        vim.keymap.set('n', 'K',    '<cmd>lua vim.lsp.buf.hover()<cr>',           opts)
        vim.keymap.set('n', 'gd',   '<cmd>lua vim.lsp.buf.definition()<cr>',      opts)
        vim.keymap.set('n', 'gD',   '<cmd>lua vim.lsp.buf.declaration()<cr>',     opts)
        vim.keymap.set('n', 'gi',   '<cmd>lua vim.lsp.buf.implementation()<cr>',  opts)
        vim.keymap.set('n', 'go',   '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr',   '<cmd>lua vim.lsp.buf.references()<cr>',      opts)
        vim.keymap.set('n', 'gs',   '<cmd>lua vim.lsp.buf.signature_help()<cr>',  opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>',          opts)
    end,
})
