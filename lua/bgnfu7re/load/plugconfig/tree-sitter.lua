local ok, treeSitterConfigs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treeSitterConfigs.setup({
  ensure_intalled = {
    'bash',
    'go',
    'javascript',
    'json',
    'lua',
    'python',
    'regex',
    'toml',
    'tsx',
    'typescript',
    'yaml',
    'markdown',
  },

  highlight = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_snlection = 'gnn',
      node_incremental = '<M-Up>',
      scope_incremental = 'grc',
      node_decremental = '<M-Down>',
    },
  },
})

