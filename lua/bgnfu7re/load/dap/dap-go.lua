local ok, dapGo = pcall(require, 'dap-go')
if not ok then
  return
end

dapGo.setup()

