-- change leader key
vim.g.mapleader = ' '


-- GENERAL ---------------------------------------
vim.keymap.set({ 'n' }, 'x', '"_x', { desc = 'Remove one char w/o copying it' })

vim.keymap.set('n', '<C-`>', '<CMD>Telescope colorscheme<CR>', { desc = 'Change colorscheme' })
vim.keymap.set('n', '<C-S-a>', '<CMD>Telescope commands<CR>', { desc = 'Commands' })
vim.keymap.set('n', '<C-S-e>', '<CMD>Telescope oldfiles<CR>', { desc = 'Recently opened files' })
vim.keymap.set('n', '<C-S-o>', '<CMD>Telescope find_files<CR>', { desc = 'Find files' })

-- FILE TREE -------------------------------------
vim.keymap.set('n', '<M-1>', '<CMD>NvimTreeToggle<CR>', { desc = '(⌥+1) Toggle file tree' })

-- FILE NAVIGATION -------------------------------

-- GIT -------------------------------------------
-- hunks
vim.keymap.set('n', '<Leader>hr', '<CMD>Gitsigns reset_hunk<CR>', { desc = 'Reset hunk' })
vim.keymap.set('n', '<Leader>hs', '<CMD>Gitsigns stage_hunk<CR>', { desc = 'Stage hunk' })
vim.keymap.set('n', '<Leader>hn', '<CMD>Gitsigns next_hunk<CR>', { desc = 'Next hunk' })
vim.keymap.set('n', '<Leader>hp', '<CMD>Gitsigns prev_hunk<CR>', { desc = 'Prev hunk' })

vim.keymap.set('n', '<Leader>gb', '<CMD>Gitsigns blame<CR>', { desc = 'Blame' })
vim.keymap.set('n', '<C-k>', '<CMD>Git<CR>', { desc = 'Git (pre)Commit' })
vim.keymap.set('n', '<Leader>gc', '<CMD>Git<CR>', { desc = 'Git -> (pre)Commit' })

