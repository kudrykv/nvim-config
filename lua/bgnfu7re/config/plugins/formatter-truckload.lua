local ok, formatter = pcall(require, 'formatter')
if not ok then
  return
end

local ok, util = pcall(require, 'formatter.util')
if not ok then
  return
end

formatter.setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    lua = {
      require('formatter.filetypes.lua').stylua,
    }
  }
})

