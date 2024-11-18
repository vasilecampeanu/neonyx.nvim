-- General options that need to be enabled early 

-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Ensure background transparent
vim.cmd 'hi Comment gui=none'
vim.cmd 'hi Normal ctermbg=NONE guibg=NONE'
vim.cmd 'hi NonText ctermbg=NONE guibg=NONE'
vim.cmd 'hi SignColumn ctermbg=NONE guibg=NONE'
