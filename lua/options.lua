-- Appearance and Visuals
vim.opt.number          = true                        -- Make line numbers default
vim.opt.relativenumber  = true                        -- Set relative numbered lines
vim.opt.cursorline      = false                       -- Highlight the current line
vim.opt.numberwidth     = 4                           -- Set number column width to 4
vim.opt.signcolumn      = 'yes'                       -- Keep signcolumn on by default
vim.opt.termguicolors   = true                        -- Enable highlight groups
vim.opt.list            = false                       -- Do not display special characters
vim.opt.listchars       = { tab = '» ', trail = '·', nbsp = '␣' }

vim.cmd 'hi Comment    gui=none'
vim.cmd 'hi Normal     ctermbg=NONE guibg=NONE'
vim.cmd 'hi NonText    ctermbg=NONE guibg=NONE'
vim.cmd 'hi SignColumn ctermbg=NONE guibg=NONE'

-- Line Wrapping and Indentation
vim.opt.wrap            = false                       -- Display lines as one long line
vim.opt.linebreak       = true                        -- Don't split words when wrapping
vim.opt.breakindent     = true                        -- Enable break indent
vim.opt.autoindent      = true                        -- Copy indent from current line
vim.opt.smartindent     = true                        -- Smarter auto-indentation
vim.opt.shiftwidth      = 4                           -- Spaces for each indentation
vim.opt.tabstop         = 4                           -- Spaces per tab
vim.opt.softtabstop     = 4                           -- Spaces a tab counts for
vim.opt.expandtab       = true                        -- Convert tabs to spaces

-- Clipboard and Mouse
vim.opt.clipboard       = 'unnamedplus'               -- Sync clipboard between OS and Neovim
vim.opt.mouse           = 'a'                         -- Enable mouse mode

-- Searching
vim.opt.ignorecase      = true                        -- Case-insensitive search
vim.opt.smartcase       = true                        -- Smart case for search
vim.opt.hlsearch        = false                       -- Do not highlight search matches

-- Splits and Windows
vim.opt.splitbelow      = true                        -- Horizontal splits below current
vim.opt.splitright      = true                        -- Vertical splits to the right
vim.opt.scrolloff       = 10                          -- Minimal screen lines around cursor
vim.opt.sidescrolloff   = 8                           -- Minimal screen columns around cursor

-- Backup and Swap
vim.opt.swapfile        = false                       -- Do not create swap files
vim.opt.backup          = false                       -- Do not create backup files
vim.opt.writebackup     = false                       -- Do not allow editing if written by another program

-- User Interface
vim.opt.showmode        = false                       -- Hide mode (e.g., -- INSERT --)
vim.opt.showtabline     = 2                           -- Always show tabline
vim.opt.cmdheight       = 1                           -- Minimal command line space
vim.opt.pumheight       = 10                          -- Pop-up menu height

-- Performance
vim.opt.updatetime      = 250                         -- Faster update time
vim.opt.timeoutlen      = 300                         -- Reduced mapped sequence wait time

-- Miscellaneous
vim.opt.fileencoding    = 'utf-8'                     -- File encoding
vim.opt.conceallevel    = 0                           -- Make sure `` is visible in markdown
vim.opt.whichwrap       = 'bs<>[]hl'                  -- Allowed keys to travel across lines
vim.opt.backspace       = 'indent,eol,start'          -- Backspace behavior
vim.opt.completeopt     = 'menuone,noselect'          -- Better completion experience
vim.opt.inccommand      = 'split'                     -- Live substitution preview

-- Additional Customizations
vim.opt.runtimepath:remove('/usr/share/vim/vimfiles') -- Separate Vim/Neovim plugins
vim.opt.formatoptions:remove { 'c', 'r', 'o' }        -- Prevent auto-commenting on new lines
vim.opt.shortmess:append 'c'                          -- Shorten completion messages
vim.opt.iskeyword:append '-'                          -- Include hyphenated words in search
