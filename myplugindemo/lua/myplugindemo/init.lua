local previous_word = ''
local count = 0

vim.api.nvim_create_autocmd({'CursorMoved'}, {
---@diagnostic disable-next-line: unused-local
  callback = function(event)
    local word = vim.fn.expand('<cword>')

    if word == previous_word then
      return
    end

    count = count + 1
    -- print(string.format('%s %s %d', previous_word, word, count))
    previous_word = word

    vim.lsp.buf.clear_references()
    vim.lsp.buf.document_highlight()
  end
})

