return {
    "seblyng/roslyn.nvim",
    ft = "cs",
    opts = {},

    config = function(_, opts)
        require("roslyn").setup(opts)

        vim.lsp.config("roslyn", {
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
        })
    end,
}
