local ok, nvimTree = pcall(require, 'nvim-tree')
if not ok then
  return
end

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimTree.setup({
  view = {
    width = 40,
  }
})
