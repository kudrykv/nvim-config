local ok, mason = pcall(require, 'mason')
if not ok then
  return
end

mason.setup()

local ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not ok then
  return
end

mason_lspconfig.setup({
  ensure_installed = {},
})

-- advertise completion capabilities to LSP servers
local capabilities = vim.lsp.protocol.make_client_capabilities()
local ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
if ok then
  capabilities = cmp_lsp.default_capabilities(capabilities)
end

-- per-server config overrides
local server_configs = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' }, -- recognize `vim` global in neovim configs
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
          checkThirdParty = false,
        },
      },
    },
  },
}

-- auto-configure any server installed via mason (nvim 0.11+ API)
for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
  local config = server_configs[server] or {}
  config.capabilities = capabilities
  vim.lsp.config(server, config)
  vim.lsp.enable(server)
end
