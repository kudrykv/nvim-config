local ok, lspConfig = pcall(require, 'lspconfig')
if not ok then
  return
end

---@diagnostic disable-next-line: redefined-local
local ok, mason = pcall(require, 'mason')
if not ok then
  return
end

---@diagnostic disable-next-line: redefined-local
local ok, masonLSPConfig = pcall(require, 'mason-lspconfig')
if not ok then
  return
end

mason.setup()
masonLSPConfig.setup()

local on_attach = function (client, bufnr)

end

masonLSPConfig.setup_handlers({
  function (server_name)
    lspConfig[server_name].setup({
      on_attach = on_attach,
    })
  end,

  ['lua_ls'] = function ()
    lspConfig['lua_ls'].setup({
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { 'vim' },
          },
        },
      },
    })
  end
})

