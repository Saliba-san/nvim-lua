return {
    "folke/trouble.nvim",
    keys = {
        {"cq", "<cmd>TroubleToggle document_diagnostics<cr>", mode={'v','n'}},
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        use_diagnostic_signs = true

    },
}
