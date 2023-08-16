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

  ['<leader>'] = {
    ['1'] = { '<CMD>:NvimTreeToggle<CR>', 'Toggle Nvim Tree' },
    ['<F1>'] = { '<CMD>:NvimTreeFindFile<CR>', 'Focus on file in Nvim Tree' },
  },
})

