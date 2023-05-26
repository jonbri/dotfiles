function GetCC()
    print "in function";
  local defaultCC = "80"
  if vim.o.colorcolumn == defaultCC then
    vim.opt.colorcolumn = "0"
  else
    vim.opt.colorcolumn = defaultCC
  end
end

vim.keymap.set(
  "n",
  "<leader>cc",
  GetCC, { noremap = true }
)

