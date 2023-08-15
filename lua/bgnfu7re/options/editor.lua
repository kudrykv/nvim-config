local opt = vim.opt

-- change leader key
vim.g.mapleader = ' '

-- line numbering
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- "row with debug marks"
opt.signcolumn = 'number'

-- backspace
opt.backspace = 'indent,eol,start'

-- split windows
opt.splitright = true
opt.splitbelow = true

-- clipboard
-- yank (copy) directly to clipboard
opt.clipboard:append('unnamedplus')

-- theme
vim.cmd('set tgc') -- termguicolors
-- vim.cmd('set background = light')
vim.g.everforest_better_performance = 1 -- no idea why no "better performance" out of the box
vim.g.everforest_background = 'hard'
vim.cmd('colorscheme everforest')

