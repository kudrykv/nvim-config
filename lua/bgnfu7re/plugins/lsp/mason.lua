local ok, mason = pcall(require, 'mason')
if not ok then
  return
end

local ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not ok then
  return
end

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {
    'bashls',
    'dockerls',
    'eslint',
    'gopls',
    'grammarly',
    'graphql',
    'jsonls',
    'jdtls',
    'tsserver',
    'ltex',
    'sumneko_lua',
    'ruby_ls',
    'sqlls',
    'taplo',
    'terraformls',
    'vtsls',
  }
})

