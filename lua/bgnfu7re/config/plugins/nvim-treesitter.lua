local ok, treeSitter = pcall(require, 'nvim-treesitter')
if not ok then
  return
end

local ok, treeSitterConfigs = pcall(require, 'nvim-treesitter.configs')
if not ok then
  return
end

treeSitterConfigs.setup({
  ensure_installed = {
    'bash',
    'lua',
    'go',
    'json',
    'yaml',
    'toml',
    'html',
    'css',
    'javascript',
    'typescript',
    'ruby',
  },

  highlight = {
    enable = true,
  },
})
