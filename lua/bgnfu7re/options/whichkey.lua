local ok, whichKey = pcall(require, 'which-key')
if not ok then
  return
end

whichKey.register({
  { x = { '"_x', 'Remove one char w/o copying it' } },

  { ['<M-Z>'] = { '<CMD>:GitGutterUndoHunk<CR>', 'Undo hunk' } },
  { ['<M-z>'] = { '<CMD>:GitGutterPreviewHunk<CR>', 'Preview hunk' } },

  { ['<M-e>'] = { '<CMD>:Telescope buffers<CR>', 'Recently edited buffers' } },
  { ['<M-O>'] = { '<CMD>:Telescope find_files<CR>', 'Find Files' } },
  { ['<M-F>'] = { '<CMD>:Telescope live_grep<CR>', 'Live Grep' } },

  ['<M-1>'] = { '<CMD>:NvimTreeToggle<CR>', 'Toggle Nvim Tree' },
  ['<F49>'] = { '<CMD>:NvimTreeFindFile<CR>', 'Focus on file in Nvim Tree (option+F1)' },

  {['<M-m>'] = { '<CMD>:MaximizerToggle<CR>', 'Toggle maximize split' } },

  { ['<C-CR>'] = { '<CMD>:Lspsaga code_action<CR>', 'Code action menu (ctrl+enter)' } },
  { ['<M-Space>'] = { '<CMD>:Lspsaga peek_definition<CR>', 'Peek definition' } },
  { ['<M-b>'] = { '<CMD>:Lspsaga goto_definition<CR>', 'Go to definition' } },
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


