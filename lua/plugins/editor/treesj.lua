return {
  'Wansmer/treesj',
    keys = {
        {
            '<space>j',
            "<cmd>TSJToggle<cr>",
            mode={"n"},
            desc="Treesj: Split if one-line and Join if multiline;",
        },
    },
    dependencies = {
        'nvim-treesitte/nvim-treesitter',
    },
    config = function() require('treesj').setup({
        use_default_keymaps = false,
        check_syntax_error = true,
        max_join_length = 120,
        cursor_behavior = 'hold',
        notify = true,
        dot_repeat = true,
        on_error = nil,
    })
    end,
}
