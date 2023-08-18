local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

telescope.setup({
  pickers = {
    buffers = {
      theme = 'dropdown',
    },

    live_grep = {
      theme = 'dropdown',
    },

    find_files = {
      theme = 'dropdown',
    },

    commands = {
      theme = 'dropdown',
    },

    lsp_dynamic_workspace_symbols = {
      theme = 'dropdown',
    },
  },
})
