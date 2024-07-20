local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
  return
end

local ok, mason = pcall(require, 'mason')
if not ok then
  return
end

local ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not ok then
  return
end

local ok, cmpNvimLsp = pcall(require, 'cmp_nvim_lsp')
if not ok then
  return
end

mason.setup()
mason_lspconfig.setup()

mason_lspconfig.setup_handlers({
  function(server_name)
    local capabilities = cmpNvimLsp.default_capabilities()

    lspconfig[server_name].setup({
      capabilities = capabilities ,
    })
  end,

  ['lua_ls'] = function()
    local capabilities = cmpNvimLsp.default_capabilities()

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
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

