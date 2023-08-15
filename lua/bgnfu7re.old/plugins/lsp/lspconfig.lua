local ok, lspconfig = pcall(require, 'lspconfig')
if not ok then
  return
end

---@diagnostic disable-next-line: redefined-local
local ok, cmp_lsp = pcall(require, 'cmp_nvim_lsp')
if not ok then
  return
end

local on_attach = function(buf, client)
  -- highlight all references to the symbol under the cursor
  vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
    pattern = { '*.go', '*.lua' },
    callback = function()
      vim.lsp.buf.clear_references()
      vim.lsp.buf.document_highlight()
    end,
  })
end

-- used to enable autocompletion (if we trust some youtube guy)
local capabilities = cmp_lsp.default_capabilities()

lspconfig['gopls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig['lua_ls'].setup({
  capabilities = capabilities,
  on_attach = on_attach,

  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }, -- recognize "vim" global
      },
      workspace = {
        library = {
          [vim.fn.expand('$VIMRUNTIME/lua')] = true,
          [vim.fn.stdpath('config') .. '/lua'] = true,
        },
      },
    }
  }
})

-- enable diagnostics while in insert mode
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics,
  {
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
  }
)
