vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local ok, nvimTree = pcall(require, 'nvim-tree')
if not ok then
  return
end

nvimTree.setup({
  sort = {
    sorter = 'case_sensitive',
  },

  view = {
    width = 40,
  },

  renderer = {
    group_empty = true
  },

  update_focused_file = {
    enable = true,
  },

  filters = {
    dotfiles = true,
  },
})

