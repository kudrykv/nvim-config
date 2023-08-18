local ok, whichKey = pcall(require, 'which-key')
if not ok then
  return
end

whichKey.register({
  -- { ['<M-Z>'] = { '<CMD>:Gitsigns reset_hunk<CR>', 'Undo hunk' } },
  -- { ['<M-z>'] = { '<CMD>:Gitsigns preview_hunk<CR>', 'Preview hunk' } },
  -- { ['å'] = { '<CMD>:Gitsigns blame_line<CR>', 'Blame line' } },

  -- { ['<M-e>'] = { '<CMD>:Telescope buffers<CR>', 'Recently edited buffers' } },
  -- { ['<M-O>'] = { '<CMD>:Telescope find_files<CR>', 'Find Files' } },
  -- { ['<M-F>'] = { '<CMD>:Telescope live_grep<CR>', 'Live Grep' } },

  -- ['<M-1>'] = { '<CMD>:NvimTreeToggle<CR>', 'Toggle Nvim Tree' },
  -- ['<F49>'] = { '<CMD>:NvimTreeFindFile<CR>', 'Focus on file in Nvim Tree (option+F1)' },

  -- {['<M-m>'] = { '<CMD>:MaximizerToggle<CR>', 'Toggle maximize split' } },

  { ['<C-CR>'] = { '<CMD>:Lspsaga code_action<CR>', 'Code action menu (ctrl+enter)' } },
  { ['<M-Space>'] = { '<CMD>:Lspsaga peek_definition<CR>', 'Peek definition' } },
  -- { ['<M-b>'] = { '<CMD>:Lspsaga goto_definition<CR>', 'Go to definition' } },
  { ['<M-C-O>'] = { '<CMD>:Telescope lsp_dynamic_workspace_symbols<CR>', 'Search project symbols' } },

  { ['<F2>'] = { '<CMD>:Lspsaga diagnostic_jump_next<CR>', 'Jump to next issue' } },
  { ['<F14>'] = { '<CMD>:<Lspsaga diagnostic_jump_prevCR>', 'Jump to previous issue' } },

  { ['<M-C-F7>'] = { '<CMD>:Lspsaga finder<CR>', 'Find references and implementation' } },

  { ['<F1>'] = { '<CMD>:Lspsaga hover_doc<CR>', 'Hover doc' } },

  { ['<F60>'] = { '<CMD>:Lspsaga outline<CR>', 'Outline (option+f12)' } },

  ['<leader>'] = {
    ['1'] = { '<CMD>:NvimTreeToggle<CR>', 'Toggle Nvim Tree' },
    ['<F1>'] = { '<CMD>:NvimTreeFindFile<CR>', 'Focus on file in Nvim Tree' },
  },
})

vim.keymap.set({'n'}, 'x', '"_x', { desc = 'Remove one char w/o copying it' })

vim.keymap.set({'n', 'i'}, '<M-A>', '<CMD>:Telescope commands<CR>', { desc = 'List All Commands' })

vim.keymap.set({'n'}, '<M-Z>', '<CMD>:Gitsigns reset_hunk<CR>', { desc = 'Undo hunk' })
vim.keymap.set({'n'}, '<M-z>', '<CMD>:Gitsigns preview_hunk<CR>', { desc = 'Preview hunk' })
vim.keymap.set({'n'}, 'å', '<CMD>:Gitsigns blame_line<CR>', { desc = 'Blame line' })

vim.keymap.set({'n'}, '<M-m>', '<CMD>:MaximizerToggle<CR>', { desc = 'Toggle maximize split' })

vim.keymap.set({'n', 'i'}, '<M-/>', '<CMD>:Commentary<CR>j', { desc = 'Comment line' })

vim.keymap.set({'n'}, '<M-e>', '<CMD>:Telescope buffers<CR>', { desc = 'Recently edited buffers' })
vim.keymap.set({'n'}, '<M-O>', '<CMD>:Telescope find_files<CR>', { desc = 'Find Files' })
vim.keymap.set({'n'}, '<M-F>', '<CMD>:Telescope live_grep<CR>', { desc = 'Live Grep' })

vim.keymap.set({'n'}, '<M-1>', '<CMD>:NvimTreeToggle<CR>', { desc = 'Toggle Nvim Tree' })
vim.keymap.set({'n'}, '<F49>', '<CMD>:NvimTreeFindFile<CR>', { desc = 'Focus on file in Nvim Tree' })


vim.keymap.set({'n', 'i'}, '<M-p>', vim.lsp.buf.signature_help, { desc = 'Show signature help' })
vim.keymap.set({'n', 'i'}, '<M-b>', vim.lsp.buf.definition, { desc = 'Go to definition' })

vim.keymap.set({'n', 'i'}, '<M-C-L>', vim.lsp.buf.format, { desc = 'Format file' })

-- option+F8
vim.keymap.set({'n'}, '<F56>', '<CMD>:lua require"dap".toggle_breakpoint()<CR>', { desc = 'Toggle breakpoint' })
vim.keymap.set({'n'}, '<F7>', '<CMD>:lua require"dap".step_into()<CR>', { desc = 'Step into' })
vim.keymap.set({'n'}, '<F8>', '<CMD>:lua require"dap".step_over()<CR>', { desc = 'Step over' })
vim.keymap.set({'n'}, '<F9>', '<CMD>:lua require"dap".continue()<CR>', { desc = 'Continue' })
