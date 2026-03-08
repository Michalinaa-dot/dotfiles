local opts = {
        ensure_installed = {
                "ruff",
                "yamlls",
                "pyright",
        },
        automatic_installation = false,
        automatic_enable = false, -- Do NOT enable LSP servers installed by Mason. We configure them ourselves with nvim-lspconfig. Yes this is confusing because fuck you
}

return {
    "mason-org/mason-lspconfig.nvim",
    opts = opts,
    lazy = false,
    dependencies = "mason-org/mason.nvim",
}
