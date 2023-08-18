local ok, scrollbar = pcall(require, 'scrollbar')
if not ok then
  return
end


scrollbar.setup()


---@diagnostic disable-next-line: redefined-local
local ok, scrollbarGitsigns = pcall(require, 'scrollbar.handlers.gitsigns')
if not ok then
  return
end

scrollbarGitsigns.setup()
