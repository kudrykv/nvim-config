local ok, dap = pcall(require, 'dap')
if not ok then
  return
end

local ok, dapui = pcall(require, 'dapui')
if not ok then
  return
end

local ok, dapgo = pcall(require, 'dap-go')
if not ok then
  return
end

dapui.setup()
dapgo.setup()

dap.adapters.go = {
  type = 'executable',
}
