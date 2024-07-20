for _, file in ipairs(vim.api.nvim_get_runtime_file('**/bgnfu7re/config/**/*\\.lua', true)) do
  local stripped = string.gsub(file, '.*/bgnfu7re/', 'bgnfu7re.'):gsub('%.lua$', ''):gsub('/', '.')

  require(stripped)
end

