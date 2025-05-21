return {
    "folke/trouble.nvim",
    keys = {
        {"<leader>q", "<cmd>TroubleToggle document_diagnostics<cr>", mode={'n'}},
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        use_diagnostic_signs = true

    },
}
