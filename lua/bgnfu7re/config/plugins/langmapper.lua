local ok, langmapper = pcall(require, 'langmapper')
if not ok then
  return
end

langmapper.setup({})
