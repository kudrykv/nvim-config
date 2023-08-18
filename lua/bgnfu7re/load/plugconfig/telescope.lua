local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

telescope.setup({
  defaults = {
    sorting_strategy = "ascending",  -- display results top->bottom
    layout_config = {
      prompt_position = "top"  -- search bar at the top
    }
  },
  -- pickers = {
  --   buffers = {
  --     theme = 'dropdown',
  --   },

  --   live_grep = {
  --     theme = 'dropdown',
  --   },

  --   find_files = {
  --     theme = 'dropdown',
  --   },

  --   commands = {
  --     theme = 'dropdown',
  --   },

  --   lsp_dynamic_workspace_symbols = {
  --     theme = 'dropdown',
  --   },
  -- },
})
