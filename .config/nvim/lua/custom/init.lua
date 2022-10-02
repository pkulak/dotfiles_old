local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '=j', ':%!python -m json.tool<CR>:set syntax=json<CR>')
map('n', '=x', ':%!python -c \'import sys;import xml.dom.minidom;s=sys.stdin.read();print(xml.dom.minidom.parseString(s).toprettyxml())\'<CR>:set syntax=xml<CR>')
