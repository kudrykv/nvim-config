local opt = vim.opt

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
opt.colorcolumn = '121'

-- "row with debug marks"
opt.signcolumn = 'yes' -- 'number'

-- backspace
opt.backspace = 'indent,eol,start'

-- signcolumn -- "row with debug marks, git marks, etc."
opt.signcolumn = 'yes:2'

-- split windows
opt.splitright = true
opt.splitbelow = true

-- clipboard
-- yank (copy) directly to clipboard
opt.clipboard:append('unnamedplus')

-- theme
vim.o.background = 'dark'
vim.cmd('colorscheme gruvbox')

vim.diagnostic.config({
  update_in_insert = true,
})

