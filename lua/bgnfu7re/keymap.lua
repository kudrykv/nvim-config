-- change leader key
vim.g.mapleader = ' '


vim.keymap.set({ 'n' }, 'x', '"_x', { desc = 'Remove one char w/o copying it' })

-- file tree
vim.keymap.set('n', '<M-1>', '<CMD>NvimTreeToggle<CR>', { desc = '(⌥+F1) Toggle file tree' })

