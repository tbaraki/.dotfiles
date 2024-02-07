return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- lua
                null_ls.builtins.formatting.stylua,
                -- JS/etc
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint_d,
                -- Terraform
                null_ls.builtins.diagnostics.terraform_validate,
                null_ls.builtins.diagnostics.tfsec,
                null_ls.builtins.formatting.terraform_fmt,
                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,
                -- Rust
                null_ls.builtins.formatting.rust_analyzer,
            },
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}
