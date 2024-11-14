-- Set <space> as the leader key
-- See `:help mapleader`
-- NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Make background transparent
vim.cmd 'hi Comment gui=none'
vim.cmd 'hi Normal ctermbg=NONE guibg=NONE'
vim.cmd 'hi NonText ctermbg=NONE guibg=NONE'
vim.cmd 'hi SignColumn ctermbg=NONE guibg=NONE'