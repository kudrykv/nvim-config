-- change leader key
vim.g.mapleader = ' '


vim.keymap.set({ 'n' }, 'x', '"_x', { desc = 'Remove one char w/o copying it' })

-- file tree
vim.keymap.set('n', '<M-1>', '<CMD>NvimTreeToggle<CR>', { desc = '(⌥+F1) Toggle file tree' })

-- GIT -------------------------------------------
-- hunks
vim.keymap.set('n', '<Leader>hr', '<CMD>Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
vim.keymap.set('n', '<Leader>hs', '<CMD>Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
vim.keymap.set('n', '<Leader>hn', '<CMD>Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
vim.keymap.set('n', '<Leader>hp', '<CMD>Gitsigns prev_hunk<CR>', { desc = 'Prev hunk' })

vim.keymap.set('n', '<Leader>gb', '<CMD>Gitsigns blame<CR>', { desc = 'Blame' })
vim.keymap.set('n', '<Leader>gc', '<CMD>Git<CR>', { desc = 'Git -> (pre)Commit' })

-- LSP -------------------------------------------

vim.keymap.set('n', '<C-M-l>', '<CMD>lua vim.lsp.buf.format()<CR>', { desc = 'Format' })
vim.keymap.set('n', '<Leader>rf', '<CMD>lua vim.lsp.buf.format()<CR>', { desc = 'Refactor > Format' })
vim.keymap.set('n', '<F18>', '<CMD>Lspsaga rename<CR><Esc>$', { desc = 'Rename' })
vim.keymap.set('n', '<Leader>rr', '<CMD>Lspsaga rename<CR><Esc>$', { desc = 'Refactor > Rename' })

vim.keymap.set('n', '<Leader>gd', '<CMD>lua vim.lsp.buf.definition()<CR>', { desc = 'Go to definition' })

vim.keymap.set('n', '<F1>', '<CMD>lua vim.lsp.buf.hover()<CR>', { desc = 'Hover' })
vim.keymap.set('n', '<Leader>ih', '<CMD>lua vim.lsp.buf.hover()<CR>', { desc = 'Info > Hover' })
vim.keymap.set('n', '<M-C-F7>', '<CMD>Lspsaga finder<CR>', { desc = 'Finder' })
vim.keymap.set('n', '<Leader>if', '<CMD>Lspsaga finder<CR>', { desc = 'Info > Finder' })
vim.keymap.set('n', '<F36>', '<CMD>Lspsaga outline<CR>', { desc = 'Info > Outline' })
vim.keymap.set('n', '<Leader>io', '<CMD>Lspsaga outline<CR>', { desc = 'Info > Outline' })
vim.keymap.set('n', '<M-Space>', '<CMD>Lspsaga peek_definition<CR>', { desc = 'Peek definition' })
vim.keymap.set('n', '<Leader>ip', '<CMD>Lspsaga peek_definition<CR>', { desc = 'Info > Peek definition' })
vim.keymap.set('n', '<C-M-b>', '<CMD>Lspsaga goto_definition<CR>', { desc = 'Go to definition' })
vim.keymap.set('n', '<Leader>id', '<CMD>Lspsaga goto_definition<CR>', { desc = 'Info > Definition' })
vim.keymap.set('n', '<C-CR>', '<CMD>Lspsaga code_action<CR>', { desc = 'Code action' })
vim.keymap.set('n', '<Leader>ia', '<CMD>Lspsaga code_action<CR>', { desc = 'Info > Code action' })
