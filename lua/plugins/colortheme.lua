return {
    'navarasu/onedark.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require('onedark').setup {
            style = 'darker',
            transparent = true, -- Enable transparent background
            term_colors = true, -- Use terminal colors
            ending_tildes = false, -- Hide end-of-buffer tildes
            code_style = {
                comments = 'none',
                keywords = 'none',
                functions = 'none',
                strings = 'none',
                variables = 'none'
            },
            diagnostics = {
                darker = true, -- Use darker colors for diagnostics
                undercurl  = true, -- Use undercurl instead of underline for diagnostics
                background = true, -- Use background color for virtual text
            },
        }
        require('onedark').load()
    end,
}