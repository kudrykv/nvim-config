vim.keymap.set({ 'n' }, 'x', '"_x', { desc = 'Remove one char w/o copying it' })

vim.keymap.set({ 'n', 't' }, '<F60>', '<CMD>:lua require("nvterm.terminal").toggle("horizontal")<CR>', { desc = 'Toggle terminal (option+F12)' })

vim.keymap.set({ 'n', 'i' }, '<M-A>', '<CMD>:Telescope commands<CR>', { desc = 'List All Commands' })

vim.keymap.set({ 'n' }, '<M-Z>', '<CMD>:Gitsigns reset_hunk<CR>', { desc = 'Undo hunk' })
vim.keymap.set({ 'n' }, '<M-z>', '<CMD>:Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
vim.keymap.set({ 'n' }, 'å', '<CMD>:Gitsigns blame_line<CR>', { desc = 'Blame line' })

vim.keymap.set({ 'n' }, '<M-m>', '<CMD>:MaximizerToggle<CR>', { desc = 'Toggle maximize split' })

vim.keymap.set({ 'n', 'i' }, '<M-/>', '<CMD>:Commentary<CR>j', { desc = 'Comment line' })

vim.keymap.set({ 'n' }, '<M-e>', '<CMD>:Telescope buffers<CR>', { desc = 'Recently edited buffers' })
vim.keymap.set({ 'n' }, '<M-O>', '<CMD>:Telescope find_files<CR>', { desc = 'Find Files' })
vim.keymap.set({ 'n' }, '<M-F>', '<CMD>:Telescope live_grep<CR>', { desc = 'Live Grep' })

vim.keymap.set({ 'n' }, '<M-1>', '<CMD>:NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree' })
vim.keymap.set({ 'n' }, '<F49>', '<CMD>:NvimTreeFindFile<CR>', { desc = 'Focus on file in Nvim Tree' })

vim.keymap.set({ 'n' }, '<C-CR>', '<CMD>:Lspsaga code_action<CR>', { desc = 'Code action menu' })
vim.keymap.set({ 'n' }, '<F1>', '<CMD>:Lspsaga hover_doc<CR>', { desc = 'Hover doc' })
vim.keymap.set({ 'n', 'i' }, '<M-p>', vim.lsp.buf.signature_help, { desc = 'Show signature help' })
vim.keymap.set({ 'n' }, '<M-Space>', '<CMD>:Lspsaga peek_definition<CR>', { desc = 'Peek definition' })
vim.keymap.set({ 'n', 'i' }, '<M-b>', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set({ 'n' }, '<M-C-O>', '<CMD>:Telescope lsp_dynamic_workspace_symbols<CR>',
  { desc = 'Search project symbols' })
vim.keymap.set({ 'n' }, '<M-C-F7>', '<CMD>:Lspsaga finder<CR>', { desc = 'Find references and implementation' })
vim.keymap.set({ 'n' }, '<M-C-F12>', '<CMD>:Lspsaga outline<CR>', { desc = 'Outline' })

vim.keymap.set({ 'n' }, '<F2>', '<CMD>:Lspsaga diagnostic_jump_next<CR>', { desc = 'Jump to next issue' })
vim.keymap.set({ 'n' }, '<F14>', '<CMD>:Lspsaga diagnostic_jump_prev<CR>', { desc = 'Jump to previous issue' }) -- shift+F2

vim.keymap.set({ 'n', 'i' }, '<M-C-L>', vim.lsp.buf.format, { desc = 'Format file' })

vim.keymap.set({ 'n' }, '<F56>', '<CMD>:lua require"dap".toggle_breakpoint()<CR>', { desc = 'Toggle breakpoint' }) -- option+F8
vim.keymap.set({ 'n' }, '<F7>', '<CMD>:lua require"dap".step_into()<CR>', { desc = 'Step into' })
vim.keymap.set({ 'n' }, '<F8>', '<CMD>:lua require"dap".step_over()<CR>', { desc = 'Step over' })
vim.keymap.set({ 'n' }, '<F9>', '<CMD>:lua require"dap".continue()<CR>', { desc = 'Continue' })
