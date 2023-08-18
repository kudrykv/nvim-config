local ok, nvTerm = pcall(require, "nvterm")
if not ok then
  return
end

nvTerm.setup()
