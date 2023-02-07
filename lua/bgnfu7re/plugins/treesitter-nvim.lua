local ok, treesitter_configs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treesitter_configs.setup({
  -- parser_install_dir = vim.fn.stdpath('data') .. '/nvim-treesitter/parser',

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
  auto_install = true,

  highlight = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = 'gnn',
      node_incremental = 'grn',
      scope_incremental = 'grc',
      node_decremental = 'grm',
    },
  },
})

