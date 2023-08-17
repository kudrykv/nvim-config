local ok, dap = pcall(require, 'dap')
if not ok then
  return
end

dap.adapters.delve = {
  type = "server",
  host = "127.0.0.1",
  port = 38697,
}

