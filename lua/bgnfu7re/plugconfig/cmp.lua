local ok, cmp = pcall(require, 'cmp')
if not ok then
  return
end

cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
  },
})

