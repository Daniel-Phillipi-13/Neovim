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
vim.lsp.config("roslyn", {
    on_attach = function()
        print("This will run when the server attaches!")
    end,
    settings = {
        ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
        },
        ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
        },
    },
})
vim.lsp.enable("roslyn")
