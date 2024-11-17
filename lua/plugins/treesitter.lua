-- See `:help nvim-treesitter`

return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
        ensure_installed = {
            'lua',
            'javascript',
            'typescript',
            'tsx',
            'html',
            'css',
            'json',
            'yaml',
            'markdown',
            'markdown_inline',
        },
        highlight = { enable = true },
        indent = { enable = true },
    }
}