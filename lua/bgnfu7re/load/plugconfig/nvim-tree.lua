local ok, nvimTree = pcall(require, 'nvim-tree')
if not ok then
  return
end

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    preserve_window_proportions = false,
    width = 40,
  },

  actions = {
    open_file = {
      resize_window = false,
    }
  }
})

