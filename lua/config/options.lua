vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
-- Comma-separated suffix patterns to hide
vim.g.netrw_list_hide = [[\.import$,\.meta$,\.uid$,\.DS_Store$]]
vim.g.netrw_hide = 1 -- 0: show all, 1: hide matching files, 2: hide non-matching files
vim.diagnostic.config({
  virtual_text = {
    prefix = '●', -- Or use '■', '▎', etc.
    source = 'if_many', -- Show source (e.g., roslyn) if multiple sources exist
  },
  float = {
    source = 'always',
  },
  severity_sort = true,
})

