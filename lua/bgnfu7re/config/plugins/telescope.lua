local ok, telescope = pcall(require, 'telescope')
if not ok then
  return
end

telescope.setup({
  defaults = {
    layout_strategy = 'center',
    sorting_strategy = 'ascending',
  },

  pickers = {
    oldfiles = {
      cwd_only = true,
    },
  },
})

telescope.load_extension('fzf')

