local ok, lint = pcall(require, 'lint')
if not ok then
  return
end

lint.linters_by_ft = {
  lua = {'luacheck'},
  vim = {'vint'},
  go  = {'golangcilint'},
  ruby = {'rubocop'},
}

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    lint.try_lint()
  end
})

