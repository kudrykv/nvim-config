local ok, cmp = pcall(require, 'cmp')
if not ok then
  return
end

cmp.setup({
  mapping = cmp.mapping.preset,
})

